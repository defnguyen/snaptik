import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/features/database/models/tiktok_result.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class AuthorsTab extends StatefulWidget {
  const AuthorsTab({super.key});

  @override
  State<AuthorsTab> createState() => _AuthorsTabState();
}

class _AuthorsTabState extends State<AuthorsTab> {
  late TikTokResultsService _tikTokResultsService;
  List<TikTokAuthor> _authors = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tikTokResultsService = context.read<TikTokResultsService>();
    _loadAuthors();
  }

  Future<void> _loadAuthors() async {
    setState(() => _isLoading = true);
    try {
      final authors = await _tikTokResultsService.getAllAuthors();
      setState(() {
        _authors = authors;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading authors: $e')),
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
          : _authors.isEmpty
              ? _buildEmptyState(context, l10n)
              : _buildAuthorsList(),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.person_outline,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noAuthorsYet,
            style: const TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 8),
          Text(
            l10n.downloadSomethingFirst,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildAuthorsList() {
    return RefreshIndicator(
      onRefresh: _loadAuthors,
      child: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: _authors.length,
        itemBuilder: (context, index) {
          final author = _authors[index];
          return _buildAuthorCard(author);
        },
      ),
    );
  }

  Widget _buildAuthorCard(TikTokAuthor author) {
    return Card(
      margin: const EdgeInsets.only(bottom: 12),
      child: ListTile(
        title: Text(
          author.author,
          style: const TextStyle(fontWeight: FontWeight.bold),
        ),
        subtitle: Text('@${author.uniqueId}'),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => _navigateToAuthorDetail(author),
      ),
    );
  }

  void _navigateToAuthorDetail(TikTokAuthor author) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AuthorDetailScreen(author: author),
      ),
    );
  }
}

class AuthorDetailScreen extends StatefulWidget {
  final TikTokAuthor author;

  const AuthorDetailScreen({super.key, required this.author});

  @override
  State<AuthorDetailScreen> createState() => _AuthorDetailScreenState();
}

class _AuthorDetailScreenState extends State<AuthorDetailScreen> {
  late TikTokResultsService _tikTokResultsService;
  List<TikTokResult> _authorResults = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _tikTokResultsService = context.read<TikTokResultsService>();
    _loadAuthorResults();
  }

  Future<void> _loadAuthorResults() async {
    setState(() => _isLoading = true);
    try {
      final results = await _tikTokResultsService.getResultsByAuthor(widget.author.uniqueId);
      setState(() {
        _authorResults = results;
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error loading author results: $e')),
        );
      }
    }
  }

  Future<void> _showDeleteConfirmation(BuildContext context) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Author'),
        content: Text('Are you sure you want to delete all media from ${widget.author.author}? This action cannot be undone.'),
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
      await _deleteAuthor();
    }
  }

  Future<void> _deleteAuthor() async {
    try {
      await _tikTokResultsService.deleteResultsByAuthor(widget.author.uniqueId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Author and all media deleted successfully'),
            backgroundColor: Colors.green,
          ),
        );
        Navigator.of(context).pop(); // Go back to authors list
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error deleting author: $e'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.author.author),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _showDeleteConfirmation(context),
          ),
        ],
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : _authorResults.isEmpty
              ? _buildEmptyState(context, l10n)
              : _buildResultsList(),
    );
  }

  Widget _buildEmptyState(BuildContext context, AppLocalizations l10n) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.video_library_outlined,
            size: 64,
            color: Theme.of(context).colorScheme.primary.withOpacity(0.5),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.noVideosFromAuthor,
            style: TextStyle(fontSize: 20),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildResultsList() {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 12,
        mainAxisSpacing: 12,
        childAspectRatio: 0.8,
      ),
      itemCount: _authorResults.length,
      itemBuilder: (context, index) {
        final result = _authorResults[index];
        return _buildResultCard(result);
      },
    );
  }

  Widget _buildResultCard(TikTokResult result) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surfaceVariant,
              ),
              child: result.thumbnail.isNotEmpty
                  ? CachedNetworkImage(
                      imageUrl: result.thumbnail,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) => const Icon(
                        Icons.video_library,
                        size: 48,
                      ),
                    )
                  : const Icon(
                      Icons.video_library,
                      size: 48,
                    ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  result.title,
                  style: Theme.of(context).textTheme.bodySmall,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '${result.medias.length} files',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Theme.of(context).colorScheme.onSurface.withOpacity(0.7),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
