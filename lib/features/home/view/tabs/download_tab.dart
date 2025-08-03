import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/blocs/download_limit/download_limit_cubit.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/helpers/url_validator.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/core/widgets/app_lifecycle_reactor.dart';
import 'package:snaptik/core/widgets/app_native_ad.dart';
import 'package:snaptik/features/home/bloc/download/download_bloc.dart';

import 'package:snaptik/features/home/widgets/how_to_use_widget.dart';
import 'package:snaptik/features/home/widgets/media_result_item.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/features/subscription/view/subscription_screen.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class DownloadTab extends StatefulWidget {
  const DownloadTab({super.key});

  @override
  State<DownloadTab> createState() => _DownloadTabState();
}

class _DownloadTabState extends State<DownloadTab> {
  final TextEditingController _urlController = TextEditingController();
  late DownloadBloc _downloadBloc;
  String? _inputError;

  @override
  void initState() {
    super.initState();
    _downloadBloc = DownloadBloc(
      apiClient: context.read<ApiClient>(),
      downloadLimitCubit: context.read<DownloadLimitCubit>(),
      premiumCubit: context.read<PremiumCubit>(),
      tikTokResultsService: context.read<TikTokResultsService>(),
    );
    _urlController.addListener(() {
      setState(() {});
    });

    // Set up clipboard listener
    ClipboardUrlNotifier.instance.setListener(_handleClipboardUrl);

    // Check clipboard on initial load
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkInitialClipboard();
    });
  }

  @override
  void dispose() {
    ClipboardUrlNotifier.instance.removeListener();
    _urlController.dispose();
    _downloadBloc.close();
    super.dispose();
  }

  Future<void> _checkInitialClipboard() async {
    try {
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      if (clipboardData?.text != null) {
        final clipboardText = clipboardData!.text!.trim();
        if (_isValidUrl(clipboardText)) {
          _urlController.text = clipboardText;
        }
      }
    } catch (e) {
      print("Error checking initial clipboard: $e");
    }
  }

  void _handleClipboardUrl(String url) {
    if (mounted) {
      setState(() {
        _urlController.text = url;
      });
    }
  }

  bool _isValidUrl(String url) {
    // Check for TikTok URLs
    if (url.contains('tiktok.com')) {
      return UrlValidator.validateTikTokUrl(url, true) == null;
    }

    return false;
  }

  void _pasteFromClipboard() async {
    final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
    if (clipboardData != null && clipboardData.text != null) {
      _urlController.text = clipboardData.text!;
    }
  }

  void _clearInput() {
    _urlController.clear();
    _downloadBloc.add(ClearDownload()); // Also clear the results
  }

  void _submitUrl() {
    if (_urlController.text.isNotEmpty) {
      _downloadBloc.add(DownloadUrlSubmitted(url: _urlController.text.trim()));
    }
  }

  void _navigateToSubscriptionScreen(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const SubscriptionScreen(showCloseButton: true),
      ),
    );
  }

  String _getQualityBadge(String quality) {
    switch (quality.toLowerCase()) {
      case 'hd_no_watermark':
        return 'HD - NO WATERMARK';
      case 'no_watermark':
        return 'NO WATERMARK';
      case 'watermark':
        return 'WATERMARK';
      case 'audio':
        return 'MUSIC';
      default:
        return quality.toUpperCase();
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final bool isInputEmpty = _urlController.text.isEmpty;
    final bool isPremium =
        context.select((PremiumCubit cubit) => cubit.state.isPremium);

    return BlocProvider.value(
      value: _downloadBloc,
      child: BlocListener<DownloadBloc, DownloadState>(
        listener: (context, state) {
          if (state is DownloadFailure) {
            setState(() {
              _inputError = state.error;
            });
          } else if (state is DownloadLimitExceeded) {
            _navigateToSubscriptionScreen(context);
          } else if (state is DownloadLoading) {
            setState(() {
              _inputError = null; // Clear error when starting new request
            });
          }
          // Snackbar for file download success/error is handled by FileDownloadCubit listener
        },
        child: SingleChildScrollView(
          // Allow scrolling if content overflows
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Input Field
              TextField(
                controller: _urlController,
                decoration: InputDecoration(
                  hintText: l10n.enterThreadsUrl,
                  border: const OutlineInputBorder(),
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 2),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Theme.of(context).colorScheme.error, width: 2),
                  ),
                  errorText: _inputError,
                  suffixIcon: IconButton(
                    icon:
                        Icon(isInputEmpty ? Icons.content_paste : Icons.clear),
                    tooltip: isInputEmpty ? l10n.pasteLink : l10n.clear,
                    onPressed: isInputEmpty ? _pasteFromClipboard : _clearInput,
                  ),
                ),
                onChanged: (value) {
                  if (_inputError != null) {
                    setState(() {
                      _inputError = null; // Clear error when user types
                    });
                  }
                },
              ),
              const SizedBox(height: 12),

              // Download Button
              BlocBuilder<DownloadBloc, DownloadState>(
                builder: (context, state) {
                  final bool isLoading = state is DownloadLoading;
                  return ElevatedButton.icon(
                    icon: isLoading
                        ? const SizedBox(
                            width: 20,
                            height: 20,
                            child: CircularProgressIndicator(
                                strokeWidth: 2, color: Colors.white))
                        : const Icon(Icons.download),
                    label: Text(isLoading ? l10n.fetchingMedia : l10n.download, style: const TextStyle(fontSize: 16)),
                    onPressed: isLoading || _urlController.text.isEmpty
                        ? null
                        : _submitUrl,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      backgroundColor: isLoading || _urlController.text.isEmpty
                          ? null
                          : Theme.of(context).colorScheme.primary,
                      foregroundColor: isLoading || _urlController.text.isEmpty
                          ? null
                          : Theme.of(context).colorScheme.onPrimary,
                    ),
                  );
                },
              ),
              const SizedBox(height: 20),

              // Native Ad
              if (!isPremium) AppNativeAd(), // Your native ad widget
              const SizedBox(height: 20),

              // Content Area (HowToUse / Results)
              BlocBuilder<DownloadBloc, DownloadState>(
                builder: (context, state) {
                  if (state is DownloadSuccess) {
                    // Display Results Grid
                    final results = state.result; // Your DownloadResult model
                    final List<MediaItemDisplayData> allMedia = [];
                    int mediaIndex = 0;

                    // Add images
                    for (int i = 0; i < results.images.length; i++) {
                      final item = results.images[i];
                      allMedia.add(MediaItemDisplayData(
                        type: MediaType.photo,
                        url: item.url,
                        cover: results.thumbnail,
                        quality: 'PHOTO',
                        downloadResult: results,
                        mediaIndex: mediaIndex++,
                      ));
                    }

                    // Add videos
                    for (int i = 0; i < results.videos.length; i++) {
                      final item = results.videos[i];
                      allMedia.add(MediaItemDisplayData(
                        type: MediaType.video,
                        url: item.url,
                        cover: results.thumbnail,
                        quality: _getQualityBadge(item.quality),
                        downloadResult: results,
                        mediaIndex: mediaIndex++,
                      ));
                    }

                    // Add audios
                    for (int i = 0; i < results.audios.length; i++) {
                      final item = results.audios[i];
                      allMedia.add(MediaItemDisplayData(
                        type: MediaType.voice,
                        url: item.url,
                        cover: results.thumbnail,
                        quality: 'MUSIC',
                        downloadResult: results,
                        mediaIndex: mediaIndex++,
                      ));
                    }

                    if (allMedia.isEmpty) {
                      return Center(
                          child: Text(
                              "No downloadable media found in this post.")); // Localize
                    }

                    return GridView.builder(
                      shrinkWrap:
                          true, // Important inside SingleChildScrollView
                      physics:
                          const NeverScrollableScrollPhysics(), // Disable grid scrolling
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: AppConstants.gridSpacing,
                        mainAxisSpacing: AppConstants.gridSpacing,
                        childAspectRatio: AppConstants
                            .gridAspectRatio, // Adjust aspect ratio as needed
                      ),
                      itemCount: allMedia.length,
                      itemBuilder: (context, index) {
                        // Pass data to your result item widget
                        // This widget will contain its own FileDownloadCubit logic
                        return MediaResultItem(mediaData: allMedia[index]);
                      },
                    );
                  } else if (state is DownloadLoading) {
                    // Show loading indicator INSTEAD of HowToUse if desired
                    return const Center(
                        child: SizedBox.shrink()); // Or a small inline loader
                  } else {
                    // Show How To Use (Initial/Error/Cleared State)
                    return const HowToUseWidget();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }


}

// Helper data class for the grid
class MediaItemDisplayData {
  final MediaType type;
  final String url;
  final String cover; // Thumbnail URL
  final String quality; // Quality information for badge
  final DownloadResult downloadResult; // Full download result for navigation
  final int mediaIndex; // Index of this media item in the result

  MediaItemDisplayData({
    required this.type,
    required this.url,
    required this.cover,
    required this.quality,
    required this.downloadResult,
    required this.mediaIndex,
  });
}
