import 'dart:async';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:snaptik/core/services/download_service.dart';
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:snaptik/core/services/permission_service.dart';
import 'package:snaptik/core/widgets/progress_dialog.dart'; // Import progress dialog
import 'package:snaptik/features/home/bloc/file_download/file_download_cubit.dart';
import 'package:snaptik/features/home/view/tabs/download_tab.dart'; // Import MediaItemDisplayData
import 'package:snaptik/features/home/view/media_item_detail_screen.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:uuid/uuid.dart'; // For generating unique IDs

class MediaResultItem extends StatelessWidget {
  final MediaItemDisplayData mediaData;

  const MediaResultItem({super.key, required this.mediaData});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FileDownloadCubit(
        permissionService: context.read<PermissionService>(),
        downloadService: DownloadService(
          context.read<MediaStorageService>(),
        ),
        apiClient: context.read<ApiClient>(), // Provide ApiClient
      ),
      child: MediaResultItemContent(mediaData: mediaData),
    );
  }
}

// Content widget that consumes the FileDownloadCubit
class MediaResultItemContent extends StatefulWidget {
  final MediaItemDisplayData mediaData;

  const MediaResultItemContent({super.key, required this.mediaData});

  @override
  State<MediaResultItemContent> createState() => _MediaResultItemContentState();
}

class _MediaResultItemContentState extends State<MediaResultItemContent> {
  // To keep dialog context if needed across rebuilds, though not strictly required here
  BuildContext? _dialogContext;

  void _startDownload(BuildContext context, MediaType type) {
    final cubit = context.read<FileDownloadCubit>();
    final l10n = AppLocalizations.of(context)!;
    final fileNameHint =
        const Uuid().v4().substring(0, 8); // Simple unique hint

    // Show progress dialog and listen to stream from cubit
    showProgressDialog(context, cubit.progressStream, l10n.downloading);

    // Store dialog context to dismiss it later
    // This relies on showDialog returning a future that completes when popped
    // which might not be reliable if popped programmatically elsewhere.
    // A more robust way is needed if dialog needs external dismissal often.
    // For now, we assume dismissal happens from the listener below.
    // Note: Capturing context like this can be risky if the widget rebuilds.
    // Consider using a Navigator key or managing dialog state differently if issues arise.
    _dialogContext = context;

    cubit.startDownload(
      url: widget.mediaData.url,
      type: type, // Pass specific type (video or mp3)
      fileNameHint: fileNameHint,
      context:
          context, // Pass context for permission check within service/cubit
    );
  }

  void _startDirectDownload(
      BuildContext context, MediaType type, String urlToDownload) {
    final cubit = context.read<FileDownloadCubit>();
    final l10n = AppLocalizations.of(context)!;
    // Create a unique hint, maybe incorporating post ID if available, or just type
    final String fileNameHint =
        "${widget.mediaData.type.name}_${const Uuid().v4().substring(0, 8)}";

    showProgressDialog(context, cubit.progressStream, l10n.downloading);
    _dialogContext = context; // Capture context for dismissing dialog

    cubit.startDownload(
      // This is the original direct download
      url: urlToDownload, // Use the direct URL of the photo or video
      type: type,
      fileNameHint: fileNameHint,
      context: context,
    );
  }

  Color _getBadgeColor(String quality) {
    switch (quality.toUpperCase()) {
      case 'HD - NO WATERMARK':
        return Colors.blue;
      case 'NO WATERMARK':
        return Colors.blue;
      case 'WATERMARK':
        return Colors.orange;
      case 'MUSIC':
        return Colors.blue;
      case 'PHOTO':
        return Colors.blue;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final cubit = context.read<FileDownloadCubit>();

    return BlocListener<FileDownloadCubit, FileDownloadState>(
      listener: (context, state) {
        final l10n = AppLocalizations.of(context)!; // Get l10n
        final adService = context.read<AdService>(); // Get AdService
        final isPremium =
            context.read<PremiumCubit>().state.isPremium; // Get Premium status
        final contextToUse = _dialogContext ?? context;

        if (state is FileDownloadSuccess || state is FileDownloadFailure) {
          dismissProgressDialog(contextToUse);
          _dialogContext = null; // Clear dialog context ref
        }

        if (state is FileMp3ConversionInProgress) {
          print("Listener: MP3 Conversion in progress.");
        } else if (state is FileMp3ConversionFailure) {
          dismissProgressDialog(
              _dialogContext ?? context); // Dismiss on failure
          _dialogContext = null;
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text("MP3 Conversion Failed: ${state.error}"),
                backgroundColor: Colors.orange), // Localize
          );
        }

        // Show Snackbar notifications
        if (state is FileDownloadSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l10n.downloadSuccess),
              backgroundColor: Colors.green,
              duration: AppConstants.snackBarDuration,
            ),
          );

