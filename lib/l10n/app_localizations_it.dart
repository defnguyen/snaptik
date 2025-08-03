// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Home';

  @override
  String get libraryTab => 'Libreria';

  @override
  String get settingsTab => 'Impostazioni';

  @override
  String get pasteLink => 'Incolla Link';

  @override
  String get clear => 'Cancella';

  @override
  String get download => 'Scarica';

  @override
  String get enterThreadsUrl => 'Inserisci URL Threads/Instagram';

  @override
  String get howToUseTitle => 'Come Usare:';

  @override
  String get howToUseStep1 => '1. Apri Threads e trova il post che vuoi scaricare.';

  @override
  String get howToUseStep2 => '2. Tocca l\'icona \'Condividi\' sotto il post.';

  @override
  String get howToUseStep3 => '3. Scegli \'Copia link\'.';

  @override
  String get howToUseStep4 => '4. Incolla il link nel campo sopra e tocca \'Scarica\'.';

  @override
  String get invalidUrlError => 'Formato URL di Threads non valido.';

  @override
  String get fetchingMedia => 'Recupero media in corso...';

  @override
  String get downloadPhoto => 'Scarica Foto';

  @override
  String get downloadVideo => 'Scarica Video';

  @override
  String get downloadVoice => 'Scarica Audio';

  @override
  String get downloadMp3 => 'Scarica MP3';

  @override
  String get downloading => 'Download in corso...';

  @override
  String get downloadSuccess => 'Download completato!';

  @override
  String get downloadError => 'Download fallito. Riprova per favore.';

  @override
  String get downloadLimitReachedTitle => 'Limite di Download Raggiunto';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Hai raggiunto il limite di download ($limit volte). Guarda un breve annuncio per ottenere altri 5 tentativi di download.';
  }

  @override
  String get watchAd => 'Guarda Annuncio';

  @override
  String get cancel => 'Annulla';

  @override
  String get photosTab => 'Foto';

  @override
  String get videosTab => 'Video';

  @override
  String get voiceTab => 'Audio';

  @override
  String get view => 'Visualizza';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Rinomina';

  @override
  String get share => 'Condividi';

  @override
  String get delete => 'Elimina';

  @override
  String get mediaInfoTitle => 'Informazioni Media';

  @override
  String get fileName => 'Nome';

  @override
  String get filePath => 'Percorso';

  @override
  String get dateAdded => 'Data Aggiunta';

  @override
  String get fileSize => 'Dimensione';

  @override
  String get renameMediaTitle => 'Rinomina Media';

  @override
  String get enterNewName => 'Inserisci nuovo nome';

  @override
  String get save => 'Salva';

  @override
  String get deleteConfirmationTitle => 'Conferma Eliminazione';

  @override
  String get deleteConfirmationMessage => 'Sei sicuro di voler eliminare questo file? Questa azione non può essere annullata.';

  @override
  String get confirm => 'Conferma';

  @override
  String get settingsLanguage => 'Lingua';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Chiaro';

  @override
  String get settingsThemeDark => 'Scuro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsClaimMoreDownloads => 'Ottieni 5 Download in Più';

  @override
  String get settingsClaimSuccess => 'Successo! Hai altri 5 download.';

  @override
  String get settingsClaimError => 'Impossibile caricare l\'annuncio. Riprova più tardi.';

  @override
  String get settingsPremium => 'Passa a Premium';

  @override
  String get settingsPremiumDescription => 'Rimuovi gli annunci e ottieni download illimitati.';

  @override
  String get settingsRestorePurchase => 'Ripristina Acquisto';

  @override
  String get settingsRestoreSuccess => 'Acquisti ripristinati con successo!';

  @override
  String get settingsRestoreError => 'Impossibile ripristinare gli acquisti. Nessun abbonamento attivo trovato o si è verificato un errore.';

  @override
  String get settingsGeneralSection => 'Generale';

  @override
  String get settingsDownloadsSection => 'Download';

  @override
  String get settingsAccountSection => 'Account';

  @override
  String get settingsSupportSection => 'Supporto e Feedback';

  @override
  String get settingsAbout => 'Info';

  @override
  String get settingsContact => 'Contattaci';

  @override
  String get settingsRateApp => 'Valuta questa App';

  @override
  String get settingsShareApp => 'Condividi questa App';

  @override
  String get premiumUser => 'Utente Premium';

  @override
  String get aboutTitle => 'Info su Threads Downloader';

  @override
  String get aboutContent => 'Questa app ti aiuta a scaricare foto, video e note vocali pubbliche dai post di Threads.\n\nRispetta il copyright e la privacy. Scarica solo contenuti che hai il permesso di utilizzare.';

  @override
  String get contactTitle => 'Contattaci';

  @override
  String get contactNameHint => 'Il Tuo Nome';

  @override
  String get contactEmailHint => 'La Tua Email';

  @override
  String get contactMessageHint => 'Il Tuo Messaggio';

  @override
  String get contactSendButton => 'Invia Messaggio';

  @override
  String get contactSending => 'Invio in corso...';

  @override
  String get contactSuccess => 'Messaggio inviato con successo! Ti risponderemo presto.';

  @override
  String get contactError => 'Impossibile inviare il messaggio. Riprova più tardi.';

  @override
  String get permissionRequiredTitle => 'Autorizzazione Richiesta';

  @override
  String get permissionStorageDenied => 'L\'autorizzazione di archiviazione è necessaria per salvare i file scaricati. Concedi l\'autorizzazione nelle impostazioni.';

  @override
  String get permissionPhotosDenied => 'L\'autorizzazione per le foto è necessaria per salvare i file scaricati (iOS). Concedi l\'autorizzazione nelle impostazioni.';

  @override
  String get permissionNotificationDenied => 'L\'autorizzazione per le notifiche è consigliata per gli aggiornamenti sull\'avanzamento del download.';

  @override
  String get permissiongoToSettings => 'Vai alle Impostazioni';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Aggiorna Ora';

  @override
  String get chooseYourPlan => 'Scegli il Tuo Piano';

  @override
  String get planWeekly => 'Settimanale';

  @override
  String get planMonthly => 'Mensile';

  @override
  String get planAnnually => 'Annuale';

  @override
  String get planLifetime => 'A Vita';

  @override
  String get oneTimePurchase => 'Acquisto Una Tantum';

  @override
  String savePercent(String percent) {
    return 'Risparmia $percent%';
  }

  @override
  String get bestValue => 'Miglior Valore';

  @override
  String get selectPlanErrorTitle => 'Errore nel Caricamento dei Piani';

  @override
  String get selectPlanErrorMessage => 'Impossibile caricare i piani di abbonamento. Controlla la tua connessione internet e riprova.';

  @override
  String get purchaseFailed => 'Acquisto Fallito';

  @override
  String get purchaseCancelled => 'Acquisto Annullato';

  @override
  String get purchasePending => 'Acquisto in Sospeso';

  @override
  String get purchaseSuccess => 'Acquisto Completato!';

  @override
  String get alreadyPremium => 'Sei già un utente Premium.';

  @override
  String get getPremium => 'Ottieni Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Download rimanenti: $currentLimit. Puoi ottenere download gratuiti guardando gli annunci';
  }

  @override
  String get unlockSaveVideoPro => 'Sblocca le funzionalità premium';

  @override
  String get noAdsUnlockAllFeatures => 'Nessuna pubblicità e sblocca tutte le funzionalità';

  @override
  String get removeAds => 'Rimuovi tutte le pubblicità';

  @override
  String get threadsDownloads => 'Download HD illimitati di video, foto e messaggi vocali da Threads';

  @override
  String get instagramDownloads => 'Download HD illimitati di video, foto, reel, storie e profili completi da Instagram';

  @override
  String get lifetimePro => 'Pro a vita';

  @override
  String get yearlyPro => 'Pro annuale';

  @override
  String get monthlyPro => 'Pro mensile';

  @override
  String get weeklyPro => 'Pro settimanale';

  @override
  String get onlyBuyOnce => 'Acquista solo una volta';

  @override
  String get perYear => '/anno';

  @override
  String get perMonth => '/mese';

  @override
  String get perWeek => '/settimana';

  @override
  String get mostPopular => 'Più popolare';

  @override
  String get buyNow => 'Acquista ora';

  @override
  String get termsOfUse => 'Termini di utilizzo';

  @override
  String get privacyPolicy => 'Informativa sulla privacy';

  @override
  String get loadingPlans => 'Caricamento piani...';

  @override
  String get failedToLoadPlans => 'Caricamento piani fallito';

  @override
  String get retry => 'Riprova';

  @override
  String freeTrialDays(int days) {
    return 'Prova gratuita di $days giorni';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Prova gratuita di $weeks settimane';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Prova gratuita di $months mesi';
  }

  @override
  String get supportedPlatforms => 'Piattaforme supportate';

  @override
  String get supportThreads => 'Scarica video, immagini e note vocali';

  @override
  String get supportInstagram => 'Scarica video, immagini, Reels, Stories e profili';

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
