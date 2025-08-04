import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/config/app_themes.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/services/purchase_service.dart';
import 'package:snaptik/core/widgets/loading_indicator.dart';
import 'package:snaptik/features/subscription/widgets/subscription_plan_card.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';

class SubscriptionScreen extends StatefulWidget {
  final bool showCloseButton;

  const SubscriptionScreen({
    super.key,
    this.showCloseButton = true,
  });

  @override
  State<SubscriptionScreen> createState() => _SubscriptionScreenState();
}

class _SubscriptionScreenState extends State<SubscriptionScreen> {
  Future<List<Package>>? _offeringsFuture;
  Package? _selectedPackage;
  bool _isPurchasing = false;

  @override
  void initState() {
    super.initState();
    _offeringsFuture = _fetchOfferings();
  }

  Future<List<Package>> _fetchOfferings() async {
    try {
      final packages = await context.read<PurchaseService>().fetchOfferings();
      // Set default selection to LifeTime package
      if (packages.isNotEmpty && _selectedPackage == null) {
        Package? defaultPackage;
        try {
          defaultPackage = packages.firstWhere(
            (p) => p.packageType == PackageType.monthly,
          );
        } catch (_) {
          // If no lifetime package, select first one
          defaultPackage = packages.first;
        }

        // Update the selected package with setState
        if (mounted) {
          setState(() {
            _selectedPackage = defaultPackage;
          });
        }
      }
      return packages;
    } catch (e) {
      print("Error fetching offerings: $e");
      rethrow;
    }
  }

  void _handlePurchase(Package package) {
    if (_isPurchasing) return;

    setState(() {
      _isPurchasing = true;
      _selectedPackage = package;
    });

    context.read<PremiumCubit>().makePurchase(package);
  }

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url));
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return BlocListener<PremiumCubit, PremiumState>(
      listener: (context, state) {
        if (state is PremiumOperationSuccess ||
            state is PremiumOperationFailure ||
            state is PremiumStatus) {
          if (_isPurchasing) {
            setState(() {
              _isPurchasing = false;
              // Don't reset _selectedPackage to maintain selection
            });
          }
        }

        if (state is PremiumOperationSuccess) {
          Navigator.of(context).pushNamedAndRemoveUntil(
            '/home',
            (route) => false,
          );
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
        }
      },
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF1C1C1C),
                Color(0xFF2C2C2C),
                Color(0xFF400D17),
              ],
            ),
          ),
          child: SafeArea(
            child: Column(
              children: [
                _buildHeader(),
                Expanded(
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        _buildTitle(),
                        const SizedBox(height: 20),
                        _buildFeaturesList(),
                        const SizedBox(height: 20),
                        _buildPackagesList(),
                        const SizedBox(height: 20),
                        _buildPurchaseButton(),
                        const SizedBox(height: 20),
                        _buildFooterLinks(),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return widget.showCloseButton
        ? Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                    '/home',
                    (route) => false,
                  );
                },
                icon: const Icon(Icons.close, color: Colors.white, size: 28),
              ),
            ),
          )
        : const SizedBox.shrink();
  }

  Widget _buildTitle() {
    final l10n = AppLocalizations.of(context)!;

    return Column(
      children: [
        // Container(
        //   padding: const EdgeInsets.all(16),
        //   decoration: BoxDecoration(
        //     gradient: LinearGradient(
        //       colors: [Colors.orange.shade400, Colors.amber.shade600],
        //     ),
        //     shape: BoxShape.circle,
        //   ),
        //   child: const Icon(Icons.diamond, color: Colors.white, size: 40),
        // ),
        const SizedBox(height: 16),
        Text(
          l10n.unlockSaveVideoPro,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          l10n.noAdsUnlockAllFeatures,
          style: TextStyle(
            color: Colors.white.withOpacity(0.8),
            fontSize: 16,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildFeaturesList() {
    final l10n = AppLocalizations.of(context)!;

    final features = [
      l10n.removeAds,
      l10n.tiktokDownloads,
      l10n.instagramDownloads,
    ];

    return Column(
      children: features
          .map((feature) => Padding(
                padding: const EdgeInsets.symmetric(vertical: 4),
                child: Row(
                  children: [
                    const Icon(Icons.check_circle,
                        color: Colors.green, size: 20),
                    const SizedBox(width: 8),
                    Flexible(
                      child: Text(
                        feature,
                        style:
                            const TextStyle(color: Colors.white, fontSize: 16),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    )
                  ],
                ),
              ))
          .toList(),
    );
  }

  Widget _buildPackagesList() {
    final l10n = AppLocalizations.of(context)!;

    return FutureBuilder<List<Package>>(
      future: _offeringsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return LoadingIndicator(message: l10n.loadingPlans);
        } else if (snapshot.hasError ||
            !snapshot.hasData ||
            snapshot.data!.isEmpty) {
          return Column(
            children: [
              const Icon(Icons.error_outline, color: Colors.red, size: 40),
              const SizedBox(height: 16),
              Text(
                l10n.failedToLoadPlans,
                style: const TextStyle(color: Colors.white, fontSize: 16),
              ),
              const SizedBox(height: 16),
              TextButton.icon(
                icon: const Icon(Icons.refresh, color: Colors.white),
                label: Text(l10n.retry,
                    style: const TextStyle(color: Colors.white)),
                onPressed: () {
                  setState(() {
                    _offeringsFuture = _fetchOfferings();
                  });
                },
              ),
            ],
          );
        }

        final packages = snapshot.data!;
        final sortedPackages = List<Package>.from(packages);
        sortedPackages.sort((a, b) {
          const order = {
            PackageType.lifetime: 1,
            PackageType.annual: 2,
            PackageType.monthly: 3,
            PackageType.weekly: 4,
          };
          return (order[a.packageType] ?? 99)
              .compareTo(order[b.packageType] ?? 99);
        });

        return Column(
          children: sortedPackages.map((package) {
            final isSelected = _selectedPackage == package;
            final isLoading = _isPurchasing && _selectedPackage == package;
            final isMostPopular = package.packageType == PackageType.lifetime;

            return SubscriptionPlanCard(
              package: package,
              isSelected: isSelected,
              isLoading: isLoading,
              isMostPopular: isMostPopular,
              onTap: () {
                setState(() {
                  _selectedPackage = package;
                });
              },
            );
          }).toList(),
        );
      },
    );
  }

  Widget _buildPurchaseButton() {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      width: double.infinity,
      height: 56,
      child: ElevatedButton(
        onPressed: _selectedPackage != null && !_isPurchasing
            ? () => _handlePurchase(_selectedPackage!)
            : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: AppThemes.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28),
          ),
        ),
        child: _isPurchasing
            ? const CircularProgressIndicator(color: Colors.white)
            : Text(
                l10n.buyNow,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
      ),
    );
  }

  Widget _buildFooterLinks() {
    final l10n = AppLocalizations.of(context)!;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(
          onPressed: () => _launchUrl(AppConstants.termsOfServiceUrl),
          child: Text(
            l10n.termsOfUse,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
        TextButton(
          onPressed: () => _launchUrl(AppConstants.privacyPolicyUrl),
          child: Text(
            l10n.privacyPolicy,
            style: const TextStyle(color: Colors.white, fontSize: 14),
          ),
        ),
      ],
    );
  }
}