          if (!isPremium) {
            // Optional: Add a counter to show ad every N downloads
            // For simplicity, show after each successful non-premium download
            print(
                "MediaResultItem: Attempting to show Interstitial Ad after download.");
            adService.showInterstitialAd(onAdFailedToShow: () {
              print("MediaResultItem: Interstitial Ad failed to show.");
              // Load next one if failed to show
              adService.loadInterstitialAd();
            }, onAdDismissed: () {
              print("MediaResultItem: Interstitial Ad dismissed.");
              // Load next one after dismissal
              adService.loadInterstitialAd();
            });
          }
        } else if (state is FileDownloadFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  "${l10n.downloadError}: ${state.error}"), // Show specific error
              backgroundColor: Colors.orange, // Warning color
              duration: AppConstants.snackBarDuration,
            ),
          );
        }
      },
      child: GestureDetector(
        onTap: () => _navigateToDetailScreen(context),
        child: Card(
          clipBehavior: Clip.antiAlias, // Clip the image to card shape
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
            side: BorderSide(
                color: Theme.of(context).dividerColor.withOpacity(0.5),
                width: 0.5),
          ),
          elevation: 1.0,
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // --- Thumbnail ---
            Expanded(
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    imageUrl: widget.mediaData.cover,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => const Center(
                        child: SizedBox(
                            width: 30,
                            height: 30,
                            child: CircularProgressIndicator(strokeWidth: 2))),
                    errorWidget: (context, url, error) => Image.asset(
                        AppConstants.placeholderImageUrl,
                        fit: BoxFit.cover),
                  ),
                  // Quality Badge
                  Positioned(
                    top: 8,
                    right: 8,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: _getBadgeColor(widget.mediaData.quality),
                        borderRadius: BorderRadius.circular(4),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 2,
                            offset: const Offset(0, 1),
                          ),
                        ],
                      ),
                      child: Text(
                        widget.mediaData.quality,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  if (widget.mediaData.type == MediaType.video)
                    Center(
                      child: Icon(
                        Icons.play_circle_fill,
                        color: Colors.white.withOpacity(0.8),
                        size: 50.0,
                      ),
                    ),
                  if (widget.mediaData.type == MediaType.voice)
                    Center(
                      child: Icon(
                        Icons.music_note,
                        color: Colors.white.withOpacity(0.8),
                        size: 50.0,
                      ),
                    ),
                  // Add progress overlay if needed, using BlocBuilder
                  BlocBuilder<FileDownloadCubit, FileDownloadState>(
                    builder: (context, state) {
                      if (state is FileDownloadInProgress) {
                        // Simple overlay showing progress
                        // return Container(
                        //    color: Colors.black.withOpacity(0.5),
                        //    child: Center(
                        //      child: Text(
                        //         "${(state.progress * 100).toStringAsFixed(0)}%",
                        //         style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        //      ),
                        //    ),
                        // );

                        // Or just return SizedBox.shrink() if using modal progress dialog
                        return const SizedBox.shrink();
                      }
                      return const SizedBox.shrink(); // No overlay otherwise
                    },
                  ),
                ],
              ),
            ),

            // --- Download Buttons ---
            Padding(
              padding: const EdgeInsets.all(4.0), // Reduced padding for buttons
              child: BlocBuilder<FileDownloadCubit, FileDownloadState>(
                builder: (context, state) {
                  final bool isDownloading = state is FileDownloadInProgress;

                  if (widget.mediaData.type == MediaType.video) {
                    // Video: Show only "Download Video" button
                    return _buildDownloadButton(
                      context,
                      l10n.downloadVideo,
                      Icons.videocam,
                      isDownloading ||
                          state is FileMp3ConversionInProgress, // Disable if any operation is active
                      () => _startDirectDownload(
                          context, MediaType.video, widget.mediaData.url),
                    );
                  } else {
                    // Photo or Voice: Show single download button
                    String buttonText;
                    IconData icon;
                    MediaType downloadType = widget.mediaData.type; // Default to item type
                    String urlToDownload = widget.mediaData.url;

                    switch (widget.mediaData.type) {
                      case MediaType.photo:
                        buttonText = l10n.downloadPhoto;
                        icon = Icons.photo_camera;
                        break;
                      case MediaType.voice:
                        buttonText = l10n.downloadMp3; // Use "Download Music" text
                        icon = Icons.music_note;
                        downloadType = MediaType.mp3; // Save as mp3
                        break;
                      default:
                        buttonText = l10n.download;
                        icon = Icons.download;
                    }

                    return _buildDownloadButton(
                      context,
                      buttonText,
                      icon,
                      isDownloading || state is FileMp3ConversionInProgress,
                      () => _startDirectDownload(context, downloadType, urlToDownload),
                    );
                  }
                },
              ),
            ),
          ],
        ),
        ),
      ),
    );
  }

  void _navigateToDetailScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MediaItemDetailScreen(
          downloadResult: widget.mediaData.downloadResult,
          initialIndex: widget.mediaData.mediaIndex,
        ),
      ),
    );
  }

  Widget _buildDownloadButton(BuildContext context, String text, IconData icon,
      bool isDisabled, VoidCallback onPressed) {
    return ElevatedButton.icon(
      icon: Icon(icon, size: 16),
      label: Text(text, style: const TextStyle(fontSize: 12)),
      onPressed: isDisabled ? null : onPressed,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        minimumSize: const Size(0, 30), // Smaller minimum size
        textStyle: const TextStyle(fontSize: 12),
        disabledBackgroundColor: Colors.grey.shade400,
        iconColor: Colors.white
      ),
    );
  }
}
