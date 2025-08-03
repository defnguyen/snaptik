import 'dart:io';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart'; // Add dependency: chewie: ^1.7.0

class VideoPlayerWidget extends StatefulWidget {
  final String videoPath;

  const VideoPlayerWidget({super.key, required this.videoPath});

  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;
  bool _isLoading = true;
  String? _error;

  @override
  void initState() {
    super.initState();
    _initializePlayer();
  }

  Future<void> _initializePlayer() async {
    try {
      _videoPlayerController =
          VideoPlayerController.file(File(widget.videoPath));

      await _videoPlayerController.initialize();

      _chewieController = ChewieController(
        videoPlayerController: _videoPlayerController,
        autoPlay: true, // Start playing automatically
        looping: false, // Don't loop by default
        // Optional: Customize controls
        // aspectRatio: _videoPlayerController.value.aspectRatio,
        materialProgressColors: ChewieProgressColors(
          playedColor: Theme.of(context).primaryColor,
          handleColor: Theme.of(context).primaryColor,
          bufferedColor: Colors.grey.shade400,
          backgroundColor: Colors.grey.shade700,
        ),
        placeholder:
            Container(color: Colors.black), // Placeholder while loading
        autoInitialize: true, // Initialize ASAP
        errorBuilder: (context, errorMessage) {
          return Center(
            child: Text(
              "Error playing video: $errorMessage", // Localize
              style: const TextStyle(color: Colors.white),
            ),
          );
        },
      );

      setState(() {
        _isLoading = false;
        _error = null;
      });
    } catch (e) {
      print("Error initializing video player: $e");
      setState(() {
        _isLoading = false;
        _error = "Could not load video."; // Localize
      });
    }
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose(); // Dispose Chewie controller as well
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }
    if (_error != null) {
      return Center(
          child: Text(_error!, style: const TextStyle(color: Colors.red)));
    }
    if (_chewieController == null) {
      return const Center(
          child: Text("Error initializing player controls.",
              style: TextStyle(color: Colors.red)));
    }

    return Center(
      child: Chewie(
        controller: _chewieController!,
      ),
    );
  }
}
