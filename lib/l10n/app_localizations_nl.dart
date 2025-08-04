// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

  @override
  String get homeTab => 'Home';

  @override
  String get libraryTab => 'Bibliotheek';

  @override
  String get settingsTab => 'Instellingen';

  @override
  String get pasteLink => 'Link plakken';

  @override
  String get clear => 'Wissen';

  @override
  String get download => 'Downloaden';

  @override
  String get enterTiktokUrl => 'Voer TikTok URL in';

  @override
  String get howToUseTitle => 'Hoe te gebruiken:';

  @override
  String get howToUseStep1 => '1. Open TikTok en vind de video die je wilt downloaden.';

  @override
  String get howToUseStep2 => '2. Tik op het \'Delen\' icoon aan de rechterkant van de video.';

  @override
  String get howToUseStep3 => '3. Kies \'Link kopiëren\'.';

  @override
  String get howToUseStep4 => '4. Plak de link in het invoerveld hierboven en tik op \'Downloaden\'.';

  @override
  String get invalidUrlError => 'Ongeldig TikTok URL formaat.';

  @override
  String get fetchingMedia => 'Media ophalen...';

  @override
  String get downloadPhoto => 'Foto downloaden';

  @override
  String get downloadVideo => 'Video downloaden';

  @override
  String get downloadVoice => 'Muziek downloaden';

  @override
  String get downloadMp3 => 'MP3 downloaden';

  @override
  String get downloading => 'Downloaden...';

  @override
  String get downloadSuccess => 'Download voltooid!';

  @override
  String get downloadError => 'Download mislukt. Probeer opnieuw.';

  @override
  String get downloadLimitReachedTitle => 'Downloadlimiet bereikt';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Je hebt de downloadlimiet bereikt ($limit keer). Bekijk een korte advertentie om 5 extra downloadpogingen te krijgen.';
  }

  @override
  String get watchAd => 'Advertentie bekijken';

  @override
  String get cancel => 'Annuleren';

  @override
  String get photosTab => 'Foto\'s';

  @override
  String get videosTab => 'Video\'s';

  @override
  String get musicTab => 'Muziek';

  @override
  String get view => 'Bekijken';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Hernoemen';

  @override
  String get share => 'Delen';

  @override
  String get delete => 'Verwijderen';

  @override
  String get mediaInfoTitle => 'Media-informatie';

  @override
  String get fileName => 'Naam';

  @override
  String get filePath => 'Pad';

  @override
  String get dateAdded => 'Datum toegevoegd';

  @override
  String get fileSize => 'Grootte';

  @override
  String get renameMediaTitle => 'Media hernoemen';

  @override
  String get enterNewName => 'Voer nieuwe naam in';

  @override
  String get save => 'Opslaan';

  @override
  String get deleteConfirmationTitle => 'Verwijdering bevestigen';

  @override
  String get deleteConfirmationMessage => 'Weet je zeker dat je dit bestand wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get settingsLanguage => 'Taal';

  @override
  String get settingsTheme => 'Thema';

  @override
  String get settingsThemeLight => 'Licht';

  @override
  String get settingsThemeDark => 'Donker';

  @override
  String get settingsThemeSystem => 'Systeem';

  @override
  String get settingsClaimMoreDownloads => '5 extra downloads krijgen';

  @override
  String get settingsClaimSuccess => 'Gelukt! Je hebt 5 extra downloads.';

  @override
  String get settingsClaimError => 'Advertentie laden mislukt. Probeer later opnieuw.';

  @override
  String get settingsPremium => 'Upgraden naar Premium';

  @override
  String get settingsPremiumDescription => 'Verwijder advertenties en krijg onbeperkte downloads.';

  @override
  String get settingsRestorePurchase => 'Aankoop herstellen';

  @override
  String get settingsRestoreSuccess => 'Aankopen succesvol hersteld!';

  @override
  String get settingsRestoreError => 'Aankopen herstellen mislukt. Geen actief abonnement gevonden of er is een fout opgetreden.';

  @override
  String get settingsGeneralSection => 'Algemeen';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Account';

  @override
  String get settingsSupportSection => 'Ondersteuning en feedback';

  @override
  String get settingsAbout => 'Over';

  @override
  String get settingsContact => 'Contact opnemen';

  @override
  String get settingsRateApp => 'Deze app beoordelen';

  @override
  String get settingsShareApp => 'Deze app delen';

  @override
  String get premiumUser => 'Premium gebruiker';

  @override
  String get aboutTitle => 'Over TikTok Downloader';

  @override
  String get aboutContent => 'Deze app helpt je bij het downloaden van openbare video\'s, foto\'s en audio van TikTok berichten.\n\nRespecteer copyright en privacy. Download alleen inhoud die je toestemming hebt om te gebruiken.';

  @override
  String get contactTitle => 'Contact opnemen';

  @override
  String get contactNameHint => 'Je naam';

  @override
  String get contactEmailHint => 'Je e-mail';

  @override
  String get contactMessageHint => 'Je bericht';

  @override
  String get contactSendButton => 'Bericht verzenden';

  @override
  String get contactSending => 'Verzenden...';

  @override
  String get contactSuccess => 'Bericht succesvol verzonden! We nemen snel contact met je op.';

  @override
  String get contactError => 'Bericht verzenden mislukt. Probeer later opnieuw.';

  @override
  String get permissionRequiredTitle => 'Toestemming vereist';

  @override
  String get permissionStorageDenied => 'Opslagtoestemming is vereist om gedownloade bestanden op te slaan. Geef toestemming in de instellingen.';

  @override
  String get permissionPhotosDenied => 'Foto\'s toestemming is vereist om gedownloade bestanden op te slaan (iOS). Geef toestemming in de instellingen.';

  @override
  String get permissionNotificationDenied => 'Meldingstoestemming wordt aanbevolen voor download voortgang updates.';

  @override
  String get permissiongoToSettings => 'Ga naar instellingen';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Nu upgraden';

  @override
  String get chooseYourPlan => 'Kies je abonnement';

  @override
  String get planWeekly => 'Wekelijks';

  @override
  String get planMonthly => 'Maandelijks';

  @override
  String get planAnnually => 'Jaarlijks';

  @override
  String get planLifetime => 'Levenslang';

  @override
  String get oneTimePurchase => 'Eenmalige aankoop';

  @override
  String savePercent(String percent) {
    return 'Bespaar $percent%';
  }

  @override
  String get bestValue => 'Beste waarde';

  @override
  String get selectPlanErrorTitle => 'Fout bij laden abonnementen';

  @override
  String get selectPlanErrorMessage => 'Kon abonnementen niet laden. Controleer je internetverbinding en probeer opnieuw.';

  @override
  String get purchaseFailed => 'Aankoop mislukt';

  @override
  String get purchaseCancelled => 'Aankoop geannuleerd';

  @override
  String get purchasePending => 'Aankoop in behandeling';

  @override
  String get purchaseSuccess => 'Aankoop gelukt!';

  @override
  String get alreadyPremium => 'Je bent al een Premium gebruiker.';

  @override
  String get getPremium => 'Premium krijgen';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Resterende downloads: $currentLimit. Je kunt gratis downloads krijgen door advertenties te bekijken';
  }

  @override
  String get unlockSaveVideoPro => 'Premium functies ontgrendelen';

  @override
  String get noAdsUnlockAllFeatures => 'Geen advertenties en alle functies ontgrendelen';

  @override
  String get removeAds => 'Alle advertenties verwijderen';

  @override
  String get tiktokDownloads => 'Onbeperkte HD downloads van video\'s, foto\'s en muziek van TikTok';

  @override
  String get instagramDownloads => 'Hoge kwaliteit downloads zonder watermerken';

  @override
  String get lifetimePro => 'Levenslang Pro';

  @override
  String get yearlyPro => 'Jaarlijks Pro';

  @override
  String get monthlyPro => 'Maandelijks Pro';

  @override
  String get weeklyPro => 'Wekelijks Pro';

  @override
  String get onlyBuyOnce => 'Slechts één keer kopen';

  @override
  String get perYear => '/jaar';

  @override
  String get perMonth => '/maand';

  @override
  String get perWeek => '/week';

  @override
  String get mostPopular => 'Meest populair';

  @override
  String get buyNow => 'Nu kopen';

  @override
  String get termsOfUse => 'Gebruiksvoorwaarden';

  @override
  String get privacyPolicy => 'Privacybeleid';

  @override
  String get loadingPlans => 'Abonnementen laden...';

  @override
  String get failedToLoadPlans => 'Abonnementen laden mislukt';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String freeTrialDays(int days) {
    return '$days dagen gratis proefperiode';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks weken gratis proefperiode';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months maanden gratis proefperiode';
  }

  @override
  String get supportedPlatforms => 'Ondersteunde platformen';

  @override
  String get supportTiktok => 'Download video\'s, afbeeldingen, muziek';

  @override
  String get supportInstagram => 'Hoge kwaliteit downloads zonder watermerken';

  @override
  String get playlistTab => 'Afspeellijst';

  @override
  String get authorsTab => 'Auteurs';

  @override
  String get createPlaylist => 'Afspeellijst maken';

  @override
  String get playlistTitle => 'Afspeellijst titel';

  @override
  String get playlistDescription => 'Beschrijving';

  @override
  String get chooseFiles => 'Bestanden kiezen';

  @override
  String get createPlaylistButton => 'Afspeellijst maken';

  @override
  String get playlistTitleHint => 'Voer afspeellijst titel in';

  @override
  String get playlistDescriptionHint => 'Voer afspeellijst beschrijving in (optioneel)';

  @override
  String get selectFiles => 'Selecteer bestanden om toe te voegen aan afspeellijst';

  @override
  String get noPlaylistsYet => 'Nog geen afspeellijsten';

  @override
  String get createFirstPlaylist => 'Maak je eerste afspeellijst om je downloads te organiseren';

  @override
  String get noAuthorsYet => 'Nog geen auteurs';

  @override
  String get downloadSomethingFirst => 'Download eerst wat inhoud om auteurs hier te zien';

  @override
  String authorVideos(Object author) {
    return 'Video\'s van $author';
  }

  @override
  String get noVideosFromAuthor => 'Nog geen video\'s van deze auteur';
}
