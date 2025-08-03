import 'package:flutter/material.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class PermissionPromptDialog extends StatelessWidget {
  final String title;
  final String message;
  final String confirmText;
  final String cancelText;

  const PermissionPromptDialog({
    super.key,
    required this.title,
    required this.message,
    this.confirmText = "Allow", // Use default or provide via constructor
    this.cancelText = "Don't Allow", // Use default or provide via constructor
  });

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!; // Get localization instance

    return AlertDialog(
      title: Text(title),
      content: Text(message),
      actions: <Widget>[
        TextButton(
          child: Text(cancelText.isNotEmpty
              ? cancelText
              : l10n.cancel), // Use provided or localized cancel
          onPressed: () {
            Navigator.of(context).pop(false); // Return false when cancelled
          },
        ),
        TextButton(
          child: Text(confirmText.isNotEmpty
              ? confirmText
              : l10n.ok), // Use provided or localized OK/Allow
          onPressed: () {
            Navigator.of(context).pop(true); // Return true when confirmed
          },
        ),
      ],
    );
  }
}
