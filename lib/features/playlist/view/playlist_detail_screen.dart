import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:snaptik/features/playlist/models/playlist.dart';
import 'package:snaptik/features/playlist/services/playlist_service.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/features/database/models/tiktok_result.dart';
import 'package:snaptik/features/home/view/media_item_detail_screen.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class PlaylistDetailScreen extends StatefulWidget {
  final Playlist playlist;

  const PlaylistDetailScreen({
    super.key,
    required this.playlist,
  });

  @override
  State<PlaylistDetailScreen> createState() => _PlaylistDetailScreenState();
}

class _PlaylistDetailScreenState extends State<PlaylistDetailScreen> {
  late PlaylistService _playlistService;
  late TikTokResultsService _tikTokService;
  List<TikTokResult> _playlistItems = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _playlistService = context.read<PlaylistService>();
    _tikTokService = context.read<TikTokResultsService>();
    _loadPlaylistItems();
  }

  Future<void> _loadPlaylistItems() async {
    setState(() => _isLoading = true);
    try {
      final allResults = await _tikTokService.loadTikTokResults();
      final playlistItems = allResults
          .where((result) => widget.playlist.tikTokResultIds.contains(result.id))
          .toList();
      
      setState(() {
        _playlistItems = playlistItems;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading playlist items: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.playlist.title),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _showDeletePlaylistConfirmation(context),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _playlistItems.isEmpty
              ? _buildEmptyState(context, l10n)
              : _buildPlaylistGrid(context),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.playlist_remove,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          const Text(
            'No items in this playlist',
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Add some media to get started',
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistGrid(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: _playlistItems.length,
        itemBuilder: (context, index) {
          final item = _playlistItems[index];
          return _buildPlaylistItemCard(item, index);
        },
      ),
    );
  }

  Widget _buildPlaylistItemCard(TikTokResult item, int index) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _navigateToMediaDetail(item, index),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail
            Expanded(
              flex: 3,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CachedNetworkImage(
                    imageUrl: item.thumbnail,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) => Container(
                      color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                      child: Icon(
                        Icons.video_library,
                        size: 48,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ),
                  // Play icon overlay
                  Center(
                    child: Icon(
                      Icons.play_circle_fill,
                      color: Colors.white.withOpacity(0.8),
                      size: 50.0,
                    ),
                  ),
                  // Remove button
                  Positioned(
                    top: 8,
                    right: 8,
                    child: GestureDetector(
                      onTap: () => _removeFromPlaylist(item),
                      child: Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(
                          color: Colors.red.withOpacity(0.8),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Info
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item.author,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    Expanded(
                      child: Text(
                        item.title,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                        ),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToMediaDetail(TikTokResult tikTokResult, int index) {
    // Convert TikTokResult to DownloadResult for the detail screen
    final downloadResult = DownloadResult(
      url: tikTokResult.url,
      source: tikTokResult.source,
      id: tikTokResult.id,
      uniqueId: tikTokResult.uniqueId,
      author: tikTokResult.author,
      title: tikTokResult.title,
      thumbnail: tikTokResult.thumbnail,
      duration: tikTokResult.duration,
      medias: tikTokResult.medias,
      success: true,
      message: null,
    );

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MediaItemDetailScreen(
          downloadResult: downloadResult,
          initialIndex: 0,
        ),
      ),
    );
  }

  Future<void> _removeFromPlaylist(TikTokResult item) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove from Playlist'),
        content: Text('Remove "${item.author}" from this playlist?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Remove'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      try {
        await _playlistService.removeFromPlaylist(widget.playlist.id, item.id);
        await _loadPlaylistItems(); // Refresh the list
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Item removed from playlist'),
              backgroundColor: Colors.green,
            ),
          );
        }
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Error removing item: $e'),
              backgroundColor: Colors.red,
            ),
          );
        }
      }
    }
  }

  Future<void> _showDeletePlaylistConfirmation(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Playlist'),
        content: Text('Are you sure you want to delete "${widget.playlist.title}"? This action cannot be undone.'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(context).pop(true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('Delete'),
          ),
        ],
      ),
    );

    if (confirmed == true && mounted) {
      await _deletePlaylist();
    }
  }

  Future<void> _deletePlaylist() async {
    try {
      await _playlistService.deletePlaylist(widget.playlist.id);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Playlist deleted successfully'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop(); // Go back to playlist list
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting playlist: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
