import 'dart:io';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart'; // Add dependency: photo_view: ^0.14.0

class PhotoViewer extends StatelessWidget {
  final String imagePath;
  final String? heroTag; // Optional hero tag for transition

  const PhotoViewer({super.key, required this.imagePath, this.heroTag});

  @override
  Widget build(BuildContext context) {
    final imageProvider = FileImage(File(imagePath));

    return Scaffold(
      backgroundColor: Colors.black, // Dark background for image viewing
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        iconTheme:
            const IconThemeData(color: Colors.white), // White back button
        // Optional: Add actions like share, info
      ),
      body: Center(
        child: heroTag != null
            ? PhotoView(
                imageProvider: imageProvider,
                heroAttributes: PhotoViewHeroAttributes(tag: heroTag!),
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2.0,
                backgroundDecoration: const BoxDecoration(color: Colors.black),
                loadingBuilder: (context, event) =>
                    const Center(child: CircularProgressIndicator()),
              )
            : PhotoView(
                imageProvider: imageProvider,
                minScale: PhotoViewComputedScale.contained * 0.8,
                maxScale: PhotoViewComputedScale.covered * 2.0,
                backgroundDecoration: const BoxDecoration(color: Colors.black),
                loadingBuilder: (context, event) =>
                    const Center(child: CircularProgressIndicator()),
              ),
      ),
    );
  }
}
