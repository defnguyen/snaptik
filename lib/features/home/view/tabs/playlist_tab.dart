import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/features/database/models/tiktok_result.dart';
import 'package:snaptik/features/playlist/services/playlist_service.dart';
import 'package:snaptik/features/playlist/models/playlist.dart';
import 'package:snaptik/features/playlist/view/playlist_detail_screen.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class PlaylistTab extends StatefulWidget {
  const PlaylistTab({super.key});

  @override
  State<PlaylistTab> createState() => _PlaylistTabState();
}

class _PlaylistTabState extends State<PlaylistTab> {
  late PlaylistService _playlistService;
  List<Playlist> _playlists = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _initializeService();
  }

  Future<void> _initializeService() async {
    _playlistService = context.read<PlaylistService>();
    await _loadPlaylists();
  }

  Future<void> _loadPlaylists() async {
    setState(() => _isLoading = true);
    try {
      final playlists = await _playlistService.loadPlaylists();
      setState(() {
        _playlists = playlists;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading playlists: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: null,
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _playlists.isEmpty
              ? _buildEmptyState(context, l10n)
              : _buildPlaylistGrid(context, l10n),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showCreatePlaylistModal(context),
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.playlist_play,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          const Text(
            'No playlists yet', // TODO: Use l10n.noPlaylistsYet
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            'Create your first playlist to organize your downloads', // TODO: Use l10n.createFirstPlaylist
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 24),
          ElevatedButton.icon(
            onPressed: () => _showCreatePlaylistModal(context),
            icon: const Icon(Icons.add),
            label: const Text('Create Playlist'), // TODO: Use l10n.createPlaylist
          ),
        ],
      ),
    );
  }

  Widget _buildPlaylistGrid(BuildContext context, AppLocalizations l10n) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          childAspectRatio: 0.8,
        ),
        itemCount: _playlists.length,
        itemBuilder: (context, index) {
          final playlist = _playlists[index];
          return _buildPlaylistCard(playlist);
        },
      ),
    );
  }

  Widget _buildPlaylistCard(Playlist playlist) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () => _navigateToPlaylistDetail(playlist),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail area
            Expanded(
              flex: 3,
              child: Container(
                width: double.infinity,
                color: Theme.of(context).colorScheme.primary.withOpacity(0.1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.playlist_play,
                      size: 48,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      '${playlist.tikTokResultIds.length} items',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
            ),
            // Info area
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      playlist.title,
                      style: Theme.of(context).textTheme.titleMedium?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 4),
                    if (playlist.description.isNotEmpty)
                      Text(
                        playlist.description,
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
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

  void _navigateToPlaylistDetail(Playlist playlist) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => PlaylistDetailScreen(playlist: playlist),
      ),
    ).then((_) => _loadPlaylists()); // Refresh when returning
  }

  void _showCreatePlaylistModal(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => CreatePlaylistModal(
        onPlaylistCreated: _loadPlaylists,
      ),
    );
  }
}

class CreatePlaylistModal extends StatefulWidget {
  final VoidCallback? onPlaylistCreated;

  const CreatePlaylistModal({
    super.key,
    this.onPlaylistCreated,
  });

  @override
  State<CreatePlaylistModal> createState() => _CreatePlaylistModalState();
}

class _CreatePlaylistModalState extends State<CreatePlaylistModal> {
  final _titleController = TextEditingController();
  final _descriptionController = TextEditingController();
  final List<String> _selectedTikTokIds = [];
  List<TikTokResult> _availableResults = [];
  bool _isLoading = false;
  bool _isCreating = false;

