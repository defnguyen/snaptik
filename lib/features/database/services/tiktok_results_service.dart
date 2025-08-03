import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snaptik/features/database/models/tiktok_result.dart';
import 'package:snaptik/features/home/models/download_result.dart';
import 'package:uuid/uuid.dart';

class TikTokResultsService {
  final SharedPreferences _prefs;
  static const String _tikTokResultsKey = 'tiktok_results';
  static const String _playlistsKey = 'playlists';
  final Uuid _uuid = const Uuid();

  TikTokResultsService(this._prefs);

  // Save a new TikTok result
  Future<String> saveTikTokResult(DownloadResult downloadResult) async {
    try {
      final uniqueId = _uuid.v4();
      final tikTokResult = TikTokResult.fromDownloadResult(downloadResult, uniqueId);
      
      final existingResults = await loadTikTokResults();
      
      // Check if this video already exists (by video ID)
      final existingIndex = existingResults.indexWhere(
        (result) => result.videoId == downloadResult.id
      );
      
      if (existingIndex != -1) {
        // Update existing result
        existingResults[existingIndex] = tikTokResult.copyWith(
          id: existingResults[existingIndex].id, // Keep original ID
          dateAdded: DateTime.now(), // Update fetch date
        );
      } else {
        // Add new result
        existingResults.add(tikTokResult);
      }
      
      await _saveTikTokResults(existingResults);
      return tikTokResult.id;
    } catch (e) {
      print("Error saving TikTok result: $e");
      rethrow;
    }
  }

  // Load all TikTok results
  Future<List<TikTokResult>> loadTikTokResults() async {
    try {
      final List<String>? resultsJson = _prefs.getStringList(_tikTokResultsKey);
      if (resultsJson == null) {
        return [];
      }

      return resultsJson
          .map((jsonString) => TikTokResult.fromJson(jsonDecode(jsonString)))
          .toList();
    } catch (e) {
      print("Error loading TikTok results: $e");
      return [];
    }
  }

  // Get results by author
  Future<List<TikTokResult>> getResultsByAuthor(String uniqueId) async {
    final allResults = await loadTikTokResults();
    return allResults.where((result) => result.uniqueId == uniqueId).toList();
  }

  // Get all unique authors
  Future<List<TikTokAuthor>> getAllAuthors() async {
    final allResults = await loadTikTokResults();
    final Map<String, TikTokAuthor> authorsMap = {};
    
    for (final result in allResults) {
      if (!authorsMap.containsKey(result.uniqueId)) {
        authorsMap[result.uniqueId] = TikTokAuthor(
          uniqueId: result.uniqueId,
          author: result.author,
        );
      }
    }
    
    return authorsMap.values.toList();
  }

  // Delete a TikTok result
  Future<bool> deleteTikTokResult(String id) async {
    try {
      final existingResults = await loadTikTokResults();
      final updatedResults = existingResults.where((result) => result.id != id).toList();

      if (updatedResults.length != existingResults.length) {
        await _saveTikTokResults(updatedResults);
        return true;
      }
      return false;
    } catch (e) {
      print("Error deleting TikTok result: $e");
      return false;
    }
  }

  // Delete all results by author
  Future<bool> deleteResultsByAuthor(String uniqueId) async {
    try {
      final existingResults = await loadTikTokResults();
      final updatedResults = existingResults.where((result) => result.uniqueId != uniqueId).toList();

      if (updatedResults.length != existingResults.length) {
        await _saveTikTokResults(updatedResults);
        return true;
      }
      return false;
    } catch (e) {
      print("Error deleting results by author: $e");
      return false;
    }
  }

  // Toggle favorite status
  Future<bool> toggleFavorite(String id) async {
    try {
      final existingResults = await loadTikTokResults();
      final index = existingResults.indexWhere((result) => result.id == id);
      
      if (index != -1) {
        existingResults[index] = existingResults[index].copyWith(
          isFavorite: !existingResults[index].isFavorite,
        );
        await _saveTikTokResults(existingResults);
        return true;
      }
      return false;
    } catch (e) {
      print("Error toggling favorite: $e");
      return false;
    }
  }

  // Get favorite results
  Future<List<TikTokResult>> getFavoriteResults() async {
    final allResults = await loadTikTokResults();
    return allResults.where((result) => result.isFavorite).toList();
  }

  // Clear all results
  Future<void> clearAllResults() async {
    await _prefs.remove(_tikTokResultsKey);
  }

  // Internal helper to save results
  Future<void> _saveTikTokResults(List<TikTokResult> results) async {
    try {
      // Sort by date added (newest first)
      results.sort((a, b) => b.dateAdded.compareTo(a.dateAdded));
      
      final List<String> encodedResults = results
          .map((result) => jsonEncode(result.toJson()))
          .toList();
      
      await _prefs.setStringList(_tikTokResultsKey, encodedResults);
    } catch (e) {
      print("Error saving TikTok results: $e");
      rethrow;
    }
  }
}

// Helper class for author information
class TikTokAuthor {
  final String uniqueId;
  final String author;

  const TikTokAuthor({
    required this.uniqueId,
    required this.author,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TikTokAuthor &&
          runtimeType == other.runtimeType &&
          uniqueId == other.uniqueId;

  @override
  int get hashCode => uniqueId.hashCode;
}
