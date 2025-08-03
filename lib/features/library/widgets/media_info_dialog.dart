import 'dart:io';
import 'package:flutter/material.dart';
import 'package:snaptik/core/helpers/date_formatter.dart';
import 'package:snaptik/core/helpers/file_size_formatter.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class MediaInfoDialog extends StatelessWidget {
  final LibraryItem item;

  const MediaInfoDialog({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Fetch file size again in case it changed or wasn't stored correctly
    // This is optional, can rely on stored size
    // Future<int> getSize() async { try { return await File(item.path).length(); } catch (_) { return item.size; } }

    return AlertDialog(
      title: Text(l10n.mediaInfoTitle),
      content: SingleChildScrollView(
        // In case content overflows
        child: ListBody(
          // Use ListBody for column-like structure inside dialog
          children: <Widget>[
            _buildInfoRow(l10n.fileName, item.name),
            _buildInfoRow(l10n.filePath, item.path),
            _buildInfoRow(
                l10n.dateAdded, DateFormatter.formatDateTime(item.dateAdded)),
            _buildInfoRow(
                l10n.fileSize, FileSizeFormatter.formatBytes(item.size)),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(l10n.ok),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const SizedBox(height: 2),
          SelectableText(
            // Allow copying the value
            value,
            style: const TextStyle(fontSize: 14),
          ),
          // Divider(), // Optional divider between rows
        ],
      ),
    );
  }
}