  @override
  void initState() {
    super.initState();
    _loadAvailableResults();
    _titleController.addListener(() => setState(() {}));
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _loadAvailableResults() async {
    setState(() => _isLoading = true);
    try {
      final tikTokService = context.read<TikTokResultsService>();
      final results = await tikTokService.loadTikTokResults();
      setState(() {
        _availableResults = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading media: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);
    final keyboardHeight = MediaQuery.of(context).viewInsets.bottom;
    final screenHeight = MediaQuery.of(context).size.height;
    final maxHeight = screenHeight * 0.9; // Use 90% of screen height

    return Container(
      padding: EdgeInsets.only(bottom: keyboardHeight),
      child: Container(
        constraints: BoxConstraints(
          maxHeight: maxHeight - keyboardHeight,
        ),
        decoration: BoxDecoration(
          color: theme.colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Fixed header section
            Padding(
              padding: const EdgeInsets.all(24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Drag handle
                  Center(
                    child: Container(
                      width: 40,
                      height: 4,
                      margin: const EdgeInsets.only(bottom: 16),
                      decoration: BoxDecoration(
                        color: theme.dividerColor,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                  ),
                  Text(
                    l10n.createPlaylist,
                    style: theme.textTheme.headlineSmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 24),
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: l10n.playlistTitle,
                      hintText: l10n.playlistTitleHint,
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextField(
                    controller: _descriptionController,
                    decoration: InputDecoration(
                      labelText: l10n.playlistDescription,
                      hintText: l10n.playlistDescriptionHint,
                      border: const OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    l10n.chooseFiles,
                    style: theme.textTheme.titleMedium,
                  ),
                  const SizedBox(height: 8),
                ],
              ),
            ),

            // Scrollable media selection section
            Flexible(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                decoration: BoxDecoration(
                  border: Border.all(color: theme.dividerColor),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: _isLoading
                    ? const SizedBox(
                        height: 200,
                        child: Center(child: CircularProgressIndicator()),
                      )
                    : _availableResults.isEmpty
                        ? SizedBox(
                            height: 200,
                            child: Center(
                              child: Text(
                                'No media available',
                                style: theme.textTheme.bodyMedium?.copyWith(
                                  color: theme.colorScheme.onSurface.withOpacity(0.7),
                                ),
                              ),
                            ),
                          )
                        : ConstrainedBox(
                            constraints: const BoxConstraints(
                              minHeight: 100,
                              maxHeight: 300,
                            ),
                            child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: _availableResults.length,
                              itemBuilder: (context, index) {
                                final result = _availableResults[index];
                                final isSelected = _selectedTikTokIds.contains(result.id);
                                return CheckboxListTile(
                                  value: isSelected,
                                  onChanged: (selected) {
                                    setState(() {
                                      if (selected == true) {
                                        _selectedTikTokIds.add(result.id);
                                      } else {
                                        _selectedTikTokIds.remove(result.id);
                                      }
                                    });
                                  },
                                  title: Text(
                                    result.author,
                                    style: theme.textTheme.bodyMedium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  subtitle: Text(
                                    result.title,
                                    style: theme.textTheme.bodySmall,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  secondary: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: CachedNetworkImage(
                                      imageUrl: result.thumbnail,
                                      width: 40,
                                      height: 40,
                                      fit: BoxFit.cover,
                                      errorWidget: (context, url, error) => Container(
                                        width: 40,
                                        height: 40,
                                        color: theme.colorScheme.primary.withOpacity(0.1),
                                        child: Icon(
                                          Icons.video_library,
                                          color: theme.colorScheme.primary,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
              ),
            ),

            // Fixed bottom buttons
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () => Navigator.pop(context),
                      child: Text(l10n.cancel),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: _titleController.text.isNotEmpty && !_isCreating
                          ? () => _createPlaylist(context)
                          : null,
                      child: _isCreating
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: Colors.white,
                              ),
                            )
                          : Text(l10n.createPlaylistButton),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _createPlaylist(BuildContext context) async {
    if (_titleController.text.isEmpty) return;

    setState(() => _isCreating = true);

    try {
      final playlistService = context.read<PlaylistService>();
      await playlistService.createPlaylist(
        title: _titleController.text.trim(),
        description: _descriptionController.text.trim(),
        tikTokResultIds: _selectedTikTokIds,
      );

      if (mounted) {
        Navigator.pop(context);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Playlist created successfully!'),
            backgroundColor: Colors.green,
          ),
        );
        widget.onPlaylistCreated?.call();
      }
    } catch (e) {
      setState(() => _isCreating = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error creating playlist: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }
}
