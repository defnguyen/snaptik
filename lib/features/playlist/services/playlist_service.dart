import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snaptik/features/playlist/models/playlist.dart';
import 'package:uuid/uuid.dart';

class PlaylistService {
  final SharedPreferences _prefs;
  static const String _playlistsKey = 'playlists';
  final Uuid _uuid = const Uuid();

  PlaylistService(this._prefs);

  // Create a new playlist
  Future<String> createPlaylist({
    required String title,
    required String description,
    required List<String> tikTokResultIds,
  }) async {
    try {
      final playlistId = _uuid.v4();
      final now = DateTime.now();
      
      final playlist = Playlist(
        id: playlistId,
        title: title,
        description: description,
        tikTokResultIds: tikTokResultIds,
        dateCreated: now,
        dateModified: now,
      );
      
      final existingPlaylists = await loadPlaylists();
      existingPlaylists.add(playlist);
      
      await _savePlaylists(existingPlaylists);
      return playlistId;
    } catch (e) {
      print("Error creating playlist: $e");
      rethrow;
    }
  }

  // Load all playlists
  Future<List<Playlist>> loadPlaylists() async {
    try {
      final List<String>? playlistsJson = _prefs.getStringList(_playlistsKey);
      if (playlistsJson == null) {
        return [];
      }

      return playlistsJson
          .map((jsonString) => Playlist.fromJson(jsonDecode(jsonString)))
          .toList();
    } catch (e) {
      print("Error loading playlists: $e");
      return [];
    }
  }

  // Get a specific playlist by ID
  Future<Playlist?> getPlaylistById(String id) async {
    final playlists = await loadPlaylists();
    try {
      return playlists.firstWhere((playlist) => playlist.id == id);
    } catch (e) {
      return null;
    }
  }

  // Update a playlist
  Future<bool> updatePlaylist(Playlist updatedPlaylist) async {
    try {
      final existingPlaylists = await loadPlaylists();
      final index = existingPlaylists.indexWhere((p) => p.id == updatedPlaylist.id);
      
      if (index != -1) {
        existingPlaylists[index] = updatedPlaylist.copyWith(
          dateModified: DateTime.now(),
        );
        await _savePlaylists(existingPlaylists);
        return true;
      }
      return false;
    } catch (e) {
      print("Error updating playlist: $e");
      return false;
    }
  }

  // Delete a playlist
  Future<bool> deletePlaylist(String id) async {
    try {
      final existingPlaylists = await loadPlaylists();
      final updatedPlaylists = existingPlaylists.where((p) => p.id != id).toList();
      
      if (updatedPlaylists.length != existingPlaylists.length) {
        await _savePlaylists(updatedPlaylists);
        return true;
      }
      return false;
    } catch (e) {
      print("Error deleting playlist: $e");
      return false;
    }
  }

  // Add TikTok result to playlist
  Future<bool> addToPlaylist(String playlistId, String tikTokResultId) async {
    try {
      final playlist = await getPlaylistById(playlistId);
      if (playlist == null) return false;
      
      if (!playlist.tikTokResultIds.contains(tikTokResultId)) {
        final updatedIds = [...playlist.tikTokResultIds, tikTokResultId];
        final updatedPlaylist = playlist.copyWith(tikTokResultIds: updatedIds);
        return await updatePlaylist(updatedPlaylist);
      }
      return true; // Already exists
    } catch (e) {
      print("Error adding to playlist: $e");
      return false;
    }
  }

  // Remove TikTok result from playlist
  Future<bool> removeFromPlaylist(String playlistId, String tikTokResultId) async {
    try {
      final playlist = await getPlaylistById(playlistId);
      if (playlist == null) return false;
      
      final updatedIds = playlist.tikTokResultIds.where((id) => id != tikTokResultId).toList();
      final updatedPlaylist = playlist.copyWith(tikTokResultIds: updatedIds);
      return await updatePlaylist(updatedPlaylist);
    } catch (e) {
      print("Error removing from playlist: $e");
      return false;
    }
  }

  // Clear all playlists
  Future<void> clearAllPlaylists() async {
    await _prefs.remove(_playlistsKey);
  }

  // Internal helper to save playlists
  Future<void> _savePlaylists(List<Playlist> playlists) async {
    try {
      // Sort by date modified (newest first)
      playlists.sort((a, b) => b.dateModified.compareTo(a.dateModified));
      
      final List<String> encodedPlaylists = playlists
          .map((playlist) => jsonEncode(playlist.toJson()))
          .toList();
      
      await _prefs.setStringList(_playlistsKey, encodedPlaylists);
    } catch (e) {
      print("Error saving playlists: $e");
      rethrow;
    }
  }
}
