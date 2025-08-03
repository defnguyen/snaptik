import 'package:equatable/equatable.dart';
import 'package:snaptik/core/enums/media_type.dart';

class LibraryItem extends Equatable {
  final String
      id; // Unique identifier (e.g., UUID or derived from path initially)
  final String name; // File name (e.g., video.mp4)
  final String path; // Full path to the file
  final MediaType type; // Photo, Video, Voice
  final DateTime dateAdded; // Timestamp when downloaded
  final int size; // File size in bytes
  final String? thumbnailPath; // Path to a generated thumbnail (optional)

  const LibraryItem({
    required this.id,
    required this.name,
    required this.path,
    required this.type,
    required this.dateAdded,
    required this.size,
    this.thumbnailPath,
  });

  // Empty factory for convenience (e.g., in firstWhere orElse)
  factory LibraryItem.empty() => LibraryItem(
        id: '',
        name: '',
        path: '',
        type: MediaType.photo, // Default or handle appropriately
        dateAdded: DateTime(0),
        size: 0,
      );

  // For JSON serialization/deserialization (used with MediaStorageService)
  factory LibraryItem.fromJson(Map<String, dynamic> json) {
    return LibraryItem(
      id: json['id'] as String? ?? '',
      name: json['name'] as String? ?? '',
      path: json['path'] as String? ?? '',
      type: MediaType.values.firstWhere(
        (e) => e.name == json['type'],
        orElse: () => MediaType.photo, // Default fallback
      ),
      dateAdded:
          DateTime.fromMillisecondsSinceEpoch(json['dateAdded'] as int? ?? 0),
      size: json['size'] as int? ?? 0,
      thumbnailPath: json['thumbnailPath'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'path': path,
      'type': type.name, // Store enum name as string
      'dateAdded': dateAdded.millisecondsSinceEpoch,
      'size': size,
      'thumbnailPath': thumbnailPath,
    };
  }

  // CopyWith method for easy updates (e.g., after renaming)
  LibraryItem copyWith({
    String? id,
    String? name,
    String? path,
    MediaType? type,
    DateTime? dateAdded,
    int? size,
    String? originalUrl,
    String? thumbnailPath,
  }) {
    return LibraryItem(
      id: id ?? this.id,
      name: name ?? this.name,
      path: path ?? this.path,
      type: type ?? this.type,
      dateAdded: dateAdded ?? this.dateAdded,
      size: size ?? this.size,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
    );
  }

  @override
  List<Object?> get props =>
      [id, name, path, type, dateAdded, size, thumbnailPath];
}
