import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fil.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('cs'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fil'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pt'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'TikTok Downloader'**
  String get appTitle;

  /// No description provided for @homeTab.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get homeTab;

  /// No description provided for @libraryTab.
  ///
  /// In en, this message translates to:
  /// **'Library'**
  String get libraryTab;

  /// No description provided for @settingsTab.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settingsTab;

  /// No description provided for @pasteLink.
  ///
  /// In en, this message translates to:
  /// **'Paste Link'**
  String get pasteLink;

  /// No description provided for @clear.
  ///
  /// In en, this message translates to:
  /// **'Clear'**
  String get clear;

  /// No description provided for @download.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get download;

  /// No description provided for @enterThreadsUrl.
  ///
  /// In en, this message translates to:
  /// **'Enter TikTok URL'**
  String get enterThreadsUrl;

  /// No description provided for @howToUseTitle.
  ///
  /// In en, this message translates to:
  /// **'How to Use:'**
  String get howToUseTitle;

  /// No description provided for @howToUseStep1.
  ///
  /// In en, this message translates to:
  /// **'1. Open TikTok and find the video you want to download.'**
  String get howToUseStep1;

  /// No description provided for @howToUseStep2.
  ///
  /// In en, this message translates to:
  /// **'2. Tap the \'Share\' icon on the right side of the video.'**
  String get howToUseStep2;

  /// No description provided for @howToUseStep3.
  ///
  /// In en, this message translates to:
  /// **'3. Choose \'Copy link\'.'**
  String get howToUseStep3;

  /// No description provided for @howToUseStep4.
  ///
  /// In en, this message translates to:
  /// **'4. Paste the link into the input field above and tap \'Download\'.'**
  String get howToUseStep4;

  /// No description provided for @invalidUrlError.
  ///
  /// In en, this message translates to:
  /// **'Invalid TikTok URL format.'**
  String get invalidUrlError;

  /// No description provided for @fetchingMedia.
  ///
  /// In en, this message translates to:
  /// **'Fetching media...'**
  String get fetchingMedia;

  /// No description provided for @downloadPhoto.
  ///
  /// In en, this message translates to:
  /// **'Download Photo'**
  String get downloadPhoto;

  /// No description provided for @downloadVideo.
  ///
  /// In en, this message translates to:
  /// **'Download Video'**
  String get downloadVideo;

  /// No description provided for @downloadVoice.
  ///
  /// In en, this message translates to:
  /// **'Download Voice'**
  String get downloadVoice;

  /// No description provided for @downloadMp3.
  ///
  /// In en, this message translates to:
  /// **'Download MP3'**
  String get downloadMp3;

  /// No description provided for @downloading.
  ///
  /// In en, this message translates to:
  /// **'Downloading...'**
  String get downloading;

  /// No description provided for @downloadSuccess.
  ///
  /// In en, this message translates to:
  /// **'Download complete!'**
  String get downloadSuccess;

  /// No description provided for @downloadError.
  ///
  /// In en, this message translates to:
  /// **'Download failed. Please try again.'**
  String get downloadError;

  /// No description provided for @downloadLimitReachedTitle.
  ///
  /// In en, this message translates to:
  /// **'Download Limit Reached'**
  String get downloadLimitReachedTitle;

  /// No description provided for @downloadLimitReachedMessage.
  ///
  /// In en, this message translates to:
  /// **'You have reached the download limit ({limit} times). Watch a short ad to get 5 more download attempts.'**
  String downloadLimitReachedMessage(Object limit);

  /// No description provided for @watchAd.
  ///
  /// In en, this message translates to:
  /// **'Watch Ad'**
  String get watchAd;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @photosTab.
  ///
  /// In en, this message translates to:
  /// **'Photos'**
  String get photosTab;

  /// No description provided for @videosTab.
  ///
  /// In en, this message translates to:
  /// **'Videos'**
  String get videosTab;

  /// No description provided for @voiceTab.
  ///
  /// In en, this message translates to:
  /// **'Voice'**
  String get voiceTab;

  /// No description provided for @view.
  ///
  /// In en, this message translates to:
  /// **'View'**
  String get view;

  /// No description provided for @info.
  ///
  /// In en, this message translates to:
  /// **'Info'**
  String get info;

  /// No description provided for @rename.
  ///
  /// In en, this message translates to:
  /// **'Rename'**
  String get rename;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @mediaInfoTitle.
  ///
  /// In en, this message translates to:
  /// **'Media Information'**
  String get mediaInfoTitle;

  /// No description provided for @fileName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get fileName;

  /// No description provided for @filePath.
  ///
  /// In en, this message translates to:
  /// **'Path'**
  String get filePath;

  /// No description provided for @dateAdded.
  ///
  /// In en, this message translates to:
  /// **'Date Added'**
  String get dateAdded;

  /// No description provided for @fileSize.
  ///
  /// In en, this message translates to:
  /// **'Size'**
  String get fileSize;

  /// No description provided for @renameMediaTitle.
  ///
  /// In en, this message translates to:
  /// **'Rename Media'**
  String get renameMediaTitle;

  /// No description provided for @enterNewName.
  ///
  /// In en, this message translates to:
  /// **'Enter new name'**
  String get enterNewName;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @deleteConfirmationTitle.
  ///
  /// In en, this message translates to:
  /// **'Confirm Delete'**
  String get deleteConfirmationTitle;

  /// No description provided for @deleteConfirmationMessage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this file? This action cannot be undone.'**
  String get deleteConfirmationMessage;

  /// No description provided for @confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// No description provided for @settingsLanguage.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get settingsLanguage;

  /// No description provided for @settingsTheme.
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get settingsTheme;

  /// No description provided for @settingsThemeLight.
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get settingsThemeLight;

  /// No description provided for @settingsThemeDark.
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get settingsThemeDark;

  /// No description provided for @settingsThemeSystem.
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get settingsThemeSystem;

  /// No description provided for @settingsClaimMoreDownloads.
  ///
  /// In en, this message translates to:
  /// **'Get 5 More Downloads'**
  String get settingsClaimMoreDownloads;

  /// No description provided for @settingsClaimSuccess.
  ///
  /// In en, this message translates to:
  /// **'Success! You have 5 more downloads.'**
  String get settingsClaimSuccess;

  /// No description provided for @settingsClaimError.
  ///
  /// In en, this message translates to:
  /// **'Failed to load ad. Please try again later.'**
  String get settingsClaimError;

  /// No description provided for @settingsPremium.
  ///
  /// In en, this message translates to:
  /// **'Upgrade to Premium'**
  String get settingsPremium;

  /// No description provided for @settingsPremiumDescription.
  ///
  /// In en, this message translates to:
  /// **'Remove ads and get unlimited downloads.'**
  String get settingsPremiumDescription;

  /// No description provided for @settingsRestorePurchase.
  ///
  /// In en, this message translates to:
  /// **'Restore Purchase'**
  String get settingsRestorePurchase;

  /// No description provided for @settingsRestoreSuccess.
  ///
  /// In en, this message translates to:
  /// **'Purchases restored successfully!'**
  String get settingsRestoreSuccess;

  /// No description provided for @settingsRestoreError.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore purchases. No active subscription found or error occurred.'**
  String get settingsRestoreError;

  /// No description provided for @settingsGeneralSection.
  ///
  /// In en, this message translates to:
  /// **'General'**
  String get settingsGeneralSection;

  /// No description provided for @settingsDownloadsSection.
  ///
  /// In en, this message translates to:
  /// **'Downloads'**
  String get settingsDownloadsSection;

  /// No description provided for @settingsAccountSection.
  ///
  /// In en, this message translates to:
  /// **'Account'**
  String get settingsAccountSection;

  /// No description provided for @settingsSupportSection.
  ///
  /// In en, this message translates to:
  /// **'Support & Feedback'**
  String get settingsSupportSection;

  /// No description provided for @settingsAbout.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get settingsAbout;

  /// No description provided for @settingsContact.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get settingsContact;

  /// No description provided for @settingsRateApp.
  ///
  /// In en, this message translates to:
  /// **'Rate this App'**
  String get settingsRateApp;

  /// No description provided for @settingsShareApp.
  ///
  /// In en, this message translates to:
  /// **'Share this App'**
  String get settingsShareApp;

  /// No description provided for @premiumUser.
  ///
  /// In en, this message translates to:
  /// **'Premium User'**
  String get premiumUser;

  /// No description provided for @aboutTitle.
  ///
  /// In en, this message translates to:
  /// **'About TikTok Downloader'**
  String get aboutTitle;

  /// No description provided for @aboutContent.
  ///
  /// In en, this message translates to:
  /// **'This app helps you download public videos, photos, and audio from TikTok posts.\n\nPlease respect copyright and privacy. Only download content you have permission to use.'**
  String get aboutContent;

  /// No description provided for @contactTitle.
  ///
  /// In en, this message translates to:
  /// **'Contact Us'**
  String get contactTitle;

  /// No description provided for @contactNameHint.
  ///
  /// In en, this message translates to:
  /// **'Your Name'**
  String get contactNameHint;

  /// No description provided for @contactEmailHint.
  ///
  /// In en, this message translates to:
  /// **'Your Email'**
  String get contactEmailHint;

  /// No description provided for @contactMessageHint.
  ///
  /// In en, this message translates to:
  /// **'Your Message'**
  String get contactMessageHint;

  /// No description provided for @contactSendButton.
  ///
  /// In en, this message translates to:
  /// **'Send Message'**
  String get contactSendButton;

  /// No description provided for @contactSending.
  ///
  /// In en, this message translates to:
  /// **'Sending...'**
  String get contactSending;

  /// No description provided for @contactSuccess.
  ///
  /// In en, this message translates to:
  /// **'Message sent successfully! We will get back to you soon.'**
  String get contactSuccess;

  /// No description provided for @contactError.
  ///
  /// In en, this message translates to:
  /// **'Failed to send message. Please try again later.'**
  String get contactError;

  /// No description provided for @permissionRequiredTitle.
  ///
  /// In en, this message translates to:
  /// **'Permission Required'**
  String get permissionRequiredTitle;

  /// No description provided for @permissionStorageDenied.
  ///
  /// In en, this message translates to:
  /// **'Storage permission is required to save downloaded files. Please grant the permission in settings.'**
  String get permissionStorageDenied;

  /// No description provided for @permissionPhotosDenied.
  ///
  /// In en, this message translates to:
  /// **'Photos permission is required to save downloaded files (iOS). Please grant the permission in settings.'**
  String get permissionPhotosDenied;

  /// No description provided for @permissionNotificationDenied.
  ///
  /// In en, this message translates to:
  /// **'Notification permission is recommended for download progress updates.'**
  String get permissionNotificationDenied;

  /// No description provided for @permissiongoToSettings.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings'**
  String get permissiongoToSettings;

  /// No description provided for @ok.
  ///
  /// In en, this message translates to:
  /// **'OK'**
  String get ok;

  /// No description provided for @upgradeNow.
  ///
  /// In en, this message translates to:
  /// **'Upgrade Now'**
  String get upgradeNow;

  /// No description provided for @chooseYourPlan.
  ///
  /// In en, this message translates to:
  /// **'Choose Your Plan'**
  String get chooseYourPlan;

  /// No description provided for @planWeekly.
  ///
  /// In en, this message translates to:
  /// **'Weekly'**
  String get planWeekly;

  /// No description provided for @planMonthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get planMonthly;

  /// No description provided for @planAnnually.
  ///
  /// In en, this message translates to:
  /// **'Annually'**
  String get planAnnually;

  /// No description provided for @planLifetime.
  ///
  /// In en, this message translates to:
  /// **'Lifetime'**
  String get planLifetime;

  /// No description provided for @oneTimePurchase.
  ///
  /// In en, this message translates to:
  /// **'One-Time Purchase'**
  String get oneTimePurchase;

  /// No description provided for @savePercent.
  ///
  /// In en, this message translates to:
  /// **'Save {percent}%'**
  String savePercent(String percent);

  /// No description provided for @bestValue.
  ///
  /// In en, this message translates to:
  /// **'Best Value'**
  String get bestValue;

  /// No description provided for @selectPlanErrorTitle.
  ///
  /// In en, this message translates to:
  /// **'Error Loading Plans'**
  String get selectPlanErrorTitle;

  /// No description provided for @selectPlanErrorMessage.
  ///
  /// In en, this message translates to:
  /// **'Could not load subscription plans. Please check your internet connection and try again.'**
  String get selectPlanErrorMessage;

  /// No description provided for @purchaseFailed.
  ///
  /// In en, this message translates to:
  /// **'Purchase Failed'**
  String get purchaseFailed;

  /// No description provided for @purchaseCancelled.
  ///
  /// In en, this message translates to:
  /// **'Purchase Cancelled'**
  String get purchaseCancelled;

  /// No description provided for @purchasePending.
  ///
  /// In en, this message translates to:
  /// **'Purchase Pending'**
  String get purchasePending;

  /// No description provided for @purchaseSuccess.
  ///
  /// In en, this message translates to:
  /// **'Purchase Successful!'**
  String get purchaseSuccess;

  /// No description provided for @alreadyPremium.
  ///
  /// In en, this message translates to:
  /// **'You are already a Premium user.'**
  String get alreadyPremium;

  /// No description provided for @getPremium.
  ///
  /// In en, this message translates to:
  /// **'Get Premium'**
  String get getPremium;

  /// No description provided for @downloadsRemainingMessage.
  ///
  /// In en, this message translates to:
  /// **'Downloads remaining: {currentLimit}. You can get free downloads by watching ads'**
  String downloadsRemainingMessage(Object currentLimit);

  /// No description provided for @unlockSaveVideoPro.
  ///
  /// In en, this message translates to:
  /// **'Unlock Premium Features'**
  String get unlockSaveVideoPro;

  /// No description provided for @noAdsUnlockAllFeatures.
  ///
  /// In en, this message translates to:
  /// **'No Ads & Unlock all features'**
  String get noAdsUnlockAllFeatures;

  /// No description provided for @removeAds.
  ///
  /// In en, this message translates to:
  /// **'Remove all ads'**
  String get removeAds;

  /// No description provided for @threadsDownloads.
  ///
  /// In en, this message translates to:
  /// **'Unlimited HD downloads of videos, photos, and audio from TikTok'**
  String get threadsDownloads;

  /// No description provided for @instagramDownloads.
  ///
  /// In en, this message translates to:
  /// **'High quality downloads with no watermarks'**
  String get instagramDownloads;

  /// No description provided for @lifetimePro.
  ///
  /// In en, this message translates to:
  /// **'LifeTime Pro'**
  String get lifetimePro;

  /// No description provided for @yearlyPro.
  ///
  /// In en, this message translates to:
  /// **'Yearly Pro'**
  String get yearlyPro;

  /// No description provided for @monthlyPro.
  ///
  /// In en, this message translates to:
  /// **'Monthly Pro'**
  String get monthlyPro;

  /// No description provided for @weeklyPro.
  ///
  /// In en, this message translates to:
  /// **'Weekly Pro'**
  String get weeklyPro;

  /// No description provided for @onlyBuyOnce.
  ///
  /// In en, this message translates to:
  /// **'Only buy once'**
  String get onlyBuyOnce;

  /// No description provided for @perYear.
  ///
  /// In en, this message translates to:
  /// **'/year'**
  String get perYear;

  /// No description provided for @perMonth.
  ///
  /// In en, this message translates to:
  /// **'/month'**
  String get perMonth;

  /// No description provided for @perWeek.
  ///
  /// In en, this message translates to:
  /// **'/week'**
  String get perWeek;

  /// No description provided for @mostPopular.
  ///
  /// In en, this message translates to:
  /// **'Most popular'**
  String get mostPopular;

  /// No description provided for @buyNow.
  ///
  /// In en, this message translates to:
  /// **'Buy now'**
  String get buyNow;

  /// No description provided for @termsOfUse.
  ///
  /// In en, this message translates to:
  /// **'Terms of Use'**
  String get termsOfUse;

  /// No description provided for @privacyPolicy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacyPolicy;

  /// No description provided for @loadingPlans.
  ///
  /// In en, this message translates to:
  /// **'Loading plans...'**
  String get loadingPlans;

  /// No description provided for @failedToLoadPlans.
  ///
  /// In en, this message translates to:
  /// **'Failed to load plans'**
  String get failedToLoadPlans;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @freeTrialDays.
  ///
  /// In en, this message translates to:
  /// **'{days} days free trial'**
  String freeTrialDays(int days);

  /// No description provided for @freeTrialWeeks.
  ///
  /// In en, this message translates to:
  /// **'{weeks} weeks free trial'**
  String freeTrialWeeks(int weeks);

  /// No description provided for @freeTrialMonths.
  ///
  /// In en, this message translates to:
  /// **'{months} months free trial'**
  String freeTrialMonths(int months);

  /// No description provided for @supportedPlatforms.
  ///
  /// In en, this message translates to:
  /// **'Supported Platforms'**
  String get supportedPlatforms;

  /// No description provided for @supportThreads.
  ///
  /// In en, this message translates to:
  /// **'Download Videos, Images, Audio'**
  String get supportThreads;

  /// No description provided for @supportInstagram.
  ///
  /// In en, this message translates to:
  /// **'High Quality Downloads with No Watermarks'**
  String get supportInstagram;

  /// No description provided for @playlistTab.
  ///
  /// In en, this message translates to:
  /// **'Playlist'**
  String get playlistTab;

  /// No description provided for @authorsTab.
  ///
  /// In en, this message translates to:
  /// **'Authors'**
  String get authorsTab;

  /// No description provided for @createPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Create Playlist'**
  String get createPlaylist;

  /// No description provided for @playlistTitle.
  ///
  /// In en, this message translates to:
  /// **'Playlist Title'**
  String get playlistTitle;

  /// No description provided for @playlistDescription.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get playlistDescription;

  /// No description provided for @chooseFiles.
  ///
  /// In en, this message translates to:
  /// **'Choose Files'**
  String get chooseFiles;

  /// No description provided for @createPlaylistButton.
  ///
  /// In en, this message translates to:
  /// **'Create Playlist'**
  String get createPlaylistButton;

  /// No description provided for @playlistTitleHint.
  ///
  /// In en, this message translates to:
  /// **'Enter playlist title'**
  String get playlistTitleHint;

  /// No description provided for @playlistDescriptionHint.
  ///
  /// In en, this message translates to:
  /// **'Enter playlist description (optional)'**
  String get playlistDescriptionHint;

  /// No description provided for @selectFiles.
  ///
  /// In en, this message translates to:
  /// **'Select files to add to playlist'**
  String get selectFiles;

  /// No description provided for @noPlaylistsYet.
  ///
  /// In en, this message translates to:
  /// **'No playlists yet'**
  String get noPlaylistsYet;

  /// No description provided for @createFirstPlaylist.
  ///
  /// In en, this message translates to:
  /// **'Create your first playlist to organize your downloads'**
  String get createFirstPlaylist;

  /// No description provided for @noAuthorsYet.
  ///
  /// In en, this message translates to:
  /// **'No authors yet'**
  String get noAuthorsYet;

  /// No description provided for @downloadSomethingFirst.
  ///
  /// In en, this message translates to:
  /// **'Download some content to see authors here'**
  String get downloadSomethingFirst;

  /// No description provided for @authorVideos.
  ///
  /// In en, this message translates to:
  /// **'Videos by {author}'**
  String authorVideos(Object author);

  /// No description provided for @noVideosFromAuthor.
  ///
  /// In en, this message translates to:
  /// **'No videos from this author yet'**
  String get noVideosFromAuthor;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'cs', 'de', 'en', 'es', 'fil', 'fr', 'hi', 'id', 'it', 'ja', 'ko', 'nl', 'pt', 'ru', 'sv', 'th', 'tr', 'uk', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'cs': return AppLocalizationsCs();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fil': return AppLocalizationsFil();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'nl': return AppLocalizationsNl();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'sv': return AppLocalizationsSv();
    case 'th': return AppLocalizationsTh();
    case 'tr': return AppLocalizationsTr();
    case 'uk': return AppLocalizationsUk();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
