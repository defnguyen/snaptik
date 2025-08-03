import 'package:equatable/equatable.dart';

class Playlist extends Equatable {
  final String id;
  final String title;
  final String description;
  final List<String> tikTokResultIds; // References to TikTokResult IDs
  final DateTime dateCreated;
  final DateTime dateModified;

  const Playlist({
    required this.id,
    required this.title,
    required this.description,
    required this.tikTokResultIds,
    required this.dateCreated,
    required this.dateModified,
  });

  factory Playlist.fromJson(Map<String, dynamic> json) {
    return Playlist(
      id: json['id'] as String? ?? '',
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
      tikTokResultIds: (json['tikTokResultIds'] as List<dynamic>?)
          ?.map((id) => id as String)
          .toList() ?? [],
      dateCreated: DateTime.fromMillisecondsSinceEpoch(json['dateCreated'] as int? ?? 0),
      dateModified: DateTime.fromMillisecondsSinceEpoch(json['dateModified'] as int? ?? 0),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'tikTokResultIds': tikTokResultIds,
      'dateCreated': dateCreated.millisecondsSinceEpoch,
      'dateModified': dateModified.millisecondsSinceEpoch,
    };
  }

  Playlist copyWith({
    String? id,
    String? title,
    String? description,
    List<String>? tikTokResultIds,
    DateTime? dateCreated,
    DateTime? dateModified,
  }) {
    return Playlist(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      tikTokResultIds: tikTokResultIds ?? this.tikTokResultIds,
      dateCreated: dateCreated ?? this.dateCreated,
      dateModified: dateModified ?? this.dateModified,
    );
  }

  @override
  List<Object?> get props => [id, title, description, tikTokResultIds, dateCreated, dateModified];
}
