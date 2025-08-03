import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/core/services/download_service.dart';
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:snaptik/core/services/permission_service.dart';
import 'package:snaptik/core/widgets/progress_dialog.dart';
import 'package:snaptik/features/home/bloc/file_download/file_download_cubit.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:snaptik/features/playlist/services/playlist_service.dart';
import 'package:snaptik/features/playlist/models/playlist.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:uuid/uuid.dart';

class MediaItemDetailScreen extends StatefulWidget {
  final DownloadResult downloadResult;
  final int initialIndex;

  const MediaItemDetailScreen({
    super.key,
    required this.downloadResult,
    this.initialIndex = 0,
  });

  @override
  State<MediaItemDetailScreen> createState() => _MediaItemDetailScreenState();
}

class _MediaItemDetailScreenState extends State<MediaItemDetailScreen> {
  late PageController _pageController;
  int _currentIndex = 0;
  BuildContext? _dialogContext;
  List<Playlist> _playlists = [];
  bool _isInAnyPlaylist = false;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.initialIndex;
    _pageController = PageController(initialPage: widget.initialIndex);
    _loadPlaylists();
  }

  Future<void> _loadPlaylists() async {
    try {
      final playlistService = context.read<PlaylistService>();
      final playlists = await playlistService.loadPlaylists();
      setState(() {
        _playlists = playlists;
        _isInAnyPlaylist = playlists.any((playlist) =>
            playlist.tikTokResultIds.contains(widget.downloadResult.id));
      });
    } catch (e) {
      // Handle error silently for now
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  List<MediaItem> get _allMediaItems {
    return [
      ...widget.downloadResult.videos,
      ...widget.downloadResult.images,
      ...widget.downloadResult.audios,
    ];
  }

  MediaItem get _currentMediaItem => _allMediaItems[_currentIndex];

  String _getQualityBadge(String quality) {
    switch (quality.toLowerCase()) {
      case 'hd_no_watermark':
        return 'HD - NO WATERMARK';
      case 'no_watermark':
        return 'NO WATERMARK';
      case 'watermark':
        return 'WATERMARK';
      case 'audio':
        return 'MUSIC';
      default:
        return quality.toUpperCase();
    }
  }

  void _startDirectDownload(BuildContext context, MediaType type, String urlToDownload) {
    final cubit = context.read<FileDownloadCubit>();
    final l10n = AppLocalizations.of(context)!;
    final String fileNameHint = "${type.name}_${const Uuid().v4().substring(0, 8)}";

    showProgressDialog(context, cubit.progressStream, l10n.downloading);
    _dialogContext = context;

    cubit.startDownload(
      url: urlToDownload,
      type: type,
      fileNameHint: fileNameHint,
      context: context,
    );
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return BlocProvider(
      create: (context) => FileDownloadCubit(
        permissionService: context.read<PermissionService>(),
        downloadService: DownloadService(
          context.read<MediaStorageService>(),
        ),
        apiClient: context.read<ApiClient>(),
      ),
      child: BlocListener<FileDownloadCubit, FileDownloadState>(
        listener: (context, state) {
          if (state is FileDownloadSuccess || state is FileDownloadFailure) {
            dismissProgressDialog(_dialogContext ?? context);
            _dialogContext = null;
          }

          if (state is FileDownloadSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(l10n.downloadSuccess),
                backgroundColor: Colors.green,
                duration: AppConstants.snackBarDuration,
              ),
            );
          } else if (state is FileDownloadFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("${l10n.downloadError}: ${state.error}"),
                backgroundColor: Colors.orange,
                duration: AppConstants.snackBarDuration,
              ),
            );
          }
        },
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            title: Text(
              widget.downloadResult.author,
              style: const TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                icon: const Icon(Icons.delete, color: Colors.white),
                onPressed: () => _showDeleteConfirmation(context),
              ),
            ],
          ),
          body: Column(
            children: [
              // Media PageView
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  itemCount: _allMediaItems.length,
                  itemBuilder: (context, index) {
                    final mediaItem = _allMediaItems[index];
                    return _buildMediaView(mediaItem);
                  },
                ),
              ),
              
              // Page Indicator
              if (_allMediaItems.length > 1)
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      _allMediaItems.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: index == _currentIndex
                              ? Colors.white
                              : Colors.white.withOpacity(0.4),
                        ),
                      ),
                    ),
                  ),
                ),
              
              // Media Info and Controls
              Container(
                color: Colors.black,
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Title
                    Text(
                      widget.downloadResult.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 16),
                    
                    // Download Buttons
                    _buildDownloadButtons(context),
                    
                    const SizedBox(height: 16),

                    // Playlist buttons
                    Row(
                      children: [
                        Expanded(
                          child: ElevatedButton.icon(
                            icon: const Icon(Icons.playlist_add),
                            label: const Text('Add to Playlist'),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blue,
                              foregroundColor: Colors.white,
                            ),
                            onPressed: () => _showAddToPlaylistDialog(context),
                          ),
                        ),
                        if (_isInAnyPlaylist) ...[
                          const SizedBox(width: 8),
                          Expanded(
                            child: ElevatedButton.icon(
                              icon: const Icon(Icons.playlist_remove),
                              label: const Text('Remove from Playlist'),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                              ),
                              onPressed: () => _showRemoveFromPlaylistDialog(context),
                            ),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMediaView(MediaItem mediaItem) {
    return Center(
      child: CachedNetworkImage(
        imageUrl: widget.downloadResult.thumbnail,
        fit: BoxFit.contain,
        placeholder: (context, url) => const CircularProgressIndicator(
          color: Colors.white,
        ),
        errorWidget: (context, url, error) => Container(
          color: Colors.grey[800],
          child: const Icon(
            Icons.broken_image,
            color: Colors.white,
            size: 64,
          ),
        ),
      ),
    );
  }

  Widget _buildDownloadButtons(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final currentMedia = _currentMediaItem;
    
    return BlocBuilder<FileDownloadCubit, FileDownloadState>(
      builder: (context, state) {
        final bool isDownloading = state is FileDownloadInProgress;
        
        return Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            // Video button
            if (currentMedia.type == 'video')
              ElevatedButton.icon(
                icon: const Icon(Icons.videocam),
                label: Text(l10n.downloadVideo),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  foregroundColor: Colors.white,
                ),
                onPressed: isDownloading ? null : () => _startDirectDownload(
                  context, MediaType.video, currentMedia.url),
              ),
            
            // Video HD button (if HD quality available)
            if (currentMedia.type == 'video' && currentMedia.quality.contains('hd'))
              ElevatedButton.icon(
                icon: const Icon(Icons.hd),
                label: const Text('Video HD'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                onPressed: isDownloading ? null : () => _startDirectDownload(
                  context, MediaType.video, currentMedia.url),
              ),
            
            // Music button
            ElevatedButton.icon(
              icon: const Icon(Icons.music_note),
              label: const Text('Music'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                foregroundColor: Colors.white,
              ),
              onPressed: isDownloading ? null : () => _startDirectDownload(
                context, MediaType.mp3, currentMedia.url),
            ),
          ],
        );
      },
    );
  }

  Future<void> _showDeleteConfirmation(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Media'),
        content: const Text('Are you sure you want to delete this media item? This action cannot be undone.'),
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
      // TODO: Implement delete functionality
      Navigator.of(context).pop();
    }
  }

  Future<void> _showAddToPlaylistDialog(BuildContext context) async {
    if (_playlists.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('No playlists available. Create a playlist first.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    final selectedPlaylist = await showDialog<Playlist>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Add to Playlist'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: _playlists.length,
            itemBuilder: (context, index) {
              final playlist = _playlists[index];
              final isAlreadyAdded = playlist.tikTokResultIds.contains(widget.downloadResult.id);
              return ListTile(
                title: Text(playlist.title),
                subtitle: Text('${playlist.tikTokResultIds.length} items'),
                trailing: isAlreadyAdded
                    ? const Icon(Icons.check, color: Colors.green)
                    : null,
                onTap: isAlreadyAdded
                    ? null
                    : () => Navigator.of(context).pop(playlist),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );

    if (selectedPlaylist != null && mounted) {
      await _addToPlaylist(selectedPlaylist);
    }
  }

  Future<void> _addToPlaylist(Playlist playlist) async {
    try {
      final playlistService = context.read<PlaylistService>();
      await playlistService.addToPlaylist(playlist.id, widget.downloadResult.id);
      await _loadPlaylists(); // Refresh playlist status
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Added to "${playlist.title}"'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error adding to playlist: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  Future<void> _showRemoveFromPlaylistDialog(BuildContext context) async {
    final playlistsContainingItem = _playlists
        .where((playlist) => playlist.tikTokResultIds.contains(widget.downloadResult.id))
        .toList();

    if (playlistsContainingItem.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('This item is not in any playlist.'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    final selectedPlaylist = await showDialog<Playlist>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Remove from Playlist'),
        content: SizedBox(
          width: double.maxFinite,
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: playlistsContainingItem.length,
            itemBuilder: (context, index) {
              final playlist = playlistsContainingItem[index];
              return ListTile(
                title: Text(playlist.title),
                subtitle: Text('${playlist.tikTokResultIds.length} items'),
                onTap: () => Navigator.of(context).pop(playlist),
              );
            },
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );

    if (selectedPlaylist != null && mounted) {
      await _removeFromPlaylist(selectedPlaylist);
    }
  }

  Future<void> _removeFromPlaylist(Playlist playlist) async {
    try {
      final playlistService = context.read<PlaylistService>();
      await playlistService.removeFromPlaylist(playlist.id, widget.downloadResult.id);
      await _loadPlaylists(); // Refresh playlist status
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Removed from "${playlist.title}"'),
            backgroundColor: Colors.green,
          ),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error removing from playlist: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
