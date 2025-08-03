import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class SubscriptionPlanCard extends StatelessWidget {
  final Package package;
  final bool isSelected;
  final bool isLoading;
  final bool isMostPopular;
  final VoidCallback onTap;

  const SubscriptionPlanCard({
    super.key,
    required this.package,
    required this.isSelected,
    required this.isLoading,
    required this.isMostPopular,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Stack(
        children: [
          GestureDetector(
            onTap: isLoading ? null : onTap,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(
                  color: isSelected ? Colors.purple : Colors.white.withOpacity(0.3),
                  width: isSelected ? 2 : 2,
                ),
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              _getPlanTitle(context),
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            if (isMostPopular) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  l10n.mostPopular,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                            if (_hasFreeTrial()) ...[
                              const SizedBox(width: 8),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                                decoration: BoxDecoration(
                                  color: Colors.blueAccent,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Text(
                                  _getTrialText(context),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ],
                          ],
                        ),
                        const SizedBox(height: 4),
                        Text(
                          _getPlanSubtitle(context),
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  if (isLoading)
                    const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(
                        strokeWidth: 2,
                        color: Colors.white,
                      ),
                    )
                  else
                    Container(
                      width: 24,
                      height: 24,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: isSelected ? Colors.purple : Colors.white.withOpacity(0.5),
                          width: 2,
                        ),
                        color: isSelected ? Colors.purple : Colors.transparent,
                      ),
                      child: isSelected
                          ? const Icon(Icons.check, color: Colors.white, size: 16)
                          : null,
                    ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String _getPlanTitle(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    switch (package.packageType) {
      case PackageType.lifetime:
        return l10n.lifetimePro;
      case PackageType.annual:
        return l10n.yearlyPro;
      case PackageType.monthly:
        return l10n.monthlyPro;
      case PackageType.weekly:
        return l10n.weeklyPro;
      default:
        return package.storeProduct.title;
    }
  }

  String _getPlanSubtitle(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final price = package.storeProduct.priceString;
    
    switch (package.packageType) {
      case PackageType.lifetime:
        return '$price - ${l10n.onlyBuyOnce}';
      case PackageType.annual:
        return '$price${l10n.perYear}';
      case PackageType.monthly:
        return '$price${l10n.perMonth}';
      case PackageType.weekly:
        return '$price${l10n.perWeek}';
      default:
        return price;
    }
  }

  bool _hasFreeTrial() {
    final introPrice = package.storeProduct.introductoryPrice;
    return introPrice != null && introPrice.price == 0;
  }

  String _getTrialText(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final introPrice = package.storeProduct.introductoryPrice;
    
    if (introPrice != null && introPrice.price == 0) {
      final period = introPrice.periodUnit;
      final cycles = introPrice.periodNumberOfUnits;
      
      switch (period) {
        case PeriodUnit.day:
          return l10n.freeTrialDays(cycles);
        case PeriodUnit.week:
          return l10n.freeTrialWeeks(cycles);
        case PeriodUnit.month:
          return l10n.freeTrialMonths(cycles);
        case PeriodUnit.year:
          return l10n.freeTrialMonths(cycles * 12);
        default:
          return '$cycles period free trial';
      }
    }
    return '';
  }
}