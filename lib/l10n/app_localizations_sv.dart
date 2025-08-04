// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

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
  String get enterTiktokUrl => 'Ange TikTok URL';

  @override
  String get howToUseTitle => 'Så här använder du:';

  @override
  String get howToUseStep1 => '1. Öppna TikTok och hitta videon du vill ladda ner.';

  @override
  String get howToUseStep2 => '2. Tryck på \'Dela\'-ikonen på höger sida av videon.';

  @override
  String get howToUseStep3 => '3. Välj \'Kopiera länk\'.';

  @override
  String get howToUseStep4 => '4. Klistra in länken i inmatningsfältet ovan och tryck på \'Ladda ner\'.';

  @override
  String get invalidUrlError => 'Ogiltigt TikTok URL-format.';

  @override
  String get fetchingMedia => 'Hämtar media...';

  @override
  String get downloadPhoto => 'Ladda ner foto';

  @override
  String get downloadVideo => 'Ladda ner video';

  @override
  String get downloadVoice => 'Ladda ner musik';

  @override
  String get downloadMp3 => 'Ladda ner MP3';

  @override
  String get downloading => 'Laddar ner...';

  @override
  String get downloadSuccess => 'Nedladdning klar!';

  @override
  String get downloadError => 'Nedladdning misslyckades. Försök igen.';

  @override
  String get downloadLimitReachedTitle => 'Nedladdningsgräns nådd';

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
  String get musicTab => 'Musik';

  @override
  String get view => 'Visa';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Byt namn';

  @override
  String get share => 'Dela';

  @override
  String get delete => 'Ta bort';

  @override
  String get mediaInfoTitle => 'Mediainformation';

  @override
  String get fileName => 'Namn';

  @override
  String get filePath => 'Sökväg';

  @override
  String get dateAdded => 'Datum tillagd';

  @override
  String get fileSize => 'Storlek';

  @override
  String get renameMediaTitle => 'Byt namn på media';

  @override
  String get enterNewName => 'Ange nytt namn';

  @override
  String get save => 'Spara';

  @override
  String get deleteConfirmationTitle => 'Bekräfta borttagning';

  @override
  String get deleteConfirmationMessage => 'Är du säker på att du vill ta bort den här filen? Den här åtgärden kan inte ångras.';

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
  String get settingsClaimSuccess => 'Framgång! Du har 5 fler nedladdningar.';

  @override
  String get settingsClaimError => 'Misslyckades att ladda annons. Försök igen senare.';

  @override
  String get settingsPremium => 'Uppgradera till Premium';

  @override
  String get settingsPremiumDescription => 'Ta bort annonser och få obegränsade nedladdningar.';

  @override
  String get settingsRestorePurchase => 'Återställ köp';

  @override
  String get settingsRestoreSuccess => 'Köp återställda framgångsrikt!';

  @override
  String get settingsRestoreError => 'Misslyckades att återställa köp. Ingen aktiv prenumeration hittades eller ett fel uppstod.';

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
  String get settingsRateApp => 'Betygsätt denna app';

  @override
  String get settingsShareApp => 'Dela denna app';

  @override
  String get premiumUser => 'Premium-användare';

  @override
  String get aboutTitle => 'Om TikTok Downloader';

  @override
  String get aboutContent => 'Den här appen hjälper dig att ladda ner offentliga videor, foton och ljud från TikTok-inlägg.\n\nRespektera upphovsrätt och integritet. Ladda endast ner innehåll som du har tillstånd att använda.';

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
  String get contactSuccess => 'Meddelande skickat framgångsrikt! Vi kommer att höra av oss snart.';

  @override
  String get contactError => 'Misslyckades att skicka meddelande. Försök igen senare.';

  @override
  String get permissionRequiredTitle => 'Tillstånd krävs';

  @override
  String get permissionStorageDenied => 'Lagringstillstånd krävs för att spara nedladdade filer. Bevilja tillstånd i inställningar.';

  @override
  String get permissionPhotosDenied => 'Fototillstånd krävs för att spara nedladdade filer (iOS). Bevilja tillstånd i inställningar.';

  @override
  String get permissionNotificationDenied => 'Aviseringstillstånd rekommenderas för uppdateringar av nedladdningsframsteg.';

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
  String get bestValue => 'Bästa värde';

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
  String get purchaseSuccess => 'Köp framgångsrikt!';

  @override
  String get alreadyPremium => 'Du är redan en Premium-användare.';

  @override
  String get getPremium => 'Skaffa Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Kvarvarande nedladdningar: $currentLimit. Du kan få gratis nedladdningar genom att titta på annonser';
  }

  @override
  String get unlockSaveVideoPro => 'Lås upp Premium-funktioner';

  @override
  String get noAdsUnlockAllFeatures => 'Inga annonser och lås upp alla funktioner';

  @override
  String get removeAds => 'Ta bort alla annonser';

  @override
  String get tiktokDownloads => 'Obegränsade HD-nedladdningar av videor, foton och musik från TikTok';

  @override
  String get instagramDownloads => 'Högkvalitativa nedladdningar utan vattenstämplar';

  @override
  String get lifetimePro => 'Livstids Pro';

  @override
  String get yearlyPro => 'Årlig Pro';

  @override
  String get monthlyPro => 'Månads Pro';

  @override
  String get weeklyPro => 'Vecko Pro';

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
  String get loadingPlans => 'Laddar planer...';

  @override
  String get failedToLoadPlans => 'Misslyckades att ladda planer';

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
  String get supportTiktok => 'Ladda ner videor, bilder, musik';

  @override
  String get supportInstagram => 'Högkvalitativa nedladdningar utan vattenstämplar';

  @override
  String get playlistTab => 'Spellista';

  @override
  String get authorsTab => 'Författare';

  @override
  String get createPlaylist => 'Skapa spellista';

  @override
  String get playlistTitle => 'Spellisttitel';

  @override
  String get playlistDescription => 'Beskrivning';

  @override
  String get chooseFiles => 'Välj filer';

  @override
  String get createPlaylistButton => 'Skapa spellista';

  @override
  String get playlistTitleHint => 'Ange spellisttitel';

  @override
  String get playlistDescriptionHint => 'Ange spellistbeskrivning (valfritt)';

  @override
  String get selectFiles => 'Välj filer att lägga till i spellistan';

  @override
  String get noPlaylistsYet => 'Inga spellistor än';

  @override
  String get createFirstPlaylist => 'Skapa din första spellista för att organisera dina nedladdningar';

  @override
  String get noAuthorsYet => 'Inga författare än';

  @override
  String get downloadSomethingFirst => 'Ladda ner lite innehåll först för att se författare här';

  @override
  String authorVideos(Object author) {
    return 'Videor av $author';
  }

  @override
  String get noVideosFromAuthor => 'Inga videor från den här författaren än';

  @override
  String errorLoadingLibrary(Object error) {
    return 'Fel vid laddning av bibliotek: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'Din nedladdade media kommer att visas här.';

  @override
  String get noPhotosDownloadedYet => 'Inga foton nedladdade ännu.';

  @override
  String get noVideosDownloadedYet => 'Inga videor nedladdade ännu.';

  @override
  String get noAudioDownloadedYet => 'Ingen musik nedladdad ännu.';

  @override
  String get somethingWentWrong => 'Något gick fel.';
}
