// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

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
  String get enterThreadsUrl => 'Voer Threads/Instagram URL in';

  @override
  String get howToUseTitle => 'Gebruiksaanwijzing:';

  @override
  String get howToUseStep1 => '1. Open Threads en zoek het bericht dat je wilt downloaden.';

  @override
  String get howToUseStep2 => '2. Tik op het \'Delen\' pictogram onder het bericht.';

  @override
  String get howToUseStep3 => '3. Kies \'Link kopiëren\'.';

  @override
  String get howToUseStep4 => '4. Plak de link in het invoerveld hierboven en tik op \'Downloaden\'.';

  @override
  String get invalidUrlError => 'Ongeldig Threads URL-formaat.';

  @override
  String get fetchingMedia => 'Media ophalen...';

  @override
  String get downloadPhoto => 'Foto downloaden';

  @override
  String get downloadVideo => 'Video downloaden';

  @override
  String get downloadVoice => 'Spraak downloaden';

  @override
  String get downloadMp3 => 'MP3 downloaden';

  @override
  String get downloading => 'Downloaden...';

  @override
  String get downloadSuccess => 'Download voltooid!';

  @override
  String get downloadError => 'Download mislukt. Probeer het opnieuw.';

  @override
  String get downloadLimitReachedTitle => 'Downloadlimiet bereikt';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Je hebt de downloadlimiet bereikt ($limit keer). Bekijk een korte advertentie om nog 5 downloadpogingen te krijgen.';
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
  String get voiceTab => 'Spraak';

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
  String get deleteConfirmationTitle => 'Verwijderen bevestigen';

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
  String get settingsClaimMoreDownloads => 'Krijg 5 extra downloads';

  @override
  String get settingsClaimSuccess => 'Gelukt! Je hebt 5 extra downloads.';

  @override
  String get settingsClaimError => 'Kan advertentie niet laden. Probeer het later opnieuw.';

  @override
  String get settingsPremium => 'Upgraden naar Premium';

  @override
  String get settingsPremiumDescription => 'Verwijder advertenties en krijg onbeperkt downloads.';

  @override
  String get settingsRestorePurchase => 'Aankoop herstellen';

  @override
  String get settingsRestoreSuccess => 'Aankopen succesvol hersteld!';

  @override
  String get settingsRestoreError => 'Kan aankopen niet herstellen. Geen actief abonnement gevonden of er is een fout opgetreden.';

  @override
  String get settingsGeneralSection => 'Algemeen';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Account';

  @override
  String get settingsSupportSection => 'Ondersteuning & Feedback';

  @override
  String get settingsAbout => 'Over';

  @override
  String get settingsContact => 'Neem contact op';

  @override
  String get settingsRateApp => 'Beoordeel deze app';

  @override
  String get settingsShareApp => 'Deel deze app';

  @override
  String get premiumUser => 'Premium gebruiker';

  @override
  String get aboutTitle => 'Over Threads Downloader';

  @override
  String get aboutContent => 'Deze app helpt je bij het downloaden van openbare foto\'s, video\'s en spraaknotities van Threads-berichten.\n\nRespecteer auteursrecht en privacy. Download alleen content die je toestemming hebt om te gebruiken.';

  @override
  String get contactTitle => 'Neem contact op';

  @override
  String get contactNameHint => 'Jouw naam';

  @override
  String get contactEmailHint => 'Jouw e-mail';

  @override
  String get contactMessageHint => 'Jouw bericht';

  @override
  String get contactSendButton => 'Bericht versturen';

  @override
  String get contactSending => 'Versturen...';

  @override
  String get contactSuccess => 'Bericht succesvol verzonden! We nemen binnenkort contact met je op.';

  @override
  String get contactError => 'Kan bericht niet versturen. Probeer het later opnieuw.';

  @override
  String get permissionRequiredTitle => 'Toestemming vereist';

  @override
  String get permissionStorageDenied => 'Opslagtoestemming is vereist om gedownloade bestanden op te slaan. Geef toestemming in de instellingen.';

  @override
  String get permissionPhotosDenied => 'Fototoestemming is vereist om gedownloade bestanden op te slaan (iOS). Geef toestemming in de instellingen.';

  @override
  String get permissionNotificationDenied => 'Notificatietoestemming wordt aanbevolen voor updates over de downloadvoortgang.';

  @override
  String get permissiongoToSettings => 'Ga naar Instellingen';

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
  String get selectPlanErrorMessage => 'Kan abonnementen niet laden. Controleer je internetverbinding en probeer het opnieuw.';

  @override
  String get purchaseFailed => 'Aankoop mislukt';

  @override
  String get purchaseCancelled => 'Aankoop geannuleerd';

  @override
  String get purchasePending => 'Aankoop in behandeling';

  @override
  String get purchaseSuccess => 'Aankoop geslaagd!';

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
  String get noAdsUnlockAllFeatures => 'Geen advertenties & alle functies ontgrendelen';

  @override
  String get removeAds => 'Alle advertenties verwijderen';

  @override
  String get threadsDownloads => 'Onbeperkte HD downloads van video\'s, foto\'s en spraakberichten van Threads';

  @override
  String get instagramDownloads => 'Onbeperkte HD downloads van video\'s, foto\'s, reels, verhalen en volledige profielen van Instagram';

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
  String get failedToLoadPlans => 'Laden van abonnementen mislukt';

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
  String get supportedPlatforms => 'Ondersteunde platforms';

  @override
  String get supportThreads => 'Download video\'s, afbeeldingen en spraakberichten';

  @override
  String get supportInstagram => 'Download video\'s, afbeeldingen, Reels, Stories en profielen';

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
