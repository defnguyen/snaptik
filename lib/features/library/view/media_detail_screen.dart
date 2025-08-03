import 'package:flutter/material.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/features/library/view/audio_player_widget.dart';
import 'package:snaptik/features/library/view/photo_viewer.dart';
import 'package:snaptik/features/library/view/video_player_widget.dart';

class MediaDetailScreen extends StatelessWidget {
  final LibraryItem item;

  const MediaDetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar is handled differently by viewers (PhotoView uses its own)
      // For Video/Audio, we might want a standard AppBar
      appBar: (item.type == MediaType.video ||
              item.type == MediaType.voice ||
              item.type == MediaType.mp3)
          ? AppBar(
              title: Text(item.name,
                  style: const TextStyle(fontSize: 16)), // Show file name
              backgroundColor: Colors.black, // Match dark background of players
              elevation: 0,
              iconTheme: const IconThemeData(color: Colors.white),
            )
          : null, // PhotoViewer manages its own AppBar/background interaction
      backgroundColor: Colors.black, // Default dark background
      body: _buildContentView(),
    );
  }

  Widget _buildContentView() {
    switch (item.type) {
      case MediaType.photo:
        return PhotoViewer(
            imagePath: item.path, heroTag: item.id); // Use ID as hero tag
      case MediaType.video:
        return Center(child: VideoPlayerWidget(videoPath: item.path));
      case MediaType.voice:
      case MediaType.mp3:
        // Center the audio player or place it differently?
        return Center(
          child: Padding(
            padding:
                const EdgeInsets.all(20.0), // Add padding around audio player
            child: AudioPlayerWidget(audioPath: item.path, title: item.name),
          ),
        );
    }
  }
}
