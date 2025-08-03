import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart'; // Required for BuildContext
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/core/services/download_service.dart';
import 'package:snaptik/core/services/permission_service.dart';
import 'package:snaptik/l10n/app_localizations.dart'; // For localized errors

part 'file_download_state.dart';

class FileDownloadCubit extends Cubit<FileDownloadState> {
  final DownloadService downloadService;
  final PermissionService permissionService;
  final ApiClient apiClient;
  final StreamController<double> _progressController =
      StreamController<double>.broadcast();

  Stream<double> get progressStream => _progressController.stream;

  FileDownloadCubit({
    required this.downloadService,
    required this.permissionService,
    required this.apiClient,
  }) : super(FileDownloadInitial());

  Future<void> startDownload({
    required String url,
    required MediaType type,
    required String fileNameHint, // e.g., uniqueId_postId
    required BuildContext context, // Needed for permission check context
  }) async {
    // Use a placeholder for localization - replace with actual l10n calls
    final String strDownloadFailed =
        AppLocalizations.of(context)?.downloadError ??
            "Download failed. Please try again.";
    final String strPermissionDenied =
        AppLocalizations.of(context)?.permissionStorageDenied ??
            "Storage permission denied.";

    if (state is FileDownloadInProgress || state is FileMp3ConversionInProgress)
      return;

    bool permissionsConsideredGranted =
        await permissionService.requestStoragePermission(context);

    if (!permissionsConsideredGranted) {
      // This will primarily trigger if user denies our rationale dialog,
      // or on Android 10 if system dialog is denied, or iOS photo permission.
      // On A11/A12, requestStoragePermission might return true even if no system dialog showed.
      print(
          "FileDownloadCubit: Permissions not granted after requestStoragePermission call.");
      emit(FileDownloadFailure(strPermissionDenied));
      _progressController.add(0.0);
      return;
    }

    emit(const FileDownloadInProgress(0.0)); // Initial progress state
    _progressController.add(0.0); // Emit initial progress for dialog

    try {
      final filePath = await downloadService.downloadFile(
        url: url,
        type: type,
        originalFileNameHint: fileNameHint,
        onProgress: (progress) {
          if (!isClosed) {
            // Check if cubit is still active
            emit(FileDownloadInProgress(progress));
            _progressController.add(progress); // Update stream for dialog
          }
        },
        // Pass context ONLY if DownloadService needs it directly for permissions
        // It's better if PermissionService handles context internally when called
        // context: context, // Avoid passing context deeply if possible
      );

      if (filePath != null && !isClosed) {
        emit(FileDownloadSuccess(filePath, type));
      } else if (!isClosed) {
        // If filePath is null but no exception was thrown (shouldn't happen with current DownloadService)
        emit(FileDownloadFailure(strDownloadFailed));
      }
    } on Exception catch (e) {
      print("Download Error in Cubit: $e");
      if (!isClosed) {
        // Check for specific permission error message from DownloadService if implemented
        if (e.toString().contains("permission denied")) {
          emit(FileDownloadFailure(strPermissionDenied));
        } else {
          emit(FileDownloadFailure(e.toString().replaceFirst(
              'Exception: ', ''))); // Use error message from service
        }
      }
    } finally {
      // Ensure progress stream/controller is handled correctly if needed
      // _progressController.close(); // Close only if instance is per-download
    }
  }

  // Handle MP3 conversion then download
  Future<void> convertAndDownloadMp3({
    required String videoUrl, // This is the direct URL of the video file
    required String fileNameHint,
    required BuildContext context,
  }) async {
    final l10n = AppLocalizations.of(context)!;
    final String strConversionFailed = "MP3 conversion failed."; // Localize
    final String strDownloadFailed = l10n.downloadError;
    final String strPermissionDenied = l10n.permissionStorageDenied;

    if (state is FileDownloadInProgress || state is FileMp3ConversionInProgress)
      return;

    bool permissionsConsideredGranted =
        await permissionService.requestStoragePermission(context);
    if (!permissionsConsideredGranted) {
      print(
          "FileDownloadCubit (MP3): Permissions not granted after requestStoragePermission call.");
      emit(FileDownloadFailure(
          strPermissionDenied)); // Use specific state if desired: FileMp3ConversionFailure(strPermissionDenied)
      _progressController.add(0.0);
      return;
    }

    // 2. Indicate MP3 Conversion is Starting
    emit(const FileMp3ConversionInProgress());
    _progressController
        .add(0.0); // Reset progress for dialog if shown for conversion step

    try {
      // 3. Call API to convert video to MP3
      print("FileDownloadCubit: Converting video to MP3. Video URL: $videoUrl");
      final conversionResult = await apiClient.convertVideoToMp3(videoUrl);

      if (conversionResult.success &&
          conversionResult.mp3Url != null &&
          conversionResult.mp3Url!.isNotEmpty) {
        print(
            "FileDownloadCubit: MP3 conversion successful. MP3 URL: ${conversionResult.mp3Url}");
        // 4. Now download the MP3 file using the existing download service
        // The progress dialog (if used via stream) will now show download progress
        emit(const FileDownloadInProgress(
            0.0)); // Switch to download progress state
        _progressController.add(0.0); // Reset progress for download

        final filePath = await downloadService.downloadFile(
          url: conversionResult.mp3Url!,
          type: MediaType.mp3, // Explicitly set type to MP3
          originalFileNameHint: "${fileNameHint}_audio",
          onProgress: (progress) {
            if (!isClosed) {
              emit(FileDownloadInProgress(progress));
              _progressController.add(progress);
            }
          },
        );

        if (filePath != null && !isClosed) {
          emit(FileDownloadSuccess(filePath, MediaType.mp3));
        } else if (!isClosed) {
          emit(FileDownloadFailure(strDownloadFailed));
        }
      } else {
        print(
            "FileDownloadCubit: MP3 conversion API failed. Message: ${conversionResult.message}");
        emit(FileMp3ConversionFailure(
            conversionResult.message ?? strConversionFailed));
      }
    } on Exception catch (e) {
      print("FileDownloadCubit: Error during MP3 conversion/download: $e");
      if (!isClosed) {
        emit(FileMp3ConversionFailure(
            e.toString().replaceFirst('Exception: ', '')));
      }
    }
  }

  // Reset state manually if needed (e.g., user clears results)
  void resetState() {
    emit(FileDownloadInitial());
    _progressController.add(0.0); // Reset progress indication
  }

  @override
  Future<void> close() {
    _progressController.close(); // Close stream controller when cubit is closed
    return super.close();
  }
}
