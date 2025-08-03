import 'dart:async';
import 'package:flutter/services.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/config/revenuecat_config.dart';

class PurchaseService {
  // StreamController to broadcast purchase updates
  final StreamController<CustomerInfo> _purchaseStreamController =
      StreamController<CustomerInfo>.broadcast();
  Stream<CustomerInfo> get purchaseStream => _purchaseStreamController.stream;

  PurchaseService() {
    // Listen to RevenueCat's updated customer info stream
    Purchases.addCustomerInfoUpdateListener((customerInfo) {
      print("RC Listener: Received updated customer info.");
      _purchaseStreamController.add(customerInfo);
    });
  }

  // Check if user has the premium entitlement
  Future<bool> isUserPremium([CustomerInfo? customerInfo]) async {
    try {
      // Use provided customerInfo if available, otherwise fetch fresh
      final info = customerInfo ?? await Purchases.getCustomerInfo();
      return info.entitlements.all[RevenueCatConfig.premiumEntitlementId]
              ?.isActive ??
          false;
    } on PlatformException catch (e) {
      print("Error checking premium status (PlatformException): ${e.message}");
      // Handle specific errors if needed (e.g., network)
      return false; // Assume not premium on error
    } catch (e) {
      print("Error checking premium status (General): $e");
      return false;
    }
  }

  // Fetch available offerings (packages)
  Future<List<Package>> fetchOfferings() async {
    try {
      Offerings offerings = await Purchases.getOfferings();
      print(
          "RevenueCat SDK: Fetched Offerings object. All offerings available: ${offerings.all.map((key, value) => MapEntry(key, value.identifier))}");
      print(
          "RevenueCat SDK: Current offering identifier: ${offerings.current?.identifier}");
      print(
          "RevenueCat SDK: Packages in current offering ('${offerings.current?.identifier}'): ${offerings.current?.availablePackages.length ?? 0}");
      offerings.current?.availablePackages.forEach((pkg) {
        print(
            "  - Package: ${pkg.identifier}, Product: ${pkg.storeProduct.identifier}, Type: ${pkg.packageType}, Price: ${pkg.storeProduct.priceString}");
      });
      if (offerings.current != null &&
          offerings.current!.availablePackages.isNotEmpty) {
        return offerings.current!.availablePackages;
      } else {
        if (offerings.current == null) {
          print("PurchaseService: No current offering found from RevenueCat.");
        } else {
          print(
              "PurchaseService: Current offering ('${offerings.current!.identifier}') has no available packages.");
        }
      }
    } on PlatformException catch (e) {
      print("Error fetching offerings (PlatformException): ${e.message}");
      // Optionally, you can inspect e.details or e.code for more info
    } catch (e) {
      print("Error fetching offerings (General): $e");
    }
    return []; // Return empty list on error or if no current offering/packages
  }

  // Initiate purchase for a specific package
  Future<CustomerInfo?> makePurchase([Package? packageToPurchase]) async {
    try {
      Package? package; // Package can be nullable initially

      if (packageToPurchase == null) {
        // --- REVISED FALLBACK LOGIC ---
        final offerings = await fetchOfferings();
        if (offerings.isNotEmpty) {
          // Try finding preferred packages in order
          try {
            package = offerings.firstWhere((p) => p.identifier == 'annual');
          } catch (_) {
            // 'annual' not found
            try {
              package = offerings.firstWhere((p) => p.identifier == 'monthly');
            } catch (_) {
              // 'monthly' not found
              try {
                package = offerings
                    .firstWhere((p) => p.packageType == PackageType.lifetime);
              } catch (_) {
                // 'lifetime' not found
                // Last resort: take the very first package available
                package = offerings.first;
              }
            }
          }
        }
      } else {
        package = packageToPurchase; // Use the provided package
      }

      if (package == null) {
        print("No suitable package found or available to purchase.");
        // Throw an exception that the Cubit can catch and display to the user
        throw Exception(
            "No products available for purchase at this time."); // Localize this message
      }

      // --- Proceed with purchase if package is not null ---
      print(
          "Attempting purchase for package: ${package.identifier} (${package.storeProduct.identifier})");

      return await Purchases.purchasePackage(package);
    } on PlatformException catch (e) {
      var errorCode = PurchasesErrorHelper.getErrorCode(e);
      if (errorCode != PurchasesErrorCode.purchaseCancelledError) {
        print(
            "Purchase failed (PlatformException - Code $errorCode): ${e.message}");
        throw Exception("Purchase failed. Please try again.");
      } else {
        print("Purchase cancelled by user.");
        return null; // Return null on cancellation
      }
    } catch (e) {
      print("Purchase failed (General): $e");
      String errorMessage = (e is Exception && e.toString().length < 100)
          ? e.toString().replaceFirst('Exception: ', '')
          : "An unknown error occurred during purchase.";
      throw Exception(errorMessage);
    }
  }

  // Restore previous purchases
  Future<bool> restorePurchases() async {
    try {
      print("Attempting to restore purchases...");
      CustomerInfo customerInfo = await Purchases.restorePurchases();
      // Check if the entitlement is active after restoring
      bool isPremium = customerInfo.entitlements
              .all[RevenueCatConfig.premiumEntitlementId]?.isActive ??
          false;
      print("Restore completed. Premium status: $isPremium");
      if (!isPremium) {
        print("Restore successful, but no active premium entitlement found.");
      }
      // Return true if restore completed, even if no active entitlement found,
      // but the PremiumCubit should check the isPremium flag from the result.
      return true;
    } on PlatformException catch (e) {
      print("Error restoring purchases (PlatformException): ${e.message}");
      return false; // Restore failed
    } catch (e) {
      print("Error restoring purchases (General): $e");
      return false;
    }
  }

  // Optional: Close the stream controller if the service is disposed
  void dispose() {
    Purchases.removeCustomerInfoUpdateListener((_) {}); // Remove listener
    _purchaseStreamController.close();
  }
}