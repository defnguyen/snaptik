import 'dart:convert';
import 'dart:io';
import 'package:path/path.dart' as p; // Import path package
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/features/library/models/library_item.dart';

// Simple implementation using SharedPreferences.
// For larger scale, consider Hive or sqflite.
class MediaStorageService {
  final SharedPreferences _prefs;

  MediaStorageService(this._prefs);

  // Load all items from storage
  Future<List<LibraryItem>> loadMediaItems() async {
    try {
      final List<String>? itemsJson =
          _prefs.getStringList(AppConstants.mediaLibraryKey);
      if (itemsJson == null) {
        return [];
      }

      final List<LibraryItem> items = itemsJson
          .map((jsonString) => LibraryItem.fromJson(jsonDecode(jsonString)))
          .toList();

      // Optional: Verify files still exist and remove entries if not
      List<LibraryItem> verifiedItems = [];
      for (var item in items) {
        final file = File(item.path);
        if (await file.exists()) {
          verifiedItems.add(item);
        } else {
          print("File not found, removing from library: ${item.path}");
        }
      }
      if (verifiedItems.length != items.length) {
        // Save the cleaned list back if changes were made
        await _saveItemsInternal(verifiedItems);
      }

      return verifiedItems;
    } catch (e) {
      print("Error loading media library: $e");
      // Consider clearing corrupted data
      // await _prefs.remove(AppConstants.mediaLibraryKey);
      return [];
    }
  }

  // Save a new item
  Future<void> saveMediaItem({
    required String id,
    required String path,
    required MediaType type,
    required DateTime dateAdded,
    String? thumbnailPath,
  }) async {
    try {
      final file = File(path);
      if (!await file.exists()) {
        print("Error saving media item: File does not exist at $path");
        return; // Or throw an exception
      }

      int size = await file.length();
      String name = p.basename(path); // Use path package for basename

      final newItem = LibraryItem(
        id: id, // Use provided ID (e.g., from UUID)
        name: name,
        path: path,
        type: type,
        dateAdded: dateAdded,
        size: size,
        thumbnailPath: thumbnailPath,
      );

      final currentItems = await loadMediaItems();
      // Prevent duplicates based on path? Or allow multiple downloads? Assuming allow.
      currentItems.add(newItem);
      await _saveItemsInternal(currentItems);
    } catch (e) {
      print("Error saving media item: $e");
    }
  }

  // Delete an item by ID
  Future<bool> deleteMediaItem(String id) async {
    try {
      final currentItems = await loadMediaItems();
      final itemToRemove = currentItems.firstWhere((item) => item.id == id,
          orElse: () => LibraryItem.empty()); // Find item

      if (itemToRemove.id.isEmpty) {
        print("Item with ID $id not found in library metadata.");
        return false; // Not found in metadata
      }

      // First, delete the actual file
      final file = File(itemToRemove.path);
      if (await file.exists()) {
        await file.delete();
        print("Deleted file: ${itemToRemove.path}");
      } else {
        print("File for deletion not found: ${itemToRemove.path}");
        // Still proceed to remove metadata entry
      }

      // Remove from the list and save
      currentItems.removeWhere((item) => item.id == id);
      await _saveItemsInternal(currentItems);
      return true;
    } catch (e) {
      print("Error deleting media item $id: $e");
      return false;
    }
  }

  // Rename an item
  Future<bool> renameMediaItem(String id, String newName) async {
    try {
      final currentItems = await loadMediaItems();
      final itemIndex = currentItems.indexWhere((item) => item.id == id);

      if (itemIndex == -1) {
        print("Item with ID $id not found for renaming.");
        return false;
      }

      final currentItem = currentItems[itemIndex];

      // Ensure new name has the correct extension
      final String currentExtension = p.extension(currentItem.name);
      final String newNameWithoutExtension =
          p.basenameWithoutExtension(newName);
      final String finalNewName = '$newNameWithoutExtension$currentExtension';

      // Rename the actual file
      final currentFile = File(currentItem.path);
      if (!await currentFile.exists()) {
        print("Original file not found for renaming: ${currentItem.path}");
        // Remove the metadata entry as the file is missing? Or just fail rename?
        // Let's fail the rename for now.
        return false;
      }

      final String newPath = p.join(p.dirname(currentItem.path), finalNewName);

      // Check if a file with the new name already exists (optional, handle collision)
      if (await File(newPath).exists() && newPath != currentItem.path) {
        print("Cannot rename: File with name $finalNewName already exists.");
        // Maybe add suffix like (1), (2) or return specific error
        return false; // Or throw specific exception
      }

      await currentFile.rename(newPath);
      print("Renamed file from ${currentItem.path} to $newPath");

      // Update the metadata
      final updatedItem =
          currentItem.copyWith(name: finalNewName, path: newPath);
      currentItems[itemIndex] = updatedItem;

      await _saveItemsInternal(currentItems);
      return true;
    } catch (e) {
      print("Error renaming media item $id: $e");
      return false;
    }
  }

  // Internal helper to save the list
  Future<void> _saveItemsInternal(List<LibraryItem> items) async {
    try {
      List<String> encodedItems =
          items.map((item) => jsonEncode(item.toJson())).toList();
      await _prefs.setStringList(AppConstants.mediaLibraryKey, encodedItems);
    } catch (e) {
      print("Error during internal save: $e");
      // Handle error appropriately
    }
  }

  // Get a single item (useful for detail view)
  Future<LibraryItem?> getMediaItem(String id) async {
    final items = await loadMediaItems();
    try {
      return items.firstWhere((item) => item.id == id);
    } catch (e) {
      return null; // Not found
    }
  }
}
