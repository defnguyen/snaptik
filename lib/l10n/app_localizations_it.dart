// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

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
  String get enterTiktokUrl => 'Inserisci URL TikTok';

  @override
  String get howToUseTitle => 'Come usare:';

  @override
  String get howToUseStep1 => '1. Apri TikTok e trova il video che vuoi scaricare.';

  @override
  String get howToUseStep2 => '2. Tocca l\'icona \'Condividi\' sul lato destro del video.';

  @override
  String get howToUseStep3 => '3. Scegli \'Copia link\'.';

  @override
  String get howToUseStep4 => '4. Incolla il link nel campo sopra e tocca \'Scarica\'.';

  @override
  String get invalidUrlError => 'Formato URL TikTok non valido.';

  @override
  String get fetchingMedia => 'Recupero media...';

  @override
  String get downloadPhoto => 'Scarica Foto';

  @override
  String get downloadVideo => 'Scarica Video';

  @override
  String get downloadVoice => 'Scarica Musica';

  @override
  String get downloadMp3 => 'Scarica MP3';

  @override
  String get downloading => 'Scaricando...';

  @override
  String get downloadSuccess => 'Download completato!';

  @override
  String get downloadError => 'Download fallito. Riprova.';

  @override
  String get downloadLimitReachedTitle => 'Limite Download Raggiunto';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Hai raggiunto il limite di download ($limit volte). Guarda una breve pubblicità per ottenere altri 5 tentativi di download.';
  }

  @override
  String get watchAd => 'Guarda Pubblicità';

  @override
  String get cancel => 'Annulla';

  @override
  String get photosTab => 'Foto';

  @override
  String get videosTab => 'Video';

  @override
  String get musicTab => 'Musica';

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
  String get settingsClaimSuccess => 'Successo! Hai 5 download in più.';

  @override
  String get settingsClaimError => 'Impossibile caricare la pubblicità. Riprova più tardi.';

  @override
  String get settingsPremium => 'Aggiorna a Premium';

  @override
  String get settingsPremiumDescription => 'Rimuovi le pubblicità e ottieni download illimitati.';

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
  String get settingsAbout => 'Informazioni';

  @override
  String get settingsContact => 'Contattaci';

  @override
  String get settingsRateApp => 'Valuta questa App';

  @override
  String get settingsShareApp => 'Condividi questa App';

  @override
  String get premiumUser => 'Utente Premium';

  @override
  String get aboutTitle => 'Informazioni su TikTok Downloader';

  @override
  String get aboutContent => 'Questa app ti aiuta a scaricare video, foto e audio pubblici dai post di TikTok.\n\nRispetta il copyright e la privacy. Scarica solo contenuti che hai il permesso di utilizzare.';

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
  String get contactSending => 'Invio...';

  @override
  String get contactSuccess => 'Messaggio inviato con successo! Ti risponderemo presto.';

  @override
  String get contactError => 'Impossibile inviare il messaggio. Riprova più tardi.';

  @override
  String get permissionRequiredTitle => 'Permesso Richiesto';

  @override
  String get permissionStorageDenied => 'Il permesso di archiviazione è necessario per salvare i file scaricati. Concedi il permesso nelle impostazioni.';

  @override
  String get permissionPhotosDenied => 'Il permesso foto è necessario per salvare i file scaricati (iOS). Concedi il permesso nelle impostazioni.';

  @override
  String get permissionNotificationDenied => 'Il permesso di notifica è consigliato per gli aggiornamenti del progresso di download.';

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
  String get oneTimePurchase => 'Acquisto Unico';

  @override
  String savePercent(String percent) {
    return 'Risparmia $percent%';
  }

  @override
  String get bestValue => 'Miglior Valore';

  @override
  String get selectPlanErrorTitle => 'Errore Caricamento Piani';

  @override
  String get selectPlanErrorMessage => 'Impossibile caricare i piani di abbonamento. Controlla la connessione internet e riprova.';

  @override
  String get purchaseFailed => 'Acquisto Fallito';

  @override
  String get purchaseCancelled => 'Acquisto Annullato';

  @override
  String get purchasePending => 'Acquisto in Sospeso';

  @override
  String get purchaseSuccess => 'Acquisto Riuscito!';

  @override
  String get alreadyPremium => 'Sei già un utente Premium.';

  @override
  String get getPremium => 'Ottieni Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Download rimanenti: $currentLimit. Puoi ottenere download gratuiti guardando le pubblicità';
  }

  @override
  String get unlockSaveVideoPro => 'Sblocca Funzionalità Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Nessuna Pubblicità e Sblocca Tutte le Funzionalità';

  @override
  String get removeAds => 'Rimuovi tutte le pubblicità';

  @override
  String get tiktokDownloads => 'Download HD illimitati di video, foto e musica da TikTok';

  @override
  String get instagramDownloads => 'Download di alta qualità senza watermark';

  @override
  String get lifetimePro => 'Pro a Vita';

  @override
  String get yearlyPro => 'Pro Annuale';

  @override
  String get monthlyPro => 'Pro Mensile';

  @override
  String get weeklyPro => 'Pro Settimanale';

  @override
  String get onlyBuyOnce => 'Compra solo una volta';

  @override
  String get perYear => '/anno';

  @override
  String get perMonth => '/mese';

  @override
  String get perWeek => '/settimana';

  @override
  String get mostPopular => 'Più Popolare';

  @override
  String get buyNow => 'Compra Ora';

  @override
  String get termsOfUse => 'Termini di Utilizzo';

  @override
  String get privacyPolicy => 'Informativa sulla Privacy';

  @override
  String get loadingPlans => 'Caricamento piani...';

  @override
  String get failedToLoadPlans => 'Impossibile caricare i piani';

  @override
  String get retry => 'Riprova';

  @override
  String freeTrialDays(int days) {
    return '$days giorni di prova gratuita';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks settimane di prova gratuita';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months mesi di prova gratuita';
  }

  @override
  String get supportedPlatforms => 'Piattaforme Supportate';

  @override
  String get supportTiktok => 'Scarica Video, Immagini, Musica';

  @override
  String get supportInstagram => 'Download di Alta Qualità Senza Watermark';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Autori';

  @override
  String get createPlaylist => 'Crea Playlist';

  @override
  String get playlistTitle => 'Titolo Playlist';

  @override
  String get playlistDescription => 'Descrizione';

  @override
  String get chooseFiles => 'Scegli File';

  @override
  String get createPlaylistButton => 'Crea Playlist';

  @override
  String get playlistTitleHint => 'Inserisci il titolo della playlist';

  @override
  String get playlistDescriptionHint => 'Inserisci la descrizione della playlist (opzionale)';

  @override
  String get selectFiles => 'Seleziona i file da aggiungere alla playlist';

  @override
  String get noPlaylistsYet => 'Nessuna playlist ancora';

  @override
  String get createFirstPlaylist => 'Crea la tua prima playlist per organizzare i tuoi download';

  @override
  String get noAuthorsYet => 'Nessun autore ancora';

  @override
  String get downloadSomethingFirst => 'Scarica qualche contenuto per vedere gli autori qui';

  @override
  String authorVideos(Object author) {
    return 'Video di $author';
  }

  @override
  String get noVideosFromAuthor => 'Nessun video da questo autore ancora';
}
