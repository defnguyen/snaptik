import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:snaptik/core/enums/media_type.dart' as app_media_type;
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:uuid/uuid.dart';
import 'package:path/path.dart' as p;
import 'package:file_saver/file_saver.dart'; // Plugin

class DownloadService {
  final Dio _dio;
  final MediaStorageService _mediaStorageService;
  final Uuid _uuid = const Uuid();

  DownloadService(this._mediaStorageService) : _dio = Dio();

  // Helper function to map your app's MediaType or a string to file_saver's MimeType
  MimeType _getSaverMimeType(
      app_media_type.MediaType appType, String? explicitMimeString) {
    if (explicitMimeString != null) {
      // Prioritize explicit MIME string if available and map it
      String lowerMime = explicitMimeString.toLowerCase();
      if (lowerMime == 'image/jpeg' || lowerMime == 'image/jpg')
        return MimeType.jpeg;
      if (lowerMime == 'image/png') return MimeType.png;
      if (lowerMime == 'image/gif') return MimeType.gif;
      // Add more image types if needed based on what your 'mime' package was returning for photos
      if (lowerMime == 'video/mp4') return MimeType.mp4Video;
      if (lowerMime == 'audio/mpeg' || lowerMime == 'audio/mp3')
        return MimeType.mpeg; // Assuming MPEG for MP3
      // Add other common types if needed
    }

    // Fallback to appType if explicitMimeString didn't match or wasn't provided
    switch (appType) {
      case app_media_type.MediaType.photo:
        return MimeType.jpeg; // Default for photo if specific MIME not known
      case app_media_type.MediaType.video:
        return MimeType.mp4Video;
      case app_media_type.MediaType.voice:
      case app_media_type.MediaType.mp3:
        return MimeType.mpeg; // Assuming MP3
      default:
        return MimeType.other; // Fallback
    }
  }

  Future<String?> downloadFile({
    required String url,
    required app_media_type.MediaType type, // Use aliased type
    required String originalFileNameHint,
    required Function(double)? onProgress,
  }) async {
    Directory tempDir = await getTemporaryDirectory();
    String uniqueId = _uuid.v4().substring(0, 8);
    String safeFileNameHint = originalFileNameHint
        .replaceAll(RegExp(r'[\\/*?:"<>|]'), '_')
        .replaceAll(RegExp(r'\s+'), '_');
    safeFileNameHint = p.basenameWithoutExtension(safeFileNameHint); // Remove any existing extension
    safeFileNameHint = safeFileNameHint.substring(
        0, (safeFileNameHint.length > 50) ? 50 : safeFileNameHint.length);

    String fileExtension;
    // String mimeTypeString; // We'll map directly to MimeType enum

    switch (type) {
      case app_media_type.MediaType.photo:
        fileExtension = p.extension(url).isNotEmpty ? p.extension(url) : '.jpg';
        if (fileExtension.length > 5 ||
            fileExtension.isEmpty ||
            !fileExtension.startsWith('.')) fileExtension = '.jpg';
        // mimeTypeString = mime(p.basenameWithoutExtension(safeFileNameHint) + fileExtension) ?? 'image/jpeg'; // No longer needed if mapping direct
        break;
      case app_media_type.MediaType.video:
        fileExtension = '.mp4';
        // mimeTypeString = 'video/mp4';
        break;
      case app_media_type.MediaType.voice:
      case app_media_type.MediaType.mp3:
        fileExtension = '.mp3';
        // mimeTypeString = 'audio/mpeg';
        break;
    }
    String finalFileName = '${safeFileNameHint}_$uniqueId$fileExtension';
    String tempFilePath = p.join(tempDir.path, finalFileName);

    print('DownloadService: Downloading to temp path: $tempFilePath');

    try {
      CancelToken cancelToken = CancelToken();
      await _dio.download(
        url,
        tempFilePath,
        onReceiveProgress: (received, total) {
          if (total != -1 && onProgress != null) {
            double progress = received / total;
            onProgress(progress);
          }
        },
        cancelToken: cancelToken,
      );
      print('DownloadService: Downloaded to temp path successfully.');

      // Get the MimeType for file_saver
      MimeType saverMimeType = _getSaverMimeType(type,
          null); // Pass null for explicitMimeString or derive it if needed

      String? finalPublicPath = await FileSaver.instance.saveFile(
          name: finalFileName,
          filePath: tempFilePath,
          ext: fileExtension.replaceFirst('.', ''),
          mimeType: saverMimeType // Use the mapped MimeType enum
          );

      if (finalPublicPath == null || finalPublicPath.isEmpty) {
        throw Exception("FileSaver failed to save the file to public storage.");
      }
      print(
          'DownloadService: File saved to public storage via FileSaver at: $finalPublicPath');

      await _mediaStorageService.saveMediaItem(
        id: uniqueId,
        path: finalPublicPath,
        type: type,
        dateAdded: DateTime.now(),
      );

      try {
        final tempFile = File(tempFilePath);
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      } catch (e) {/* ... */}

      return finalPublicPath;
    } catch (e) {
      print('DownloadService: Error during download or saving: $e');
      try {
        final tempFile = File(tempFilePath);
        if (await tempFile.exists()) {
          await tempFile.delete();
        }
      } catch (delError) {
        print(
            'DownloadService: Error deleting temp file on main error: $delError');
      }
      if (e is DioException) {
        throw Exception("Network error during download: ${e.message}");
      }
      throw Exception(
          "An unexpected error occurred during download/saving: ${e.toString()}");
    }
  }
}
