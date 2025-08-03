import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/services/purchase_service.dart';
import 'package:snaptik/core/widgets/loading_indicator.dart';
import 'package:snaptik/features/settings/widgets/subscription_option_tile.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class SubscriptionOptionsModal extends StatefulWidget {
  const SubscriptionOptionsModal({super.key});

  @override
  State<SubscriptionOptionsModal> createState() =>
      _SubscriptionOptionsModalState();
}

class _SubscriptionOptionsModalState extends State<SubscriptionOptionsModal> {
  Future<List<Package>>? _offeringsFuture;
  Package? _selectedPackage; // Track which purchase is in progress
  bool _isPurchasing = false; // General purchase loading state

  @override
  void initState() {
    super.initState();
    _offeringsFuture = _fetchOfferings();
  }

  Future<List<Package>> _fetchOfferings() async {
    try {
      return await context.read<PurchaseService>().fetchOfferings();
    } catch (e) {
      print("Error fetching offerings in modal: $e");
      // Rethrow to be caught by FutureBuilder
      rethrow;
    }
  }

  String? _calculateDiscount(
      Package currentPackage, List<Package> allPackages) {
    final l10n = AppLocalizations.of(context)!;
    Package? weeklyPackage;
    Package? monthlyPackage;

    // Find weekly and monthly packages for comparison
    try {
      weeklyPackage =
          allPackages.firstWhere((p) => p.packageType == PackageType.weekly);
    } catch (_) {}
    try {
      monthlyPackage =
          allPackages.firstWhere((p) => p.packageType == PackageType.monthly);
    } catch (_) {}

    if (currentPackage.packageType == PackageType.monthly &&
        weeklyPackage != null) {
      double weeklyPrice = weeklyPackage.storeProduct.price;
      double monthlyPrice = currentPackage.storeProduct.price;
      double equivalentWeeklyCostMonthly =
          weeklyPrice * 4.0; // Simple approximation
      if (equivalentWeeklyCostMonthly > monthlyPrice &&
          equivalentWeeklyCostMonthly > 0) {
        double monthlySavingPercent =
            ((equivalentWeeklyCostMonthly - monthlyPrice) /
                    equivalentWeeklyCostMonthly) *
                100;
        if (monthlySavingPercent > 1) {
          // Only show meaningful discounts
          return l10n.savePercent(monthlySavingPercent.toStringAsFixed(0));
        }
      }
    } else if (currentPackage.packageType == PackageType.annual &&
        monthlyPackage != null) {
      double monthlyPrice = monthlyPackage.storeProduct.price;
      double yearlyPrice = currentPackage.storeProduct.price;
      double equivalentMonthlyCostYearly = monthlyPrice * 12.0;
      if (equivalentMonthlyCostYearly > yearlyPrice &&
          equivalentMonthlyCostYearly > 0) {
        double yearlySavingPercent =
            ((equivalentMonthlyCostYearly - yearlyPrice) /
                    equivalentMonthlyCostYearly) *
                100;
        if (yearlySavingPercent > 1) {
          return l10n.savePercent(yearlySavingPercent.toStringAsFixed(0));
        }
      }
    }
    return null; // No discount to show
  }

