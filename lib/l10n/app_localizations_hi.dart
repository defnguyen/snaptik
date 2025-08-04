// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'TikTok डाउनलोडर';

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
  String get download => 'डाउनलोड';

  @override
  String get enterTiktokUrl => 'TikTok URL डालें';

  @override
  String get howToUseTitle => 'कैसे इस्तेमाल करें:';

  @override
  String get howToUseStep1 => '1. TikTok खोलें और वह वीडियो ढूंढें जिसे आप डाउनलोड करना चाहते हैं।';

  @override
  String get howToUseStep2 => '2. वीडियो के दाईं ओर \'शेयर\' आइकन पर टैप करें।';

  @override
  String get howToUseStep3 => '3. \'लिंक कॉपी करें\' चुनें।';

  @override
  String get howToUseStep4 => '4. लिंक को ऊपर इनपुट फील्ड में पेस्ट करें और \'डाउनलोड\' पर टैप करें।';

  @override
  String get invalidUrlError => 'गलत TikTok URL फॉर्मेट।';

  @override
  String get fetchingMedia => 'मीडिया लाया जा रहा है...';

  @override
  String get downloadPhoto => 'फोटो डाउनलोड करें';

  @override
  String get downloadVideo => 'वीडियो डाउनलोड करें';

  @override
  String get downloadVoice => 'संगीत डाउनलोड करें';

  @override
  String get downloadMp3 => 'MP3 डाउनलोड करें';

  @override
  String get downloading => 'डाउनलोड हो रहा है...';

  @override
  String get downloadSuccess => 'डाउनलोड पूरा हुआ!';

  @override
  String get downloadError => 'डाउनलोड फेल हुआ। कृपया फिर से कोशिश करें।';

  @override
  String get downloadLimitReachedTitle => 'डाउनलोड लिमिट पहुंच गई';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'आपकी डाउनलोड लिमिट पहुंच गई है ($limit बार)। 5 और डाउनलोड अटेम्प्ट पाने के लिए एक छोटा विज्ञापन देखें।';
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
  String get musicTab => 'संगीत';

  @override
  String get view => 'देखें';

  @override
  String get info => 'जानकारी';

  @override
  String get rename => 'नाम बदलें';

  @override
  String get share => 'शेयर करें';

  @override
  String get delete => 'डिलीट करें';

  @override
  String get mediaInfoTitle => 'मीडिया जानकारी';

  @override
  String get fileName => 'नाम';

  @override
  String get filePath => 'पाथ';

  @override
  String get dateAdded => 'जोड़ने की तारीख';

  @override
  String get fileSize => 'साइज़';

  @override
  String get renameMediaTitle => 'मीडिया नाम बदलें';

  @override
  String get enterNewName => 'नया नाम डालें';

  @override
  String get save => 'सेव करें';

  @override
  String get deleteConfirmationTitle => 'डिलीट कन्फर्म करें';

  @override
  String get deleteConfirmationMessage => 'क्या आप वाकई इस फाइल को डिलीट करना चाहते हैं? यह एक्शन अनडू नहीं हो सकता।';

  @override
  String get confirm => 'कन्फर्म करें';

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
  String get settingsClaimMoreDownloads => '5 और डाउनलोड पाएं';

  @override
  String get settingsClaimSuccess => 'सफलता! आपके पास 5 और डाउनलोड हैं।';

  @override
  String get settingsClaimError => 'विज्ञापन लोड नहीं हुआ। कृपया बाद में कोशिश करें।';

  @override
  String get settingsPremium => 'प्रीमियम में अपग्रेड करें';

  @override
  String get settingsPremiumDescription => 'विज्ञापन हटाएं और अनलिमिटेड डाउनलोड पाएं।';

  @override
  String get settingsRestorePurchase => 'खरीदारी रिस्टोर करें';

  @override
  String get settingsRestoreSuccess => 'खरीदारी सफलतापूर्वक रिस्टोर हुई!';

  @override
  String get settingsRestoreError => 'खरीदारी रिस्टोर नहीं हुई। कोई एक्टिव सब्सक्रिप्शन नहीं मिली या एरर हुआ।';

  @override
  String get settingsGeneralSection => 'सामान्य';

  @override
  String get settingsDownloadsSection => 'डाउनलोड्स';

  @override
  String get settingsAccountSection => 'अकाउंट';

  @override
  String get settingsSupportSection => 'सपोर्ट और फीडबैक';

  @override
  String get settingsAbout => 'के बारे में';

  @override
  String get settingsContact => 'संपर्क करें';

  @override
  String get settingsRateApp => 'इस ऐप को रेट करें';

  @override
  String get settingsShareApp => 'इस ऐप को शेयर करें';

  @override
  String get premiumUser => 'प्रीमियम यूजर';

  @override
  String get aboutTitle => 'TikTok डाउनलोडर के बारे में';

  @override
  String get aboutContent => 'यह ऐप आपको TikTok पोस्ट्स से पब्लिक वीडियो, फोटो और ऑडियो डाउनलोड करने में मदद करता है।\n\nकृपया कॉपीराइट और प्राइवेसी का सम्मान करें। केवल वही कंटेंट डाउनलोड करें जिसे इस्तेमाल करने की आपको अनुमति है।';

  @override
  String get contactTitle => 'संपर्क करें';

  @override
  String get contactNameHint => 'आपका नाम';

  @override
  String get contactEmailHint => 'आपका ईमेल';

  @override
  String get contactMessageHint => 'आपका संदेश';

  @override
  String get contactSendButton => 'संदेश भेजें';

  @override
  String get contactSending => 'भेजा जा रहा है...';

  @override
  String get contactSuccess => 'संदेश सफलतापूर्वक भेजा गया! हम जल्दी आपसे संपर्क करेंगे।';

  @override
  String get contactError => 'संदेश भेजने में असफल। कृपया बाद में कोशिश करें।';

  @override
  String get permissionRequiredTitle => 'अनुमति आवश्यक';

  @override
  String get permissionStorageDenied => 'डाउनलोड की गई फाइलों को सेव करने के लिए स्टोरेज अनुमति आवश्यक है। कृपया सेटिंग्स में अनुमति दें।';

  @override
  String get permissionPhotosDenied => 'डाउनलोड की गई फाइलों को सेव करने के लिए फोटो अनुमति आवश्यक है (iOS)। कृपया सेटिंग्स में अनुमति दें।';

  @override
  String get permissionNotificationDenied => 'डाउनलोड प्रोग्रेस अपडेट के लिए नोटिफिकेशन अनुमति की सिफारिश की जाती है।';

  @override
  String get permissiongoToSettings => 'सेटिंग्स पर जाएं';

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
  String get planLifetime => 'जीवनभर';

  @override
  String get oneTimePurchase => 'एक बार की खरीदारी';

  @override
  String savePercent(String percent) {
    return '$percent% बचाएं';
  }

  @override
  String get bestValue => 'सबसे अच्छी वैल्यू';

  @override
  String get selectPlanErrorTitle => 'प्लान लोड करने में एरर';

  @override
  String get selectPlanErrorMessage => 'सब्सक्रिप्शन प्लान लोड नहीं हो सके। कृपया अपना इंटरनेट कनेक्शन चेक करें और फिर कोशिश करें।';

  @override
  String get purchaseFailed => 'खरीदारी असफल';

  @override
  String get purchaseCancelled => 'खरीदारी रद्द';

  @override
  String get purchasePending => 'खरीदारी पेंडिंग';

  @override
  String get purchaseSuccess => 'खरीदारी सफल!';

  @override
  String get alreadyPremium => 'आप पहले से ही प्रीमियम यूजर हैं।';

  @override
  String get getPremium => 'प्रीमियम पाएं';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'बचे हुए डाउनलोड्स: $currentLimit। आप विज्ञापन देखकर मुफ्त डाउनलोड्स पा सकते हैं';
  }

  @override
  String get unlockSaveVideoPro => 'प्रीमियम फीचर्स अनलॉक करें';

  @override
  String get noAdsUnlockAllFeatures => 'कोई विज्ञापन नहीं और सभी फीचर्स अनलॉक करें';

  @override
  String get removeAds => 'सभी विज्ञापन हटाएं';

  @override
  String get tiktokDownloads => 'TikTok से वीडियो, फोटो और संगीत के अनलिमिटेड HD डाउनलोड्स';

  @override
  String get instagramDownloads => 'वॉटरमार्क के बिना हाई क्वालिटी डाउनलोड्स';

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
  String get privacyPolicy => 'प्राइवेसी पॉलिसी';

  @override
  String get loadingPlans => 'प्लान लोड हो रहे हैं...';

  @override
  String get failedToLoadPlans => 'प्लान लोड नहीं हुए';

  @override
  String get retry => 'फिर कोशिश करें';

  @override
  String freeTrialDays(int days) {
    return '$days दिन का मुफ्त ट्रायल';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks हफ्ते का मुफ्त ट्रायल';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months महीने का मुफ्त ट्रायल';
  }

  @override
  String get supportedPlatforms => 'समर्थित प्लेटफॉर्म';

  @override
  String get supportTiktok => 'वीडियो, इमेज, संगीत डाउनलोड करें';

  @override
  String get supportInstagram => 'वॉटरमार्क के बिना हाई क्वालिटी डाउनलोड्स';

  @override
  String get playlistTab => 'प्लेलिस्ट';

  @override
  String get authorsTab => 'लेखक';

  @override
  String get createPlaylist => 'प्लेलिस्ट बनाएं';

  @override
  String get playlistTitle => 'प्लेलिस्ट टाइटल';

  @override
  String get playlistDescription => 'विवरण';

  @override
  String get chooseFiles => 'फाइलें चुनें';

  @override
  String get createPlaylistButton => 'प्लेलिस्ट बनाएं';

  @override
  String get playlistTitleHint => 'प्लेलिस्ट टाइटल डालें';

  @override
  String get playlistDescriptionHint => 'प्लेलिस्ट विवरण डालें (वैकल्पिक)';

  @override
  String get selectFiles => 'प्लेलिस्ट में जोड़ने के लिए फाइलें चुनें';

  @override
  String get noPlaylistsYet => 'अभी तक कोई प्लेलिस्ट नहीं';

  @override
  String get createFirstPlaylist => 'अपने डाउनलोड्स को व्यवस्थित करने के लिए अपनी पहली प्लेलिस्ट बनाएं';

  @override
  String get noAuthorsYet => 'अभी तक कोई लेखक नहीं';

  @override
  String get downloadSomethingFirst => 'यहां लेखकों को देखने के लिए पहले कुछ कंटेंट डाउनलोड करें';

  @override
  String authorVideos(Object author) {
    return '$author के वीडियो';
  }

  @override
  String get noVideosFromAuthor => 'इस लेखक से अभी तक कोई वीडियो नहीं';

  @override
  String errorLoadingLibrary(Object error) {
    return 'लाइब्रेरी लोड करने में त्रुटि: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'आपकी डाउनलोड की गई मीडिया यहाँ दिखाई देगी।';

  @override
  String get noPhotosDownloadedYet => 'अभी तक कोई फोटो डाउनलोड नहीं किया गया।';

  @override
  String get noVideosDownloadedYet => 'अभी तक कोई वीडियो डाउनलोड नहीं किया गया।';

  @override
  String get noAudioDownloadedYet => 'अभी तक कोई संगीत डाउनलोड नहीं किया गया।';

  @override
  String get somethingWentWrong => 'कुछ गलत हुआ।';
}
