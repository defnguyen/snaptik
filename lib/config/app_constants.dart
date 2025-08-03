import 'package:snaptik/config/api_config.dart';

class AppConstants {
  // General
  static const String appName = "TikTok Downloader";
  static const String appVersion = "2.0.0";
  static const String defaultLocale = 'en';

  // Limits & Premium
  static const int freeDownloadLimitPerCycle = 10;
  static const int rewardedDownloadIncrease = 5;
  static const String premiumEntitlementId =
      "premium"; // ID defined in RevenueCat

  // Storage Keys
  static const String themeModeKey = 'theme_mode';
  static const String localeKey = 'locale';
  static const String downloadLimitKey = 'download_limit';
  static const String downloadLimitTimestampKey =
      'download_limit_timestamp'; // To reset daily/periodically if needed
  static const String mediaLibraryKey =
      'media_library'; // Key for storing library items list

  // Durations
  static const Duration splashScreenDuration = Duration(seconds: 3);
  static const Duration snackBarDuration = Duration(seconds: 3);
  static const Duration debounceDuration =
      Duration(milliseconds: 300); // For potential input debouncing

  // UI Defaults
  static const double defaultPadding = 16.0;
  static const double defaultRadius = 8.0;
  static const double gridSpacing = 8.0;
  static const double gridAspectRatio = 0.8; // For media result grid
  static const double libraryGridAspectRatio = 1.0; // For library grid

  // Placeholders
  static const String placeholderImageUrl = 'assets/images/placeholder.png';

  // Links
  static const String contactFormUrl =
      ApiConfig.baseUrl + ApiConfig.contactEndpoint;
  static const String playStoreUrl =
      'market://details?id=com.snaptik.tiktok.downloader';
  static const String appStoreUrl = '';

  // Legal URLs
  static const String termsOfServiceUrl = 'https://snapvn.com/terms-of-service';
  static const String privacyPolicyUrl = 'https://snapvn.com/privacy-policy';
}
