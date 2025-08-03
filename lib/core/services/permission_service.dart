import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show defaultTargetPlatform;
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:snaptik/core/widgets/permission_prompt_dialog.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class PermissionService {
  Future<bool> _requestSinglePermission(
      Permission permission,
      BuildContext context,
      String rationaleTitle,
      String rationaleMessage) async {
    final l10n = AppLocalizations.of(context)!;
    PermissionStatus status = await permission.status;
    print("Permission status for $permission: $status");

    if (status.isGranted) {
      return true;
    }

    if (status.isDenied || status.isRestricted || status.isLimited) {
      bool userAgreed = await showDialog<bool>(
            context: context,
            builder: (ctx) => PermissionPromptDialog(
                title: rationaleTitle, message: rationaleMessage),
          ) ??
          false;
      if (userAgreed) {
        status = await permission.request();
        return status.isGranted;
      }
      return false;
    }

    if (status.isPermanentlyDenied) {
      await showDialog(
          context: context,
          builder: (ctx) => AlertDialog(
                title: Text(l10n.permissionRequiredTitle),
                content: Text(permission == Permission.photos
                    ? l10n.permissionPhotosDenied
                    : l10n
                        .permissionStorageDenied), // Adjust message based on perm
                actions: [
                  TextButton(
                      child: Text(l10n.cancel),
                      onPressed: () => Navigator.of(ctx).pop()),
                  TextButton(
                      child: Text(l10n.permissiongoToSettings),
                      onPressed: () {
                        openAppSettings();
                        Navigator.of(ctx).pop();
                      }),
                ],
              ));
      return false;
    }
    return false;
  }

  // Request storage permission
  Future<bool> requestStoragePermission(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;

    if (defaultTargetPlatform == TargetPlatform.android) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      final sdkInt = androidInfo.version.sdkInt;

      print(
          "PermissionService: Requesting storage permission for Android SDK $sdkInt");

      if (sdkInt >= 33) {
        // Android 13+
        // For saving via MediaStore, WRITE permissions are not what you ask for.
        // You ask for READ_MEDIA_* if you need to *read* general media.
        // Writing new files via MediaStore to own app's contributions doesn't need a separate permission dialog.
        print(
            "PermissionService: Android 13+. MediaStore write access is generally granted for app's own contributions. No specific storage write permission requested here.");
        return true; // Assume write access via MediaStore is available. If reading, request READ_MEDIA_*.
      } else if (sdkInt >= 30) {
        // Android 11 & 12 (API 30-32)
        // WRITE_EXTERNAL_STORAGE is not grantable for broad directory access.
        // MediaStore operations for writing new files typically don't require it to be granted.
        // The system might not show a dialog for Permission.storage if it deems it unnecessary.
        print(
            "PermissionService: Android 11/12. Attempting to ensure MediaStore can operate. No explicit user-facing storage write permission dialog may appear if not strictly needed by OS for MediaStore.");
        // We can check its status, but even if denied, MediaStore should work for new files.
        // The main point is to ensure our rationale dialog for *why* we might need storage (if we were reading)
        // is handled, but for writing new media, MediaStore is the path.
        // Let's try requesting it to see if the OS does anything or if any specific device needs it.
        // This request might return denied without a dialog, which is acceptable if MediaStore still works.
        // The pre-prompt (_requestSinglePermission) will still show YOUR rationale if status is 'denied'.
        // return await _requestSinglePermission(Permission.storage, context, l10n.permissionRequiredTitle, l10n.permissionStorageDenied);
        // For saving new files with MediaStore, this is often not needed.
        // If file_saver fails, it will throw an exception that should be caught.
        print(
            "PermissionService: For Android 11/12, relying on MediaStore capabilities for saving. Explicit dialog for Permission.storage might not show or be needed.");
        return true; // Assume MediaStore will work. The file_saver plugin will handle errors if it can't.
      } else {
        // Android 10 (API 29) and below
        // On API 29 with requestLegacyExternalStorage="true", WRITE_EXTERNAL_STORAGE is relevant.
        print(
            "PermissionService: Android 10 or older. Requesting Permission.storage.");
        return await _requestSinglePermission(Permission.storage, context,
            l10n.permissionRequiredTitle, l10n.permissionStorageDenied);
      }
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      print("PermissionService: Requesting photos permission for iOS");
      return await _requestSinglePermission(Permission.photos, context,
          l10n.permissionRequiredTitle, l10n.permissionPhotosDenied);
    }
    return false;
  }

  // Request notification permission (Optional but recommended)
  Future<bool> requestNotificationPermission(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;
    // Notifications are generally useful for download progress/completion
    Permission permission = Permission.notification;
    return await _requestSinglePermission(permission, context,
        l10n.permissionRequiredTitle, l10n.permissionNotificationDenied);
  }

  Future<PermissionStatus> getStoragePermissionStatus() async {
    if (defaultTargetPlatform == TargetPlatform.android) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      final sdkInt = androidInfo.version.sdkInt;
      if (sdkInt >= 33) {
        // On Android 13+, there isn't a direct equivalent to "storage granted" for writing.
        // We check if we can read media as a proxy, or assume write is fine via MediaStore.
        // Let's return .granted if any media read permission is available, otherwise denied.
        // This is a simplification.
        final photos = await Permission.photos.status;
        final videos = await Permission.videos.status;
        final audio = await Permission.audio.status;
        if (photos.isGranted || videos.isGranted || audio.isGranted)
          return PermissionStatus.granted;
        if (photos.isPermanentlyDenied ||
            videos.isPermanentlyDenied ||
            audio.isPermanentlyDenied)
          return PermissionStatus.permanentlyDenied;
        return PermissionStatus.denied;
      } else if (sdkInt >= 30) {
        // Android 11-12
        // For writing to MediaStore, explicit Permission.storage grant isn't the gatekeeper.
        // We can return .granted to indicate that the app *should* be able to operate with MediaStore.
        // Or check Permission.storage status for consistency, understanding it might be denied.
        // Let's return current Permission.storage status.
        return await Permission.storage.status;
      } else {
        // Android 10 and below
        return await Permission.storage.status;
      }
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      return await Permission.photos.status;
    }
    return PermissionStatus.denied;
  }
}