  void _handlePurchase(Package package) {
    if (_isPurchasing) return; // Prevent multiple simultaneous purchases

    setState(() {
      _isPurchasing = true;
      _selectedPackage = package; // Mark which one is loading
    });

    context.read<PremiumCubit>().makePurchase(package);
    // Listener below will handle UI changes on success/failure/cancel
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return BlocListener<PremiumCubit, PremiumState>(
      listener: (context, state) {
        // Reset loading state when purchase attempt finishes (success, fail, cancel)
        if (state is PremiumOperationSuccess ||
            state is PremiumOperationFailure ||
            state is PremiumStatus) {
          if (_isPurchasing) {
            // Only reset if we were in a purchasing state
            setState(() {
              _isPurchasing = false;
              _selectedPackage = null;
            });
          }
        }

        // Handle feedback and modal dismissal
        if (state is PremiumOperationSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(l10n.purchaseSuccess),
                backgroundColor: Colors.green),
          );
          Navigator.of(context).pop(true); // Close modal, indicate success
        } else if (state is PremiumOperationFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.purchaseCancelled
                  ? l10n.purchaseCancelled
                  : "${l10n.purchaseFailed}: ${state.error}"),
              backgroundColor:
                  state.purchaseCancelled ? Colors.grey : Colors.red,
            ),
          );
          // Keep modal open on failure/cancel
        }
      },
      child: Container(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(AppConstants.defaultRadius * 2),
            topRight: Radius.circular(AppConstants.defaultRadius * 2),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min, // Take minimum height
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 12.0),
                decoration: BoxDecoration(
                  color: theme.dividerColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              l10n.chooseYourPlan,
              style: theme.textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            // FutureBuilder to load offerings
            FutureBuilder<List<Package>>(
              future: _offeringsFuture,
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const LoadingIndicator(
                      message: "Loading plans..."); // Localize
                } else if (snapshot.hasError ||
                    !snapshot.hasData ||
                    snapshot.data!.isEmpty) {
                  // Show error message
                  return Column(
                    children: [
                      Icon(Icons.error_outline,
                          color: theme.colorScheme.error, size: 40),
                      const SizedBox(height: 16),
                      Text(l10n.selectPlanErrorTitle,
                          style: theme.textTheme.titleMedium
                              ?.copyWith(color: theme.colorScheme.error)),
                      const SizedBox(height: 8),
                      Text(l10n.selectPlanErrorMessage,
                          textAlign: TextAlign.center),
                      const SizedBox(height: 16),
                      TextButton.icon(
                        icon: const Icon(Icons.refresh),
                        label: const Text("Retry"), // Localize
                        onPressed: () {
                          setState(() {
                            _offeringsFuture =
                                _fetchOfferings(); // Retry fetching
                          });
                        },
                      ),
                    ],
                  );
                } else {
                  // Display packages
                  final packages = snapshot.data!;
                  // Sort packages: Weekly, Monthly, Annual, Lifetime (example order)
                  final mutablePackages = List<Package>.from(packages);
                  mutablePackages.sort((a, b) {
                    const order = {
                      PackageType.weekly: 1,
                      PackageType.monthly: 2,
                      PackageType.annual: 3,
                      PackageType.lifetime: 4,
                      PackageType.unknown: 5,
                      PackageType.custom: 6
                    };
                    return (order[a.packageType] ?? 99)
                        .compareTo(order[b.packageType] ?? 99);
                  });

                  return ListView.builder(
                    shrinkWrap: true, // Important in Column
                    physics:
                        const NeverScrollableScrollPhysics(), // Disable ListView scrolling
                    itemCount: packages.length,
                    itemBuilder: (context, index) {
                      final package = packages[index];
                      String title = '';
                      String? subtitle; // Price per period might go here

                      switch (package.packageType) {
                        case PackageType.weekly:
                          title = l10n.planWeekly;
                          break;
                        case PackageType.monthly:
                          title = l10n.planMonthly;
                          break;
                        case PackageType.annual:
                          title = l10n.planAnnually;
                          break;
                        case PackageType.lifetime:
                          title = l10n.planLifetime;
                          break;
                        default:
                          title = package.storeProduct.title; // Fallback
                      }

                      final discount = _calculateDiscount(package, packages);
                      final isBestValue = package.packageType ==
                          PackageType.annual; // Typically annual

                      return SubscriptionOptionTile(
                        package: package,
                        title: title,
                        subtitle: subtitle,
                        discountText: discount,
                        isBestValue: isBestValue,
                        isLoading: _isPurchasing &&
                            _selectedPackage ==
                                package, // Loading state for this specific tile
                        onSelected: () => _handlePurchase(package),
                      );
                    },
                  );
                }
              },
            ),
            const SizedBox(height: AppConstants.defaultPadding),
            // Optional: Add Terms of Service / Privacy Policy links here
          ],
        ),
      ),
    );
  }
}
