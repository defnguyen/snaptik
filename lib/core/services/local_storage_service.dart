import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/features/library/models/library_item.dart';

class LocalStorageService {
  final SharedPreferences _prefs;

  LocalStorageService(this._prefs);

  // --- Theme ---
  Future<void> saveThemeMode(ThemeMode mode) async {
    await _prefs.setString(AppConstants.themeModeKey, mode.name);
  }

  ThemeMode loadThemeMode() {
    final modeString = _prefs.getString(AppConstants.themeModeKey);
    return ThemeMode.values.firstWhere(
      (e) => e.name == modeString,
      orElse: () => ThemeMode.system, // Default
    );
  }

  // --- Locale ---
  Future<void> saveLocale(String localeCode) async {
    await _prefs.setString(AppConstants.localeKey, localeCode);
  }

  String loadLocale() {
    return _prefs.getString(AppConstants.localeKey) ??
        AppConstants.defaultLocale;
  }

  // --- Download Limit ---
  Future<void> saveDownloadLimit(int limit) async {
    await _prefs.setInt(AppConstants.downloadLimitKey, limit);
    // Optionally save timestamp if you want periodic reset
    // await _prefs.setInt(AppConstants.downloadLimitTimestampKey, DateTime.now().millisecondsSinceEpoch);
  }

  int loadDownloadLimit() {
    // TODO: Implement periodic reset logic if needed based on timestamp
    return _prefs.getInt(AppConstants.downloadLimitKey) ??
        AppConstants.freeDownloadLimitPerCycle;
  }

  // --- Media Library ---
  Future<void> saveMediaLibrary(List<LibraryItem> items) async {
    try {
      List<String> encodedItems =
          items.map((item) => jsonEncode(item.toJson())).toList();
      await _prefs.setStringList(AppConstants.mediaLibraryKey, encodedItems);
    } catch (e) {
      print("Error saving media library: $e");
      // Handle error appropriately
    }
  }

  List<LibraryItem> loadMediaLibrary() {
    try {
      List<String>? encodedItems =
          _prefs.getStringList(AppConstants.mediaLibraryKey);
      if (encodedItems == null) {
        return [];
      }
      return encodedItems
          .map((itemString) => LibraryItem.fromJson(jsonDecode(itemString)))
          .toList();
    } catch (e) {
      print("Error loading media library: $e");
      // Handle error, maybe clear corrupted data
      // clearMediaLibrary();
      return [];
    }
  }

  Future<void> clearMediaLibrary() async {
    await _prefs.remove(AppConstants.mediaLibraryKey);
  }

  // --- RevenueCat App User ID ---
  Future<void> saveAppUserID(String? userID) async {
    if (userID != null) {
      await _prefs.setString('revenuecat_app_user_id', userID);
      print("LocalStorageService: Saved RevenueCat appUserID: $userID");
    } else {
      await _prefs.remove('revenuecat_app_user_id');
      print("LocalStorageService: Removed RevenueCat appUserID.");
    }
  }

  String? loadAppUserID() {
    final userID = _prefs.getString('revenuecat_app_user_id');
    print("LocalStorageService: Loaded RevenueCat appUserID: $userID");
    return userID;
  }
}
