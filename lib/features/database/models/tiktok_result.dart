import 'package:equatable/equatable.dart';
import 'package:snaptik/features/home/models/download_result.dart';

class TikTokResult extends Equatable {
  final String id; // Unique identifier
  final String url; // Original URL
  final String source; // "tiktok"
  final String videoId; // TikTok video ID
  final String uniqueId; // Author unique ID
  final String author; // Author display name
  final String title; // Video title
  final String thumbnail; // Thumbnail URL
  final int duration; // Video duration
  final List<MediaItem> medias; // All media items
  final DateTime dateAdded; // When this was fetched
  final bool isFavorite; // User can mark as favorite

  const TikTokResult({
    required this.id,
    required this.url,
    required this.source,
    required this.videoId,
    required this.uniqueId,
    required this.author,
    required this.title,
    required this.thumbnail,
    required this.duration,
    required this.medias,
    required this.dateAdded,
    this.isFavorite = false,
  });

  factory TikTokResult.fromDownloadResult(DownloadResult downloadResult, String uniqueId) {
    return TikTokResult(
      id: uniqueId,
      url: downloadResult.url,
      source: downloadResult.source,
      videoId: downloadResult.id,
      uniqueId: downloadResult.uniqueId,
      author: downloadResult.author,
      title: downloadResult.title,
      thumbnail: downloadResult.thumbnail,
      duration: downloadResult.duration,
      medias: downloadResult.medias,
      dateAdded: DateTime.now(),
      isFavorite: false,
    );
  }

  factory TikTokResult.fromJson(Map<String, dynamic> json) {
    return TikTokResult(
      id: json['id'] as String? ?? '',
      url: json['url'] as String? ?? '',
      source: json['source'] as String? ?? '',
      videoId: json['videoId'] as String? ?? '',
      uniqueId: json['uniqueId'] as String? ?? '',
      author: json['author'] as String? ?? '',
      title: json['title'] as String? ?? '',
      thumbnail: json['thumbnail'] as String? ?? '',
      duration: json['duration'] as int? ?? 0,
      medias: (json['medias'] as List<dynamic>?)
          ?.map((item) => MediaItem.fromJson(item as Map<String, dynamic>))
          .toList() ?? [],
      dateAdded: DateTime.fromMillisecondsSinceEpoch(json['dateAdded'] as int? ?? 0),
      isFavorite: json['isFavorite'] as bool? ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'url': url,
      'source': source,
      'videoId': videoId,
      'uniqueId': uniqueId,
      'author': author,
      'title': title,
      'thumbnail': thumbnail,
      'duration': duration,
      'medias': medias.map((m) => m.toJson()).toList(),
      'dateAdded': dateAdded.millisecondsSinceEpoch,
      'isFavorite': isFavorite,
    };
  }

  TikTokResult copyWith({
    String? id,
    String? url,
    String? source,
    String? videoId,
    String? uniqueId,
    String? author,
    String? title,
    String? thumbnail,
    int? duration,
    List<MediaItem>? medias,
    DateTime? dateAdded,
    bool? isFavorite,
  }) {
    return TikTokResult(
      id: id ?? this.id,
      url: url ?? this.url,
      source: source ?? this.source,
      videoId: videoId ?? this.videoId,
      uniqueId: uniqueId ?? this.uniqueId,
      author: author ?? this.author,
      title: title ?? this.title,
      thumbnail: thumbnail ?? this.thumbnail,
      duration: duration ?? this.duration,
      medias: medias ?? this.medias,
      dateAdded: dateAdded ?? this.dateAdded,
      isFavorite: isFavorite ?? this.isFavorite,
    );
  }

  @override
  List<Object?> get props => [
    id, url, source, videoId, uniqueId, author, title, 
    thumbnail, duration, medias, dateAdded, isFavorite
  ];
}
