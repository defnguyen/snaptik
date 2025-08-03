enum MediaType {
  photo,
  video,
  voice,
  mp3,
}

extension MediaTypeExtension on MediaType {
  String get displayName {
    switch (this) {
      case MediaType.photo:
        return 'Photo';
      case MediaType.video:
        return 'Video';
      case MediaType.voice:
        return 'Voice';
      case MediaType.mp3:
        return 'MP3';
    }
  }

  // Helper to get file extension (can be refined)
  String get defaultExtension {
    switch (this) {
      case MediaType.photo:
        return 'jpg';
      case MediaType.video:
        return 'mp4';
      case MediaType.voice:
      case MediaType.mp3:
        return 'mp3';
    }
  }
}
