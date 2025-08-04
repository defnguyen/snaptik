// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Filipino Pilipino (`fil`).
class AppLocalizationsFil extends AppLocalizations {
  AppLocalizationsFil([String locale = 'fil']) : super(locale);

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
  String get download => 'I-download';

  @override
  String get enterTiktokUrl => 'Ilagay ang TikTok URL';

  @override
  String get howToUseTitle => 'Paano gamitin:';

  @override
  String get howToUseStep1 => '1. Buksan ang TikTok at hanapin ang video na gusto mong i-download.';

  @override
  String get howToUseStep2 => '2. I-tap ang \'Share\' icon sa kanan ng video.';

  @override
  String get howToUseStep3 => '3. Piliin ang \'Copy link\'.';

  @override
  String get howToUseStep4 => '4. I-paste ang link sa input field sa taas at i-tap ang \'Download\'.';

  @override
  String get invalidUrlError => 'Hindi valid ang TikTok URL format.';

  @override
  String get fetchingMedia => 'Kinukuha ang media...';

  @override
  String get downloadPhoto => 'I-download ang Larawan';

  @override
  String get downloadVideo => 'I-download ang Video';

  @override
  String get downloadVoice => 'I-download ang Musika';

  @override
  String get downloadMp3 => 'I-download ang MP3';

  @override
  String get downloading => 'Nag-d-download...';

  @override
  String get downloadSuccess => 'Tapos na ang download!';

  @override
  String get downloadError => 'Hindi nag-download. Subukan ulit.';

