import 'package:flutter/material.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class RenameDialog extends StatefulWidget {
  final String currentName;

  const RenameDialog({super.key, required this.currentName});

  @override
  State<RenameDialog> createState() => _RenameDialogState();
}

class _RenameDialogState extends State<RenameDialog> {
  late TextEditingController _controller;
  final _formKey = GlobalKey<FormState>(); // For validation

  @override
  void initState() {
    super.initState();
    // Initialize controller with current name without extension for easier editing
    _controller =
        TextEditingController(text: _stripExtension(widget.currentName));
    // Select the text when dialog opens
    _controller.selection =
        TextSelection(baseOffset: 0, extentOffset: _controller.text.length);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  String _stripExtension(String fileName) {
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex != -1) {
      return fileName.substring(0, dotIndex);
    }
    return fileName; // No extension found
  }

  String _getExtension(String fileName) {
    final dotIndex = fileName.lastIndexOf('.');
    if (dotIndex != -1 && dotIndex < fileName.length - 1) {
      return fileName.substring(dotIndex); // Includes the dot
    }
    return ''; // No extension found
  }

  void _submit() {
    if (_formKey.currentState!.validate()) {
      final newNameWithoutExt = _controller.text.trim();
      final extension = _getExtension(widget.currentName);
      // Return the new name *with* the original extension
      Navigator.of(context).pop('$newNameWithoutExt$extension');
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return AlertDialog(
      title: Text(l10n.renameMediaTitle),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _controller,
          autofocus: true, // Focus the input field automatically
          decoration: InputDecoration(
            hintText: l10n.enterNewName,
            // Show original extension as suffix? Or just hint?
            // suffixText: _getExtension(widget.currentName),
            // border: OutlineInputBorder(), // Use default theme's input decoration
          ),
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return 'Name cannot be empty'; // Localize
            }
            // Add more validation if needed (e.g., invalid characters)
            final invalidChars = RegExp(r'[\\/*?:"<>|]');
            if (invalidChars.hasMatch(value.trim())) {
              return 'Invalid characters used'; // Localize
            }
            return null; // Valid
          },
          onFieldSubmitted: (_) =>
              _submit(), // Allow submission via keyboard action
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: Text(l10n.cancel),
          onPressed: () {
            Navigator.of(context).pop(); // Return null on cancel
          },
        ),
        TextButton(
          child: Text(l10n.save),
          onPressed: _submit,
        ),
      ],
    );
  }
}
