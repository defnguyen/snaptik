import 'package:flutter/material.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class SubscriptionOptionTile extends StatelessWidget {
  final Package package;
  final String title;
  final String? subtitle;
  final String? discountText;
  final bool isBestValue;
  final bool isSelected; // Optional: if you want visual selection state
  final bool isLoading; // Is purchase for *this* tile in progress?
  final VoidCallback onSelected;

  const SubscriptionOptionTile({
    super.key,
    required this.package,
    required this.title,
    this.subtitle,
    this.discountText,
    this.isBestValue = false,
    this.isSelected = false,
    required this.isLoading,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final bool isLifetime = package.packageType == PackageType.lifetime;

    return Card(
      elevation: isSelected ? 4.0 : 1.0, // Highlight selected
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        side: BorderSide(
          color: isSelected ? theme.colorScheme.primary : Colors.transparent,
          width: 1.5,
        ),
      ),
      margin: const EdgeInsets.symmetric(vertical: 6.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
        onTap: isLoading ? null : onSelected, // Disable tap while loading
        child: Padding(
          padding: const EdgeInsets.all(AppConstants.defaultPadding),
          child: Row(
            children: [
              // Left side: Title, Subtitle, Badges
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: theme.textTheme.titleMedium
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        if (isBestValue) ...[
                          const SizedBox(width: 8),
                          Chip(
                            label: Text(l10n.bestValue),
                            labelStyle: TextStyle(
                                fontSize: 10,
                                color: theme.colorScheme.onPrimary),
                            backgroundColor: Colors.orange.shade700,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 0),
                            visualDensity: VisualDensity.compact,
                          ),
                        ],
                        if (discountText != null) ...[
                          const SizedBox(width: 8),
                          Chip(
                            label: Text(discountText!),
                            labelStyle: TextStyle(
                                fontSize: 10,
                                color: theme.colorScheme.onSecondaryContainer),
                            backgroundColor: theme
                                .colorScheme.secondaryContainer
                                .withOpacity(0.7),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 4, vertical: 0),
                            visualDensity: VisualDensity.compact,
                          ),
                        ]
                      ],
                    ),
                    if (subtitle != null) ...[
                      const SizedBox(height: 4),
                      Text(
                        subtitle!,
                        style: theme.textTheme.bodySmall?.copyWith(
                            color: theme.colorScheme.onSurfaceVariant),
                      ),
                    ],
                    if (isLifetime) ...[
                      const SizedBox(height: 4),
                      Text(
                        l10n.oneTimePurchase,
                        style: theme.textTheme.bodySmall
                            ?.copyWith(color: theme.colorScheme.secondary),
                      ),
                    ]
                  ],
                ),
              ),
              const SizedBox(width: 16),
              // Right side: Price and Loading/Button
              isLoading
                  ? const SizedBox(
                      width: 24,
                      height: 24,
                      child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(
                      package.storeProduct.priceString,
                      style: theme.textTheme.titleMedium?.copyWith(
                          fontWeight: FontWeight.bold,
                          color: theme.colorScheme.primary),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
