// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Hem';

  @override
  String get libraryTab => 'Bibliotek';

  @override
  String get settingsTab => 'Inställningar';

  @override
  String get pasteLink => 'Klistra in länk';

  @override
  String get clear => 'Rensa';

  @override
  String get download => 'Ladda ner';

  @override
  String get enterThreadsUrl => 'Ange Threads/Instagram URL';

  @override
  String get howToUseTitle => 'Hur man använder:';

  @override
  String get howToUseStep1 => '1. Öppna Threads och hitta inlägget du vill ladda ner.';

  @override
  String get howToUseStep2 => '2. Tryck på \'Dela\'-ikonen under inlägget.';

  @override
  String get howToUseStep3 => '3. Välj \'Kopiera länk\'.';

  @override
  String get howToUseStep4 => '4. Klistra in länken i fältet ovan och tryck på \'Ladda ner\'.';

  @override
  String get invalidUrlError => 'Ogiltigt Threads URL-format.';

  @override
  String get fetchingMedia => 'Hämtar media...';

  @override
  String get downloadPhoto => 'Ladda ner foto';

  @override
  String get downloadVideo => 'Ladda ner video';

  @override
  String get downloadVoice => 'Ladda ner röst';

  @override
  String get downloadMp3 => 'Ladda ner MP3';

  @override
  String get downloading => 'Laddar ner...';

  @override
  String get downloadSuccess => 'Nedladdning klar!';

  @override
  String get downloadError => 'Nedladdning misslyckades. Försök igen.';

  @override
  String get downloadLimitReachedTitle => 'Nedladdningsgräns uppnådd';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Du har nått nedladdningsgränsen ($limit gånger). Titta på en kort annons för att få 5 fler nedladdningsförsök.';
  }

  @override
  String get watchAd => 'Titta på annons';

  @override
  String get cancel => 'Avbryt';

  @override
  String get photosTab => 'Foton';

  @override
  String get videosTab => 'Videor';

  @override
  String get voiceTab => 'Röst';

  @override
  String get view => 'Visa';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Byt namn';

  @override
  String get share => 'Dela';

  @override
  String get delete => 'Radera';

  @override
  String get mediaInfoTitle => 'Mediainformation';

  @override
  String get fileName => 'Namn';

  @override
  String get filePath => 'Sökväg';

  @override
  String get dateAdded => 'Datum tillagt';

  @override
  String get fileSize => 'Storlek';

  @override
  String get renameMediaTitle => 'Byt namn på media';

  @override
  String get enterNewName => 'Ange nytt namn';

  @override
  String get save => 'Spara';

  @override
  String get deleteConfirmationTitle => 'Bekräfta radering';

  @override
  String get deleteConfirmationMessage => 'Är du säker på att du vill radera den här filen? Denna åtgärd kan inte ångras.';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get settingsLanguage => 'Språk';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Ljust';

  @override
  String get settingsThemeDark => 'Mörkt';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsClaimMoreDownloads => 'Få 5 fler nedladdningar';

  @override
  String get settingsClaimSuccess => 'Lyckat! Du har 5 fler nedladdningar.';

  @override
  String get settingsClaimError => 'Kunde inte ladda annonsen. Försök igen senare.';

  @override
  String get settingsPremium => 'Uppgradera till Premium';

  @override
  String get settingsPremiumDescription => 'Ta bort annonser och få obegränsade nedladdningar.';

  @override
  String get settingsRestorePurchase => 'Återställ köp';

  @override
  String get settingsRestoreSuccess => 'Köp återställda framgångsrikt!';

  @override
  String get settingsRestoreError => 'Kunde inte återställa köp. Ingen aktiv prenumeration hittades eller ett fel uppstod.';

  @override
  String get settingsGeneralSection => 'Allmänt';

  @override
  String get settingsDownloadsSection => 'Nedladdningar';

  @override
  String get settingsAccountSection => 'Konto';

  @override
  String get settingsSupportSection => 'Support och feedback';

  @override
  String get settingsAbout => 'Om';

  @override
  String get settingsContact => 'Kontakta oss';

  @override
  String get settingsRateApp => 'Betygsätt appen';

  @override
  String get settingsShareApp => 'Dela appen';

  @override
  String get premiumUser => 'Premiumprenumerant';

  @override
  String get aboutTitle => 'Om Threads Downloader';

  @override
  String get aboutContent => 'Den här appen hjälper dig att ladda ner offentliga foton, videor och röstmeddelanden från Threads-inlägg.\n\nVänligen respektera upphovsrätt och integritet. Ladda bara ner innehåll som du har tillstånd att använda.';

  @override
  String get contactTitle => 'Kontakta oss';

  @override
  String get contactNameHint => 'Ditt namn';

  @override
  String get contactEmailHint => 'Din e-post';

  @override
  String get contactMessageHint => 'Ditt meddelande';

  @override
  String get contactSendButton => 'Skicka meddelande';

  @override
  String get contactSending => 'Skickar...';

  @override
  String get contactSuccess => 'Meddelande skickat! Vi återkommer till dig snart.';

  @override
  String get contactError => 'Kunde inte skicka meddelande. Försök igen senare.';

  @override
  String get permissionRequiredTitle => 'Behörighet krävs';

  @override
  String get permissionStorageDenied => 'Lagringsbehörighet krävs för att spara nedladdade filer. Vänligen ge behörighet i inställningarna.';

  @override
  String get permissionPhotosDenied => 'Fotobehörighet krävs för att spara nedladdade filer (iOS). Vänligen ge behörighet i inställningarna.';

  @override
  String get permissionNotificationDenied => 'Aviseringsbehörighet rekommenderas för uppdateringar om nedladdningsförlopp.';

  @override
  String get permissiongoToSettings => 'Gå till inställningar';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Uppgradera nu';

  @override
  String get chooseYourPlan => 'Välj din plan';

  @override
  String get planWeekly => 'Veckovis';

  @override
  String get planMonthly => 'Månadsvis';

  @override
  String get planAnnually => 'Årligen';

  @override
  String get planLifetime => 'Livstid';

  @override
  String get oneTimePurchase => 'Engångsköp';

  @override
  String savePercent(String percent) {
    return 'Spara $percent%';
  }

  @override
  String get bestValue => 'Bästa värdet';

  @override
  String get selectPlanErrorTitle => 'Fel vid laddning av planer';

  @override
  String get selectPlanErrorMessage => 'Kunde inte ladda prenumerationsplaner. Kontrollera din internetanslutning och försök igen.';

  @override
  String get purchaseFailed => 'Köp misslyckades';

  @override
  String get purchaseCancelled => 'Köp avbrutet';

  @override
  String get purchasePending => 'Köp väntar';

  @override
  String get purchaseSuccess => 'Köp lyckades!';

  @override
  String get alreadyPremium => 'Du är redan en Premiumprenumerant.';

  @override
  String get getPremium => 'Skaffa Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Återstående nedladdningar: $currentLimit. Du kan få gratis nedladdningar genom att titta på annonser';
  }

  @override
  String get unlockSaveVideoPro => 'Lås upp premiumfunktioner';

  @override
  String get noAdsUnlockAllFeatures => 'Inga annonser och lås upp alla funktioner';

  @override
  String get removeAds => 'Ta bort alla annonser';

  @override
  String get threadsDownloads => 'Obegränsade HD-nedladdningar av videor, foton och röstmeddelanden från Threads';

  @override
  String get instagramDownloads => 'Obegränsade HD-nedladdningar av videor, foton, reels, berättelser och fullständiga profiler från Instagram';

  @override
  String get lifetimePro => 'Livstids Pro';

  @override
  String get yearlyPro => 'Årlig Pro';

  @override
  String get monthlyPro => 'Månatlig Pro';

  @override
  String get weeklyPro => 'Veckovis Pro';

  @override
  String get onlyBuyOnce => 'Köp bara en gång';

  @override
  String get perYear => '/år';

  @override
  String get perMonth => '/månad';

  @override
  String get perWeek => '/vecka';

  @override
  String get mostPopular => 'Mest populär';

  @override
  String get buyNow => 'Köp nu';

  @override
  String get termsOfUse => 'Användarvillkor';

  @override
  String get privacyPolicy => 'Integritetspolicy';

  @override
  String get loadingPlans => 'Laddar abonnemang...';

  @override
  String get failedToLoadPlans => 'Misslyckades att ladda abonnemang';

  @override
  String get retry => 'Försök igen';

  @override
  String freeTrialDays(int days) {
    return '$days dagars gratis provperiod';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks veckors gratis provperiod';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months månaders gratis provperiod';
  }

  @override
  String get supportedPlatforms => 'Stödda plattformar';

  @override
  String get supportThreads => 'Ladda ner videor, bilder och röstmeddelanden';

  @override
  String get supportInstagram => 'Ladda ner videor, bilder, Reels, Stories och profiler';

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