  @override
  String get downloadLimitReachedTitle => 'Naabot na ang Download Limit';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Naabot mo na ang download limit ($limit beses). Manood ng maikling ad para sa 5 pang download attempts.';
  }

  @override
  String get watchAd => 'Manood ng Ad';

  @override
  String get cancel => 'Cancel';

  @override
  String get photosTab => 'Mga Larawan';

  @override
  String get videosTab => 'Mga Video';

  @override
  String get musicTab => 'Musika';

  @override
  String get view => 'Tingnan';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Palitan ang pangalan';

  @override
  String get share => 'I-share';

  @override
  String get delete => 'I-delete';

  @override
  String get mediaInfoTitle => 'Media Information';

  @override
  String get fileName => 'Pangalan';

  @override
  String get filePath => 'Path';

  @override
  String get dateAdded => 'Petsa ng Pagdagdag';

  @override
  String get fileSize => 'Laki';

  @override
  String get renameMediaTitle => 'Palitan ang Pangalan ng Media';

  @override
  String get enterNewName => 'Ilagay ang bagong pangalan';

  @override
  String get save => 'I-save';

  @override
  String get deleteConfirmationTitle => 'Kumpirmahin ang Pag-delete';

  @override
  String get deleteConfirmationMessage => 'Sigurado ka ba na gusto mong i-delete ang file na ito? Hindi mo na ito mababalik.';

  @override
  String get confirm => 'Kumpirmahin';

  @override
  String get settingsLanguage => 'Wika';

  @override
  String get settingsTheme => 'Theme';

  @override
  String get settingsThemeLight => 'Maliwanag';

  @override
  String get settingsThemeDark => 'Madilim';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsClaimMoreDownloads => 'Kumuha ng 5 Pang Downloads';

  @override
  String get settingsClaimSuccess => 'Success! May 5 ka pang downloads.';

  @override
  String get settingsClaimError => 'Hindi na-load ang ad. Subukan mo ulit mamaya.';

  @override
  String get settingsPremium => 'Mag-upgrade sa Premium';

  @override
  String get settingsPremiumDescription => 'Tanggalin ang mga ads at makakuha ng unlimited downloads.';

  @override
  String get settingsRestorePurchase => 'I-restore ang Purchase';

  @override
  String get settingsRestoreSuccess => 'Matagumpay na na-restore ang mga purchases!';

  @override
  String get settingsRestoreError => 'Hindi na-restore ang mga purchases. Walang nahanap na active subscription o may error.';

  @override
  String get settingsGeneralSection => 'General';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Account';

  @override
  String get settingsSupportSection => 'Support at Feedback';

  @override
  String get settingsAbout => 'Tungkol';

  @override
  String get settingsContact => 'Makipag-ugnayan';

  @override
  String get settingsRateApp => 'I-rate ang App na ito';

  @override
  String get settingsShareApp => 'I-share ang App na ito';

  @override
  String get premiumUser => 'Premium User';

  @override
  String get aboutTitle => 'Tungkol sa TikTok Downloader';

  @override
  String get aboutContent => 'Tinutulungan ka ng app na ito na i-download ang mga public videos, photos, at audio mula sa TikTok posts.\n\nPakigarang ang copyright at privacy. I-download lang ang content na may permiso kang gamitin.';

  @override
  String get contactTitle => 'Makipag-ugnayan';

  @override
  String get contactNameHint => 'Ang Inyong Pangalan';

  @override
  String get contactEmailHint => 'Ang Inyong Email';

  @override
  String get contactMessageHint => 'Ang Inyong Mensahe';

  @override
  String get contactSendButton => 'Ipadala ang Mensahe';

  @override
  String get contactSending => 'Nagipadala...';

  @override
  String get contactSuccess => 'Matagumpay na naipadala ang mensahe! Babalikan ka namin kaagad.';

  @override
  String get contactError => 'Hindi naipadala ang mensahe. Subukan mo ulit mamaya.';

  @override
  String get permissionRequiredTitle => 'Kailangan ng Permission';

  @override
  String get permissionStorageDenied => 'Kailangan ng storage permission para ma-save ang mga na-download na files. Bigyan ng permission sa settings.';

  @override
  String get permissionPhotosDenied => 'Kailangan ng photos permission para ma-save ang mga na-download na files (iOS). Bigyan ng permission sa settings.';

  @override
  String get permissionNotificationDenied => 'Nirerekomenda ang notification permission para sa download progress updates.';

  @override
  String get permissiongoToSettings => 'Pumunta sa Settings';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Mag-upgrade Ngayon';

  @override
  String get chooseYourPlan => 'Piliin ang Inyong Plan';

  @override
  String get planWeekly => 'Lingguhan';

  @override
  String get planMonthly => 'Buwanan';

  @override
  String get planAnnually => 'Taunan';

  @override
  String get planLifetime => 'Habambuhay';

  @override
  String get oneTimePurchase => 'Isang Beses lang na Pagbili';

  @override
  String savePercent(String percent) {
    return 'Makatipid ng $percent%';
  }

  @override
  String get bestValue => 'Pinakamainam na Halaga';

  @override
  String get selectPlanErrorTitle => 'Error sa Pag-load ng mga Plan';

  @override
  String get selectPlanErrorMessage => 'Hindi ma-load ang mga subscription plans. Tignan ang internet connection at subukan ulit.';

  @override
  String get purchaseFailed => 'Hindi Naging Matagumpay ang Pagbili';

  @override
  String get purchaseCancelled => 'Na-cancel ang Pagbili';

  @override
  String get purchasePending => 'Naghihintay ang Pagbili';

  @override
  String get purchaseSuccess => 'Matagumpay ang Pagbili!';

  @override
  String get alreadyPremium => 'Premium user ka na.';

  @override
  String get getPremium => 'Kumuha ng Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Natitirang downloads: $currentLimit. Makakakuha ka ng free downloads sa pamamagitan ng panonood ng ads';
  }

  @override
  String get unlockSaveVideoPro => 'I-unlock ang Premium Features';

  @override
  String get noAdsUnlockAllFeatures => 'Walang Ads at I-unlock lahat ng features';

  @override
  String get removeAds => 'Tanggalin lahat ng ads';

  @override
  String get tiktokDownloads => 'Unlimited HD downloads ng videos, photos, at music mula sa TikTok';

  @override
  String get instagramDownloads => 'Mataas na kalidad na downloads na walang watermarks';

  @override
  String get lifetimePro => 'LifeTime Pro';

  @override
  String get yearlyPro => 'Yearly Pro';

  @override
  String get monthlyPro => 'Monthly Pro';

  @override
  String get weeklyPro => 'Weekly Pro';

  @override
  String get onlyBuyOnce => 'Bumili lang ng isang beses';

  @override
  String get perYear => '/taon';

  @override
  String get perMonth => '/buwan';

  @override
  String get perWeek => '/linggo';

  @override
  String get mostPopular => 'Pinakasikat';

  @override
  String get buyNow => 'Bumili ngayon';

  @override
  String get termsOfUse => 'Terms of Use';

  @override
  String get privacyPolicy => 'Privacy Policy';

  @override
  String get loadingPlans => 'Nilo-load ang mga plans...';

  @override
  String get failedToLoadPlans => 'Hindi na-load ang mga plans';

  @override
  String get retry => 'Subukan Ulit';

  @override
  String freeTrialDays(int days) {
    return '$days arawng libreng trial';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks linggong libreng trial';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months buwang libreng trial';
  }

  @override
  String get supportedPlatforms => 'Mga Suportadong Platform';

  @override
  String get supportTiktok => 'I-download ang Videos, Images, Music';

  @override
  String get supportInstagram => 'Mataas na kalidad na Downloads na walang Watermarks';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Mga Author';

  @override
  String get createPlaylist => 'Lumikha ng Playlist';

  @override
  String get playlistTitle => 'Pamagat ng Playlist';

  @override
  String get playlistDescription => 'Paglalarawan';

  @override
  String get chooseFiles => 'Pumili ng mga File';

  @override
  String get createPlaylistButton => 'Lumikha ng Playlist';

  @override
  String get playlistTitleHint => 'Ilagay ang pamagat ng playlist';

  @override
  String get playlistDescriptionHint => 'Ilagay ang paglalarawan ng playlist (optional)';

  @override
  String get selectFiles => 'Pumili ng mga files na idadagdag sa playlist';

  @override
  String get noPlaylistsYet => 'Walang mga playlist pa';

  @override
  String get createFirstPlaylist => 'Lumikha ng inyong unang playlist para ma-organize ang inyong mga downloads';

  @override
  String get noAuthorsYet => 'Walang mga author pa';

  @override
  String get downloadSomethingFirst => 'Mag-download muna ng content para makita ang mga authors dito';

  @override
  String authorVideos(Object author) {
    return 'Mga video ni $author';
  }

  @override
  String get noVideosFromAuthor => 'Walang mga video pa mula sa author na ito';
}
