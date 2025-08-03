import 'package:equatable/equatable.dart';

// Media item from the new TikTok API
class MediaItem extends Equatable {
  final String url;
  final int? dataSize;
  final String quality;
  final String extension;
  final String type; // "video", "image", "audio"
  final int? duration; // For audio/video

  const MediaItem({
    required this.url,
    this.dataSize,
    required this.quality,
    required this.extension,
    required this.type,
    this.duration,
  });

  factory MediaItem.fromJson(Map<String, dynamic> json) {
    return MediaItem(
      url: DownloadResult._safeStringCast(json['url']) ?? '',
      dataSize: json.containsKey('data_size') ? DownloadResult._safeIntCast(json['data_size']) : null,
      quality: DownloadResult._safeStringCast(json['quality']) ?? '',
      extension: DownloadResult._safeStringCast(json['extension']) ?? '',
      type: DownloadResult._safeStringCast(json['type']) ?? '',
      duration: json.containsKey('duration') ? DownloadResult._safeIntCast(json['duration']) : null,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'data_size': dataSize,
      'quality': quality,
      'extension': extension,
      'type': type,
      'duration': duration,
    };
  }

  @override
  List<Object?> get props => [url, dataSize, quality, extension, type, duration];
}

// Author information for TikTok API
class TikTokAuthor extends Equatable {
  final String uniqueId;
  final String author; // Display name

  const TikTokAuthor({
    required this.uniqueId,
    required this.author,
  });

  factory TikTokAuthor.fromJson(Map<String, dynamic> json) {
    return TikTokAuthor(
      uniqueId: json['unique_id'] as String? ?? '',
      author: json['author'] as String? ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'unique_id': uniqueId,
      'author': author,
    };
  }

  @override
  List<Object?> get props => [uniqueId, author];
}

// Main download result structure matching the new TikTok API response
class DownloadResult extends Equatable {
  final String url; // Original URL
  final String source; // "tiktok"
  final String id; // Video ID
  final String uniqueId; // Author unique ID
  final String author; // Author display name
  final String title; // Video title
  final String thumbnail; // Thumbnail URL
  final int duration; // Video duration
  final List<MediaItem> medias; // All media items (video, image, audio)
  final bool success; // For compatibility
  final String? message; // For error handling

  const DownloadResult({
    required this.url,
    required this.source,
    required this.id,
    required this.uniqueId,
    required this.author,
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.medias,
    this.success = true,
    this.message,
  });

  factory DownloadResult.fromJson(Map<String, dynamic> json) {
    try {
      // Handle both success and error responses
      if (json.containsKey('error') && (json['error'] == true)) {
        return DownloadResult(
          url: '',
          source: '',
          id: '',
          uniqueId: '',
          author: '',
          title: '',
          thumbnail: '',
          duration: 0,
          medias: [],
          success: false,
          message: _safeStringCast(json['message']) ?? _safeStringCast(json['error']) ?? 'Unknown error',
        );
      }

      // Parse successful response with detailed error handling
      List<MediaItem> mediasList = [];
      try {
        final mediasData = json['medias'];
        if (mediasData is List) {
          mediasList = mediasData
              .map((item) {
                try {
                  return MediaItem.fromJson(item as Map<String, dynamic>);
                } catch (e) {
                  print("Error parsing media item: $e, item: $item");
                  return null;
                }
              })
              .where((item) => item != null)
              .cast<MediaItem>()
              .toList();
        }
      } catch (e) {
        print("Error parsing medias array: $e");
        mediasList = [];
      }

    final result = DownloadResult(
      url: _safeStringCast(json['url']) ?? '',
      source: _safeStringCast(json['source']) ?? '',
      id: _safeStringCast(json['id']) ?? '',
      uniqueId: _safeStringCast(json['unique_id']) ?? '',
      author: _safeStringCast(json['author']) ?? '',
      title: _safeStringCast(json['title']) ?? '',
      thumbnail: _safeStringCast(json['thumbnail']) ?? '',
      duration: _safeIntCast(json['duration']) ?? 0,
      medias: mediasList,
      success: true,
      message: null,
    );

    // Validate that we have actual download URLs
    if (result.medias.isEmpty || result.medias.every((media) => media.url.isEmpty)) {
      return DownloadResult(
        url: result.url,
        source: result.source,
        id: result.id,
        uniqueId: result.uniqueId,
        author: result.author,
        title: result.title,
        thumbnail: result.thumbnail,
        duration: result.duration,
        medias: result.medias,
        success: false,
        message: 'No download URLs available. The video might be private or unavailable.',
      );
    }

    return result;
    } catch (e) {
      print("Error parsing DownloadResult: $e");
      print("JSON data: $json");
      return DownloadResult(
        url: '',
        source: '',
        id: '',
        uniqueId: '',
        author: '',
        title: '',
        thumbnail: '',
        duration: 0,
        medias: [],
        success: false,
        message: 'Failed to parse response data',
      );
    }
  }



  Map<String, dynamic> toJson() {
    return {
      'url': url,
      'source': source,
      'id': id,
      'unique_id': uniqueId,
      'author': author,
      'title': title,
      'thumbnail': thumbnail,
      'duration': duration,
      'medias': medias.map((m) => m.toJson()).toList(),
      'success': success,
      'message': message,
    };
  }

  // Helper methods to maintain compatibility with existing code
  List<MediaItem> get videos => medias.where((m) => m.type == 'video').toList();
  List<MediaItem> get images => medias.where((m) => m.type == 'image').toList();
  List<MediaItem> get audios => medias.where((m) => m.type == 'audio').toList();

  @override
  List<Object?> get props => [url, source, id, uniqueId, author, title, thumbnail, duration, medias, success, message];

  // Helper method to safely cast to String
  static String? _safeStringCast(dynamic value) {
    if (value == null) return null;
    if (value is String) return value;
    if (value is bool) return value.toString();
    if (value is num) return value.toString();
    if (value is List) return value.toString();
    if (value is Map) return value.toString();
    return value.toString();
  }

  // Helper method to safely cast to int
  static int? _safeIntCast(dynamic value) {
    if (value == null) return null;
    if (value is int) return value;
    if (value is double) return value.round();
    if (value is String) {
      final parsed = int.tryParse(value);
      if (parsed != null) return parsed;
      // Try parsing as double first, then convert to int
      final doubleValue = double.tryParse(value);
      return doubleValue?.round();
    }
    if (value is bool) return value ? 1 : 0;
    return null;
  }
}
