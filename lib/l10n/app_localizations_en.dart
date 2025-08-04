// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

  @override
  String get homeTab => 'Home';

  @override
  String get libraryTab => 'Library';

  @override
  String get settingsTab => 'Settings';

  @override
  String get pasteLink => 'Paste Link';

  @override
  String get clear => 'Clear';

  @override
  String get download => 'Download';

  @override
  String get enterTiktokUrl => 'Enter TikTok URL';

  @override
  String get howToUseTitle => 'How to Use:';

  @override
  String get howToUseStep1 => '1. Open TikTok and find the video you want to download.';

  @override
  String get howToUseStep2 => '2. Tap the \'Share\' icon on the right side of the video.';

  @override
  String get howToUseStep3 => '3. Choose \'Copy link\'.';

  @override
  String get howToUseStep4 => '4. Paste the link into the input field above and tap \'Download\'.';

  @override
  String get invalidUrlError => 'Invalid TikTok URL format.';

  @override
  String get fetchingMedia => 'Fetching media...';

  @override
  String get downloadPhoto => 'Download Photo';

  @override
  String get downloadVideo => 'Download Video';

  @override
  String get downloadVoice => 'Download Music';

  @override
  String get downloadMp3 => 'Download MP3';

  @override
  String get downloading => 'Downloading...';

  @override
  String get downloadSuccess => 'Download complete!';

  @override
  String get downloadError => 'Download failed. Please try again.';

  @override
  String get downloadLimitReachedTitle => 'Download Limit Reached';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'You have reached the download limit ($limit times). Watch a short ad to get 5 more download attempts.';
  }

  @override
  String get watchAd => 'Watch Ad';

  @override
  String get cancel => 'Cancel';

  @override
  String get photosTab => 'Photos';

  @override
  String get videosTab => 'Videos';

  @override
  String get musicTab => 'Music';

  @override
  String get view => 'View';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Rename';

  @override
  String get share => 'Share';

  @override
  String get delete => 'Delete';

  @override
  String get mediaInfoTitle => 'Media Information';

  @override
  String get fileName => 'Name';

  @override
  String get filePath => 'Path';

  @override
  String get dateAdded => 'Date Added';

  @override
  String get fileSize => 'Size';

  @override
  String get renameMediaTitle => 'Rename Media';

  @override
  String get enterNewName => 'Enter new name';

  @override
  String get save => 'Save';

  @override
  String get deleteConfirmationTitle => 'Confirm Delete';

  @override
  String get deleteConfirmationMessage => 'Are you sure you want to delete this file? This action cannot be undone.';

  @override
  String get confirm => 'Confirm';

  @override
  String get settingsLanguage => 'Language';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeLight => 'Light';

  @override
  String get settingsThemeDark => 'Dark';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsClaimMoreDownloads => 'Get 5 More Downloads';

  @override
  String get settingsClaimSuccess => 'Success! You have 5 more downloads.';

  @override
  String get settingsClaimError => 'Failed to load ad. Please try again later.';

  @override
  String get settingsPremium => 'Upgrade to Premium';

  @override
  String get settingsPremiumDescription => 'Remove ads and get unlimited downloads.';

  @override
  String get settingsRestorePurchase => 'Restore Purchase';

  @override
  String get settingsRestoreSuccess => 'Purchases restored successfully!';

  @override
  String get settingsRestoreError => 'Failed to restore purchases. No active subscription found or error occurred.';

  @override
  String get settingsGeneralSection => 'General';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Account';

  @override
  String get settingsSupportSection => 'Support & Feedback';

  @override
  String get settingsAbout => 'About';

  @override
  String get settingsContact => 'Contact Us';

  @override
  String get settingsRateApp => 'Rate this App';

  @override
  String get settingsShareApp => 'Share this App';

  @override
  String get premiumUser => 'Premium User';

  @override
  String get aboutTitle => 'About TikTok Downloader';

  @override
  String get aboutContent => 'This app helps you download public videos, photos, and audio from TikTok posts.\n\nPlease respect copyright and privacy. Only download content you have permission to use.';

  @override
  String get contactTitle => 'Contact Us';

  @override
  String get contactNameHint => 'Your Name';

  @override
  String get contactEmailHint => 'Your Email';

  @override
  String get contactMessageHint => 'Your Message';

  @override
  String get contactSendButton => 'Send Message';

  @override
  String get contactSending => 'Sending...';

  @override
  String get contactSuccess => 'Message sent successfully! We will get back to you soon.';

  @override
  String get contactError => 'Failed to send message. Please try again later.';

  @override
  String get permissionRequiredTitle => 'Permission Required';

  @override
  String get permissionStorageDenied => 'Storage permission is required to save downloaded files. Please grant the permission in settings.';

  @override
  String get permissionPhotosDenied => 'Photos permission is required to save downloaded files (iOS). Please grant the permission in settings.';

  @override
  String get permissionNotificationDenied => 'Notification permission is recommended for download progress updates.';

  @override
  String get permissiongoToSettings => 'Go to Settings';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Upgrade Now';

  @override
  String get chooseYourPlan => 'Choose Your Plan';

  @override
  String get planWeekly => 'Weekly';

  @override
  String get planMonthly => 'Monthly';

  @override
  String get planAnnually => 'Annually';

  @override
  String get planLifetime => 'Lifetime';

  @override
  String get oneTimePurchase => 'One-Time Purchase';

  @override
  String savePercent(String percent) {
    return 'Save $percent%';
  }

  @override
  String get bestValue => 'Best Value';

  @override
  String get selectPlanErrorTitle => 'Error Loading Plans';

  @override
  String get selectPlanErrorMessage => 'Could not load subscription plans. Please check your internet connection and try again.';

  @override
  String get purchaseFailed => 'Purchase Failed';

  @override
  String get purchaseCancelled => 'Purchase Cancelled';

  @override
  String get purchasePending => 'Purchase Pending';

  @override
  String get purchaseSuccess => 'Purchase Successful!';

  @override
  String get alreadyPremium => 'You are already a Premium user.';

  @override
  String get getPremium => 'Get Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Downloads remaining: $currentLimit. You can get free downloads by watching ads';
  }

  @override
  String get unlockSaveVideoPro => 'Unlock Premium Features';

  @override
  String get noAdsUnlockAllFeatures => 'No Ads & Unlock all features';

  @override
  String get removeAds => 'Remove all ads';

  @override
  String get tiktokDownloads => 'Unlimited HD downloads of videos, photos, and music from TikTok';

  @override
  String get instagramDownloads => 'High quality downloads with no watermarks';

  @override
  String get lifetimePro => 'LifeTime Pro';

  @override
  String get yearlyPro => 'Yearly Pro';

  @override
  String get monthlyPro => 'Monthly Pro';

  @override
  String get weeklyPro => 'Weekly Pro';

  @override
  String get onlyBuyOnce => 'Only buy once';

  @override
  String get perYear => '/year';

  @override
  String get perMonth => '/month';

  @override
  String get perWeek => '/week';

  @override
  String get mostPopular => 'Most popular';

  @override
  String get buyNow => 'Buy now';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get loadingPlans => 'Loading plans...';

  @override
  String get failedToLoadPlans => 'Failed to load plans';

  @override
  String get retry => 'Retry';

  @override
  String freeTrialDays(int days) {
    return '$days days free trial';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks weeks free trial';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months months free trial';
  }

  @override
  String get supportedPlatforms => 'Supported Platforms';

  @override
  String get supportTiktok => 'Download Videos, Images, Music';

  @override
  String get supportInstagram => 'High Quality Downloads with No Watermarks';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Authors';

  @override
  String get createPlaylist => 'Create Playlist';

  @override
  String get playlistTitle => 'Playlist Title';

  @override
  String get playlistDescription => 'Description';

  @override
  String get chooseFiles => 'Choose Files';

  @override
  String get createPlaylistButton => 'Create Playlist';

  @override
  String get playlistTitleHint => 'Enter playlist title';

  @override
  String get playlistDescriptionHint => 'Enter playlist description (optional)';

  @override
  String get selectFiles => 'Select files to add to playlist';

  @override
  String get noPlaylistsYet => 'No playlists yet';

  @override
  String get createFirstPlaylist => 'Create your first playlist to organize your downloads';

  @override
  String get noAuthorsYet => 'No authors yet';

  @override
  String get downloadSomethingFirst => 'Download some content to see authors here';

  @override
  String authorVideos(Object author) {
    return 'Videos by $author';
  }

  @override
  String get noVideosFromAuthor => 'No videos from this author yet';
}
