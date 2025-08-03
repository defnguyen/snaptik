import 'package:flutter/material.dart';
import 'package:snaptik/l10n/app_localizations.dart';

// Shows a modal dialog with a loading indicator and optional progress percentage.
Future<void> showProgressDialog(
    BuildContext context, Stream<double> progressStream, String title) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // User cannot dismiss by tapping outside
    builder: (BuildContext dialogContext) {
      return AlertDialog(
        title: Text(title),
        content: StreamBuilder<double>(
          stream: progressStream,
          initialData: 0.0,
          builder: (context, snapshot) {
            final progress = snapshot.data ?? 0.0;
            final progressPercent = (progress * 100).toStringAsFixed(0);
            return Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                LinearProgressIndicator(
                  value: progress,
                  minHeight: 10, // Make it a bit thicker
                ),
                const SizedBox(height: 16),
                Text(
                    '${AppLocalizations.of(context)!.downloading} $progressPercent%'),
              ],
            );
          },
        ),
        // Add a cancel button if your download service supports cancellation
        // actions: [
        //   TextButton(
        //     child: Text(AppLocalizations.of(context)!.cancel),
        //     onPressed: () {
        //       // TODO: Implement cancellation logic here
        //       // e.g., call a method on your download cubit/service to cancel
        //       Navigator.of(dialogContext).pop();
        //     },
        //   ),
        // ],
      );
    },
  );
}

// Helper to dismiss the dialog (usually called from the Bloc/Cubit when done/error)
void dismissProgressDialog(BuildContext context) {
  // Check if the dialog is still open before trying to pop
  if (Navigator.of(context, rootNavigator: true).canPop()) {
    Navigator.of(context, rootNavigator: true).pop();
  }
}
