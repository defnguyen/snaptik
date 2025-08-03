// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'थ्रेड्स वीडियो डाउनलोडर';

  @override
  String get homeTab => 'होम';

  @override
  String get libraryTab => 'लाइब्रेरी';

  @override
  String get settingsTab => 'सेटिंग्स';

  @override
  String get pasteLink => 'लिंक पेस्ट करें';

  @override
  String get clear => 'साफ़ करें';

  @override
  String get download => 'डाउनलोड करें';

  @override
  String get enterThreadsUrl => 'Threads/Instagram URL दर्ज करें';

  @override
  String get howToUseTitle => 'उपयोग कैसे करें:';

  @override
  String get howToUseStep1 => '1. थ्रेड्स खोलें और वह पोस्ट ढूंढें जिसे आप डाउनलोड करना चाहते हैं।';

  @override
  String get howToUseStep2 => '2. पोस्ट के नीचे \'शेयर\' आइकन पर टैप करें।';

  @override
  String get howToUseStep3 => '3. \'लिंक कॉपी करें\' चुनें।';

  @override
  String get howToUseStep4 => '4. लिंक को ऊपर दिए गए इनपुट फ़ील्ड में पेस्ट करें और \'डाउनलोड करें\' पर टैप करें।';

  @override
  String get invalidUrlError => 'अमान्य थ्रेड्स URL प्रारूप।';

  @override
  String get fetchingMedia => 'मीडिया प्राप्त कर रहे हैं...';

  @override
  String get downloadPhoto => 'फोटो डाउनलोड करें';

  @override
  String get downloadVideo => 'वीडियो डाउनलोड करें';

  @override
  String get downloadVoice => 'आवाज़ डाउनलोड करें';

  @override
  String get downloadMp3 => 'MP3 डाउनलोड करें';

  @override
  String get downloading => 'डाउनलोड हो रहा है...';

  @override
  String get downloadSuccess => 'डाउनलोड पूरा हुआ!';

  @override
  String get downloadError => 'डाउनलोड विफल। कृपया पुनः प्रयास करें।';

  @override
  String get downloadLimitReachedTitle => 'डाउनलोड सीमा पहुंच गई';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'आपने डाउनलोड सीमा तक पहुंच गए हैं ($limit बार)। 5 और डाउनलोड प्रयास पाने के लिए एक छोटा विज्ञापन देखें।';
  }

  @override
  String get watchAd => 'विज्ञापन देखें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get photosTab => 'फोटो';

  @override
  String get videosTab => 'वीडियो';

  @override
  String get voiceTab => 'आवाज़';

  @override
  String get view => 'देखें';

  @override
  String get info => 'जानकारी';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get share => 'शेयर करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get mediaInfoTitle => 'मीडिया जानकारी';

  @override
  String get fileName => 'नाम';

  @override
  String get filePath => 'पथ';

  @override
  String get dateAdded => 'जोड़ने की तिथि';

  @override
  String get fileSize => 'आकार';

  @override
  String get renameMediaTitle => 'मीडिया का नाम बदलें';

  @override
  String get enterNewName => 'नया नाम दर्ज करें';

  @override
  String get save => 'सहेजें';

  @override
  String get deleteConfirmationTitle => 'हटाने की पुष्टि करें';

  @override
  String get deleteConfirmationMessage => 'क्या आप वाकई इस फ़ाइल को हटाना चाहते हैं? यह क्रिया पूर्ववत नहीं की जा सकती।';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get settingsLanguage => 'भाषा';

  @override
  String get settingsTheme => 'थीम';

  @override
  String get settingsThemeLight => 'लाइट';

  @override
  String get settingsThemeDark => 'डार्क';

  @override
  String get settingsThemeSystem => 'सिस्टम';

  @override
  String get settingsClaimMoreDownloads => '5 और डाउनलोड प्राप्त करें';

  @override
  String get settingsClaimSuccess => 'सफलता! आपके पास 5 और डाउनलोड हैं।';

  @override
  String get settingsClaimError => 'विज्ञापन लोड करने में विफल। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get settingsPremium => 'प्रीमियम में अपग्रेड करें';

  @override
  String get settingsPremiumDescription => 'विज्ञापन हटाएं और असीमित डाउनलोड प्राप्त करें।';

  @override
  String get settingsRestorePurchase => 'खरीदारी पुनर्स्थापित करें';

  @override
  String get settingsRestoreSuccess => 'खरीदारी सफलतापूर्वक पुनर्स्थापित की गई!';

  @override
  String get settingsRestoreError => 'खरीदारी पुनर्स्थापित करने में विफल। कोई सक्रिय सदस्यता नहीं मिली या त्रुटि हुई।';

  @override
  String get settingsGeneralSection => 'सामान्य';

  @override
  String get settingsDownloadsSection => 'डाउनलोड';

  @override
  String get settingsAccountSection => 'खाता';

  @override
  String get settingsSupportSection => 'सहायता और प्रतिक्रिया';

  @override
  String get settingsAbout => 'के बारे में';

  @override
  String get settingsContact => 'हमसे संपर्क करें';

  @override
  String get settingsRateApp => 'इस ऐप को रेट करें';

  @override
  String get settingsShareApp => 'इस ऐप को शेयर करें';

  @override
  String get premiumUser => 'प्रीमियम उपयोगकर्ता';

  @override
  String get aboutTitle => 'थ्रेड्स डाउनलोडर के बारे में';

  @override
  String get aboutContent => 'यह ऐप आपको थ्रेड्स पोस्ट से सार्वजनिक फोटो, वीडियो और आवाज़ नोट्स डाउनलोड करने में मदद करती है।\n\nकृपया कॉपीराइट और गोपनीयता का सम्मान करें। केवल वही सामग्री डाउनलोड करें जिसका उपयोग करने की अनुमति आपके पास है।';

  @override
  String get contactTitle => 'हमसे संपर्क करें';

  @override
  String get contactNameHint => 'आपका नाम';

  @override
  String get contactEmailHint => 'आपका ईमेल';

  @override
  String get contactMessageHint => 'आपका संदेश';

  @override
  String get contactSendButton => 'संदेश भेजें';

  @override
  String get contactSending => 'भेज रहा है...';

  @override
  String get contactSuccess => 'संदेश सफलतापूर्वक भेजा गया! हम जल्द ही आपसे संपर्क करेंगे।';

  @override
  String get contactError => 'संदेश भेजने में विफल। कृपया बाद में पुन: प्रयास करें।';

  @override
  String get permissionRequiredTitle => 'अनुमति आवश्यक';

  @override
  String get permissionStorageDenied => 'डाउनलोड की गई फ़ाइलों को सहेजने के लिए स्टोरेज अनुमति आवश्यक है। कृपया सेटिंग्स में अनुमति प्रदान करें।';

  @override
  String get permissionPhotosDenied => 'डाउनलोड की गई फ़ाइलों को सहेजने के लिए फोटो अनुमति आवश्यक है (iOS)। कृपया सेटिंग्स में अनुमति प्रदान करें।';

  @override
  String get permissionNotificationDenied => 'डाउनलोड प्रगति अपडेट के लिए अधिसूचना अनुमति अनुशंसित है।';

  @override
  String get permissiongoToSettings => 'सेटिंग्स में जाएं';

  @override
  String get ok => 'ठीक है';

  @override
  String get upgradeNow => 'अभी अपग्रेड करें';

  @override
  String get chooseYourPlan => 'अपना प्लान चुनें';

  @override
  String get planWeekly => 'साप्ताहिक';

  @override
  String get planMonthly => 'मासिक';

  @override
  String get planAnnually => 'वार्षिक';

  @override
  String get planLifetime => 'आजीवन';

  @override
  String get oneTimePurchase => 'एकबारगी खरीद';

  @override
  String savePercent(String percent) {
    return '$percent% बचाएं';
  }

  @override
  String get bestValue => 'सर्वोत्तम मूल्य';

  @override
  String get selectPlanErrorTitle => 'प्लान लोड करने में त्रुटि';

  @override
  String get selectPlanErrorMessage => 'सदस्यता प्लान लोड नहीं हो सके। कृपया अपना इंटरनेट कनेक्शन जांचें और पुनः प्रयास करें।';

  @override
  String get purchaseFailed => 'खरीदारी विफल';

  @override
  String get purchaseCancelled => 'खरीदारी रद्द की गई';

  @override
  String get purchasePending => 'खरीदारी लंबित';

  @override
  String get purchaseSuccess => 'खरीदारी सफल!';

  @override
  String get alreadyPremium => 'आप पहले से ही प्रीमियम उपयोगकर्ता हैं।';

  @override
  String get getPremium => 'प्रीमियम प्राप्त करें';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'शेष डाउनलोड: $currentLimit. विज्ञापन देखकर आप मुफ्त डाउनलोड प्राप्त कर सकते हैं';
  }

  @override
  String get unlockSaveVideoPro => 'प्रीमियम फीचर अनलॉक करें';

  @override
  String get noAdsUnlockAllFeatures => 'कोई विज्ञापन नहीं और सभी फीचर अनलॉक करें';

  @override
  String get removeAds => 'सभी विज्ञापन हटाएं';

  @override
  String get threadsDownloads => 'Threads से वीडियो, फोटो और वॉयस मैसेज के असीमित HD डाउनलोड';

  @override
  String get instagramDownloads => 'Instagram से वीडियो, फोटो, reels, stories और पूरी प्रोफाइल के असीमित HD डाउनलोड';

  @override
  String get lifetimePro => 'लाइफटाइम प्रो';

  @override
  String get yearlyPro => 'वार्षिक प्रो';

  @override
  String get monthlyPro => 'मासिक प्रो';

  @override
  String get weeklyPro => 'साप्ताहिक प्रो';

  @override
  String get onlyBuyOnce => 'केवल एक बार खरीदें';

  @override
  String get perYear => '/वर्ष';

  @override
  String get perMonth => '/महीना';

  @override
  String get perWeek => '/सप्ताह';

  @override
  String get mostPopular => 'सबसे लोकप्रिय';

  @override
  String get buyNow => 'अभी खरीदें';

  @override
  String get termsOfUse => 'उपयोग की शर्तें';

  @override
  String get privacyPolicy => 'गोपनीयता नीति';

  @override
  String get loadingPlans => 'प्लान लोड हो रहे हैं...';

  @override
  String get failedToLoadPlans => 'प्लान लोड करने में विफल';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String freeTrialDays(int days) {
    return '$days दिन का मुफ्त ट्रायल';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks सप्ताह का मुफ्त ट्रायल';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months महीने का मुफ्त ट्रायल';
  }

  @override
  String get supportedPlatforms => 'समर्थित प्लेटफॉर्म';

  @override
  String get supportThreads => 'वीडियो, इमेज और वॉइस नोट्स डाउनलोड करें';

  @override
  String get supportInstagram => 'वीडियो, इमेज, Reels, Stories और प्रोफाइल डाउनलोड करें';

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
