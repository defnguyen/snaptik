import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:open_filex/open_filex.dart';
import 'package:share_plus/share_plus.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/features/library/bloc/library_bloc.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/features/library/view/media_detail_screen.dart';
import 'package:snaptik/features/library/widgets/media_info_dialog.dart';
import 'package:snaptik/features/library/widgets/rename_dialog.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class LibraryGridItem extends StatelessWidget {
  final LibraryItem item;

  const LibraryGridItem({super.key, required this.item});

  // --- Actions ---

  void _viewItem(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => MediaDetailScreen(item: item),
      ),
    );
  }

  void _showInfo(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => MediaInfoDialog(item: item),
    );
  }

  Future<void> _renameItem(BuildContext context) async {
    final libraryBloc = context.read<LibraryBloc>();
    final l10n = AppLocalizations.of(context)!;

    final String? newName = await showDialog<String>(
      context: context,
      builder: (_) => RenameDialog(currentName: item.name), // Pass current name
    );

    if (newName != null && newName.isNotEmpty && newName != item.name) {
      libraryBloc.add(RenameLibraryItem(itemId: item.id, newName: newName));
      // Optional: Show loading/snackbar for rename operation
    }
  }

  void _shareItem(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    // Use Share.shareXFiles for sharing files
    Share.shareXFiles(
      [XFile(item.path)],
      text: l10n
          .share, // Optional: Share text like "Shared from Threads Downloader"
    );
  }

  void _deleteItem(BuildContext context) {
    final libraryBloc = context.read<LibraryBloc>();
    final l10n = AppLocalizations.of(context)!;

    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: Text(l10n.deleteConfirmationTitle),
        content: Text(l10n.deleteConfirmationMessage),
        actions: [
          TextButton(
            child: Text(l10n.cancel),
            onPressed: () => Navigator.of(ctx).pop(),
          ),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: Text(l10n.delete),
            onPressed: () {
              libraryBloc.add(DeleteLibraryItem(itemId: item.id));
              Navigator.of(ctx).pop();
              // Optional: Show snackbar confirming deletion initiation
            },
          ),
        ],
      ),
    );
  }

  // --- Build ---

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return InkWell(
      onTap: () => _viewItem(context),
      onLongPress: () {
        // Show menu on long press
        _showContextMenu(context, l10n);
      },
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 1.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
              AppConstants.defaultRadius / 2), // Slightly smaller radius
        ),
        child: GridTile(
          footer: _buildFooter(context), // Optional footer for name/type
          child: Stack(
            fit: StackFit.expand,
            children: [
              _buildThumbnail(),
              if (item.type == MediaType.video) _buildVideoOverlay(),
              if (item.type == MediaType.voice || item.type == MediaType.mp3)
                _buildAudioOverlay(),
              Positioned(
                // Menu button
                top: 4,
                right: 4,
                child: _buildMenuButton(context, l10n),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildThumbnail() {
    // Prioritize generated thumbnail path if available
    if (item.thumbnailPath != null && File(item.thumbnailPath!).existsSync()) {
      return Image.file(
        File(item.thumbnailPath!),
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) => _buildPlaceholderIcon(),
      );
    }
    // For videos/audio without specific thumbnail, show placeholder
    if (item.type == MediaType.video ||
        item.type == MediaType.voice ||
        item.type == MediaType.mp3) {
      return _buildPlaceholderIcon(size: 40);
    }
    // For photos, attempt to load the image file directly
    if (item.type == MediaType.photo) {
      return Image.file(
        File(item.path),
        fit: BoxFit.cover,
        // Add memory caching parameters if needed for performance
        // cacheHeight: 200, // Example constraint
        errorBuilder: (context, error, stackTrace) => _buildPlaceholderIcon(),
      );
    }
    // Fallback placeholder
    return _buildPlaceholderIcon();
  }

  Widget _buildPlaceholderIcon({double size = 50.0}) {
    IconData iconData;
    switch (item.type) {
      case MediaType.photo:
        iconData = Icons.photo;
        break;
      case MediaType.video:
        iconData = Icons.movie;
        break;
      case MediaType.voice:
      case MediaType.mp3:
        iconData = Icons.music_note;
        break;
    }
    return Center(
      child: Icon(
        iconData,
        size: size,
        color: Colors.grey[400],
      ),
    );
  }

  Widget _buildVideoOverlay() {
    return Center(
      child: Icon(
        Icons.play_circle_outline,
        color: Colors.white.withOpacity(0.8),
        size: 50.0,
      ),
    );
  }

  Widget _buildAudioOverlay() {
    return Center(
      child: Icon(
        Icons.graphic_eq, // Or Icons.volume_up
        color: Colors.white.withOpacity(0.7),
        size: 40.0,
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return GridTileBar(
      backgroundColor: Colors.black45,
      title: Text(
        item.name,
        style: const TextStyle(fontSize: 10, color: Colors.white),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      // Optional: subtitle for date/size?
      // subtitle: Text(
      //    DateFormatter.formatDateTime(item.dateAdded, format: 'yyyy-MM-dd'),
      //    style: TextStyle(fontSize: 9, color: Colors.white70),
      // ),
    );
  }

  Widget _buildMenuButton(BuildContext context, AppLocalizations l10n) {
    return Material(
      // Wrap with Material for InkWell effect if needed
      color: Colors.black.withOpacity(0.3),
      borderRadius: BorderRadius.circular(15),
      child: InkWell(
        borderRadius: BorderRadius.circular(15),
        onTap: () => _showContextMenu(context, l10n),
        child: const Padding(
          padding: EdgeInsets.all(4.0),
          child: Icon(Icons.more_vert, color: Colors.white, size: 18),
        ),
      ),
    );
  }

  // --- Context Menu ---
  void _showContextMenu(BuildContext context, AppLocalizations l10n) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    // Get the position of the button or the item itself to show the menu nearby
    final RenderBox itemBox = context.findRenderObject() as RenderBox;
    final Offset position =
        itemBox.localToGlobal(Offset.zero, ancestor: overlay);

    showMenu<String>(
      context: context,
      position: RelativeRect.fromLTRB(
        position.dx + itemBox.size.width - 40, // Position near top right
        position.dy + 10,
        position.dx + itemBox.size.width,
        position.dy + itemBox.size.height,
      ),
      items: <PopupMenuEntry<String>>[
        PopupMenuItem<String>(
            value: 'view',
            child: ListTile(
                leading: const Icon(Icons.visibility), title: Text(l10n.view))),
        PopupMenuItem<String>(
            value: 'info',
            child: ListTile(
                leading: const Icon(Icons.info_outline),
                title: Text(l10n.info))),
        PopupMenuItem<String>(
            value: 'rename',
            child: ListTile(
                leading: const Icon(Icons.edit), title: Text(l10n.rename))),
        PopupMenuItem<String>(
            value: 'share',
            child: ListTile(
                leading: const Icon(Icons.share), title: Text(l10n.share))),
        const PopupMenuDivider(),
        PopupMenuItem<String>(
            value: 'delete',
            child: ListTile(
                leading: Icon(Icons.delete_outline, color: Colors.red.shade700),
                title: Text(l10n.delete,
                    style: TextStyle(color: Colors.red.shade700)))),
      ],
      elevation: 8.0, // Standard elevation
    ).then((String? result) {
      // Handle the selected action
      if (result == null) return; // User dismissed menu
      switch (result) {
        case 'view':
          _viewItem(context);
          break;
        case 'info':
          _showInfo(context);
          break;
        case 'rename':
          _renameItem(context);
          break;
        case 'share':
          _shareItem(context);
          break;
        case 'delete':
          _deleteItem(context);
          break;
      }
    });
  }
}
