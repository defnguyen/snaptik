import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/config/revenuecat_config.dart';
import 'package:snaptik/core/services/local_storage_service.dart';
import 'package:snaptik/core/services/purchase_service.dart';

part 'premium_state.dart';

class PremiumCubit extends Cubit<PremiumState> {
  final PurchaseService _purchaseService;
  final LocalStorageService _localStorageService;

  PremiumCubit(this._purchaseService, this._localStorageService)
      : super(const PremiumInitial());

  Future<void> _updatePremiumStatusAndUserID(CustomerInfo customerInfo) async {
    final isPremium = customerInfo.entitlements
            .all[RevenueCatConfig.premiumEntitlementId]?.isActive ??
        false;
    final appUserID = customerInfo.originalAppUserId; // Get appUserID

    await _localStorageService.saveAppUserID(appUserID); // Save it

    // Emit state based on isPremium, potentially also including appUserID if needed in state
    if (state.isPremium != isPremium ||
        (state is PremiumStatus &&
            (state as PremiumStatus).appUserID != appUserID)) {
      print(
          "Premium status changed via stream: $isPremium, AppUserID: $appUserID");
      emit(PremiumStatus(
          isPremium: isPremium, appUserID: appUserID)); // Update state
    }
  }

  // Call this on app start or when needed
  Future<void> checkPremiumStatus() async {
    emit(PremiumLoading(isPremium: state.isPremium));
    try {
      final customerInfo =
          await Purchases.getCustomerInfo(); // Fetch CustomerInfo
      await _updatePremiumStatusAndUserID(customerInfo); // Use helper
    } catch (e) {
      print("Error checking premium status: $e");
      emit(PremiumStatus(
          isPremium: state.isPremium,
          appUserID: _localStorageService.loadAppUserID())); // Fallback load
    }
  }

  Future<void> makePurchase([Package? packageToPurchase]) async {
    emit(PremiumLoading(isPremium: state.isPremium));
    try {
      final CustomerInfo? customerInfo =
          await _purchaseService.makePurchase(packageToPurchase);

      if (customerInfo != null) {
        final isPremium = customerInfo.entitlements
                .all[RevenueCatConfig.premiumEntitlementId]?.isActive ??
            false;
        final appUserID = customerInfo.originalAppUserId;
        await _localStorageService.saveAppUserID(appUserID);
        emit(PremiumOperationSuccess(
            isPremium: isPremium,
            appUserID: appUserID,
            message: "Purchase successful!"));
      } else {
        // Purchase cancelled or failed before returning customerInfo
        final currentAppUserID = _localStorageService.loadAppUserID();
        emit(PremiumOperationFailure(
            isPremium: state.isPremium,
            appUserID: currentAppUserID,
            error: "Purchase Cancelled or Failed",
            purchaseCancelled: true));
      }
    } catch (e) {
      print("Error making purchase in Cubit: $e");
      final currentAppUserID = _localStorageService.loadAppUserID();
      emit(PremiumOperationFailure(
          isPremium: state.isPremium,
          appUserID: currentAppUserID,
          error:
              "Purchase failed: ${e.toString().replaceFirst("Exception: ", "")}"));
    }
  }

  Future<void> restorePurchases() async {
    emit(PremiumLoading(isPremium: state.isPremium));
    try {
      final CustomerInfo customerInfo = await Purchases.restorePurchases();
      final isPremium = customerInfo.entitlements
              .all[RevenueCatConfig.premiumEntitlementId]?.isActive ??
          false;
      final appUserID = customerInfo.originalAppUserId;
      await _localStorageService.saveAppUserID(appUserID);

      if (isPremium) {
        emit(PremiumOperationSuccess(
            isPremium: true,
            appUserID: appUserID,
            message: "Purchases restored successfully!"));
      } else {
        emit(PremiumOperationFailure(
            isPremium: false,
            appUserID: appUserID,
            error: "No active premium subscription found during restore."));
      }
    } catch (e) {
      print("Error restoring purchases in Cubit: $e");
      final currentAppUserID = _localStorageService.loadAppUserID();
      emit(PremiumOperationFailure(
          isPremium: state.isPremium,
          appUserID: currentAppUserID,
          error:
              "Restore failed: ${e.toString().replaceFirst("Exception: ", "")}"));
    }
  }

  // Listen to purchase updates from RevenueCat
  void listenToPurchaseUpdates() {
    _purchaseService.purchaseStream.listen((customerInfo) async {
      print("Received purchase update from stream.");
      await _updatePremiumStatusAndUserID(customerInfo); // Use helper
    });
  }

  @override
  Future<void> close() {
    // Consider closing the stream listener if the cubit is disposed permanently
    // _purchaseService.dispose(); // If PurchaseService holds the stream subscription
    return super.close();
  }
}
