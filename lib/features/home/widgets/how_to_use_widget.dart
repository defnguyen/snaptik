import 'package:flutter/material.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class HowToUseWidget extends StatelessWidget {
  const HowToUseWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final textTheme = Theme.of(context).textTheme;

    return Column(
      children: [
        // How To Use Card
        Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(vertical: AppConstants.defaultPadding),
          child: Padding(
            padding: const EdgeInsets.all(AppConstants.defaultPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  l10n.howToUseTitle,
                  style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                _buildStep(context, l10n.howToUseStep1),
                _buildStep(context, l10n.howToUseStep2),
                _buildStep(context, l10n.howToUseStep3),
                _buildStep(context, l10n.howToUseStep4),
              ],
            ),
          ),
        ),
      ],
    );
  }



  Widget _buildStep(BuildContext context, String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(width: 4),
          Expanded(
            child: Text(
              text,
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
