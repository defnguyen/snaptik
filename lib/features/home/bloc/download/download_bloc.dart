import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:snaptik/core/blocs/download_limit/download_limit_cubit.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/helpers/url_validator.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/l10n/app_localizations.dart'; // Import for localized messages

part 'download_event.dart';
part 'download_state.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final ApiClient apiClient;
  final DownloadLimitCubit downloadLimitCubit;
  final PremiumCubit premiumCubit;
  final TikTokResultsService tikTokResultsService;

  DownloadBloc({
    required this.apiClient,
    required this.downloadLimitCubit,
    required this.premiumCubit,
    required this.tikTokResultsService,
  }) : super(DownloadInitial()) {
    on<DownloadUrlSubmitted>(_onDownloadUrlSubmitted);
    on<ClearDownload>(_onClearDownload);
  }

  Future<void> _onDownloadUrlSubmitted(
      DownloadUrlSubmitted event, Emitter<DownloadState> emit) async {
    // Use a placeholder for localization - replace with actual l10n calls in UI or passed here
    final String strInvalidUrlFormat = "Invalid TikTok URL format.";
    final String strGenericApiError =
        "Failed to fetch media. Please check the URL or try again later.";
    final String strUrlCannotBeEmpty = "URL cannot be empty.";
    final String strMustContainTikTok = "URL must contain 'tiktok.com'.";
    final String strInvalidTikTokUrlStructure =
        "Invalid TikTok URL format. Please use a video link.";

    // 1. Check Premium Status
    final bool isPremium = premiumCubit.state.isPremium;

    // 2. Check Download Limit (if not premium)
    if (!isPremium && downloadLimitCubit.state.currentLimit <= 0) {
      emit(DownloadLimitExceeded(limit: downloadLimitCubit.state.maxLimit));
      return;
    }

    // 3. Validate URL
    final validationErrorKey =
        UrlValidator.validateTikTokUrl(event.url, isPremium);
    if (validationErrorKey != null) {
      // Map validation key to actual localized string
      String errorMessage;
      switch (validationErrorKey) {
        case "URL cannot be empty.":
          errorMessage = strUrlCannotBeEmpty;
          break;
        case "Invalid URL format.":
          errorMessage = strInvalidUrlFormat;
          break;
        case "URL must contain 'tiktok.com'.":
          errorMessage = strMustContainTikTok;
          break;
        case "Invalid TikTok URL format. Please use a video link.":
          errorMessage = strInvalidTikTokUrlStructure;
          break;
        default:
          errorMessage = strInvalidUrlFormat; // Fallback
      }
      emit(DownloadFailure(error: errorMessage));
      return;
    }

    // 4. Emit Loading State
    emit(DownloadLoading());

    try {
      // 5. Make API Call
      final result =
          await apiClient.fetchMediaInfo(event.url.trim()); // Trim URL

      // Check backend success flag within the result
      if (!result.success) {
        emit(DownloadFailure(error: result.message ?? strGenericApiError));
        return;
      }

      // 6. Decrement Limit (if not premium and successful fetch)
      if (!isPremium) {
        downloadLimitCubit.decrementLimit();
      }

      // 7. Save result to database
      try {
        await tikTokResultsService.saveTikTokResult(result);
      } catch (e) {
        print("Error saving TikTok result to database: $e");
        // Continue even if database save fails
      }

      // 8. Emit Loaded State
      emit(DownloadSuccess(result: result));
    } catch (e) {
      // 8. Emit Failure State
      print("Error in DownloadBloc: $e");
      // If the error is an Exception with a message from ApiClient, use it
      final errorMessage = (e is Exception)
          ? e.toString().replaceFirst('Exception: ', '')
          : strGenericApiError;
      emit(DownloadFailure(error: errorMessage));
    }
  }

  void _onClearDownload(ClearDownload event, Emitter<DownloadState> emit) {
    emit(DownloadInitial());
  }
}
