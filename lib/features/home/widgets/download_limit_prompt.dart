import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/core/blocs/download_limit/download_limit_cubit.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class DownloadLimitPrompt extends StatefulWidget {
  final int limitCount; // The limit that was reached (e.g., 5)

  const DownloadLimitPrompt({super.key, required this.limitCount});

  @override
  State<DownloadLimitPrompt> createState() => _DownloadLimitPromptState();
}

class _DownloadLimitPromptState extends State<DownloadLimitPrompt> {
  bool _isLoadingAd = false;

  void _watchRewardedAd() {
    final adService = context.read<AdService>();
    final limitCubit = context.read<DownloadLimitCubit>();
    final l10n = AppLocalizations.of(context)!;

    setState(() => _isLoadingAd = true);

    adService.showRewardedAd(
      onUserEarnedReward: (reward) {
        print("Reward received: ${reward.amount} ${reward.type}");
        limitCubit.grantReward(); // Add downloads via cubit
        if (mounted) {
          Navigator.of(context).pop(true); // Close dialog, indicate success
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n
                  .settingsClaimSuccess), // "Success! You have 5 more downloads."
              backgroundColor: Colors.green,
            ),
          );
        }
      },
      onAdFailedToShow: () {
        print("Rewarded ad failed to show.");
        if (mounted) {
          setState(() => _isLoadingAd = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.settingsClaimError), // "Failed to load ad..."
              backgroundColor: Colors.orange,
            ),
          );
          // Optionally close dialog or keep it open for retry?
          // Navigator.of(context).pop(false);
        }
      },
      onAdDismissed: () {
        print("Rewarded ad dismissed.");
        // Ad was dismissed before completion OR after reward - state is handled by other callbacks
        if (mounted && _isLoadingAd) {
          // Only reset loading if failed/dismissed before reward
          setState(() => _isLoadingAd = false);
        }
      },
    );

    // Also attempt to load the next rewarded ad immediately after trying to show one
    adService.loadRewardedAd();
  }

  @override
  void initState() {
    super.initState();
    // Attempt to load rewarded ad when the dialog is built
    context.read<AdService>().loadRewardedAd();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return AlertDialog(
      title: Text(l10n.downloadLimitReachedTitle),
      content: Text(
        l10n.downloadLimitReachedMessage(
            widget.limitCount), // Use parameterized string
        // Example: "You have reached the download limit (5 times). Watch a short ad to get 5 more download attempts."
      ),
      actions: <Widget>[
        TextButton(
          child: Text(l10n.cancel),
          onPressed: _isLoadingAd
              ? null
              : () => Navigator.of(context)
                  .pop(false), // Disable cancel while loading ad
        ),
        ElevatedButton.icon(
          icon: _isLoadingAd
              ? const SizedBox(
                  width: 16,
                  height: 16,
                  child: CircularProgressIndicator(
                      strokeWidth: 2, color: Colors.white))
              : const Icon(Icons.video_library), // Or Icons.ads_click
          label: Text(l10n.watchAd),
          onPressed: _isLoadingAd ? null : _watchRewardedAd,
          style: ElevatedButton.styleFrom(
            backgroundColor: _isLoadingAd
                ? Colors.grey
                : Colors.deepPurpleAccent, // Indicate loading state visually
          ),
        ),
      ],
    );
  }
}
