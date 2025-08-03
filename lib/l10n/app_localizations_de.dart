// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Startseite';

  @override
  String get libraryTab => 'Bibliothek';

  @override
  String get settingsTab => 'Einstellungen';

  @override
  String get pasteLink => 'Link einfügen';

  @override
  String get clear => 'Löschen';

  @override
  String get download => 'Herunterladen';

  @override
  String get enterThreadsUrl => 'Threads/Instagram URL eingeben';

  @override
  String get howToUseTitle => 'Anleitung:';

  @override
  String get howToUseStep1 => '1. Öffne Threads und finde den Beitrag, den du herunterladen möchtest.';

  @override
  String get howToUseStep2 => '2. Tippe auf das \'Teilen\'-Symbol unter dem Beitrag.';

  @override
  String get howToUseStep3 => '3. Wähle \'Link kopieren\'.';

  @override
  String get howToUseStep4 => '4. Füge den Link in das obige Eingabefeld ein und tippe auf \'Herunterladen\'.';

  @override
  String get invalidUrlError => 'Ungültiges Threads-URL-Format.';

  @override
  String get fetchingMedia => 'Medien werden abgerufen...';

  @override
  String get downloadPhoto => 'Foto herunterladen';

  @override
  String get downloadVideo => 'Video herunterladen';

  @override
  String get downloadVoice => 'Sprachnotiz herunterladen';

  @override
  String get downloadMp3 => 'MP3 herunterladen';

  @override
  String get downloading => 'Wird heruntergeladen...';

  @override
  String get downloadSuccess => 'Download abgeschlossen!';

  @override
  String get downloadError => 'Download fehlgeschlagen. Bitte versuche es erneut.';

  @override
  String get downloadLimitReachedTitle => 'Download-Limit erreicht';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Du hast das Download-Limit erreicht ($limit Mal). Schaue eine kurze Werbung, um 5 weitere Download-Versuche zu erhalten.';
  }

  @override
  String get watchAd => 'Werbung ansehen';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get photosTab => 'Fotos';

  @override
  String get videosTab => 'Videos';

  @override
  String get voiceTab => 'Sprachnotizen';

  @override
  String get view => 'Ansehen';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Umbenennen';

  @override
  String get share => 'Teilen';

  @override
  String get delete => 'Löschen';

  @override
  String get mediaInfoTitle => 'Medieninformationen';

  @override
  String get fileName => 'Name';

  @override
  String get filePath => 'Pfad';

  @override
  String get dateAdded => 'Hinzugefügt am';

  @override
  String get fileSize => 'Größe';

  @override
  String get renameMediaTitle => 'Medium umbenennen';

  @override
  String get enterNewName => 'Neuen Namen eingeben';

  @override
  String get save => 'Speichern';

  @override
  String get deleteConfirmationTitle => 'Löschen bestätigen';

  @override
  String get deleteConfirmationMessage => 'Bist du sicher, dass du diese Datei löschen möchtest? Diese Aktion kann nicht rückgängig gemacht werden.';

  @override
  String get confirm => 'Bestätigen';

  @override
  String get settingsLanguage => 'Sprache';

  @override
  String get settingsTheme => 'Design';

  @override
  String get settingsThemeLight => 'Hell';

  @override
  String get settingsThemeDark => 'Dunkel';

  @override
  String get settingsThemeSystem => 'System';

  @override
  String get settingsClaimMoreDownloads => '5 weitere Downloads erhalten';

  @override
  String get settingsClaimSuccess => 'Erfolg! Du hast 5 weitere Downloads.';

  @override
  String get settingsClaimError => 'Fehler beim Laden der Werbung. Bitte versuche es später noch einmal.';

  @override
  String get settingsPremium => 'Auf Premium upgraden';

  @override
  String get settingsPremiumDescription => 'Werbung entfernen und unbegrenzte Downloads erhalten.';

  @override
  String get settingsRestorePurchase => 'Kauf wiederherstellen';

  @override
  String get settingsRestoreSuccess => 'Käufe erfolgreich wiederhergestellt!';

  @override
  String get settingsRestoreError => 'Fehler beim Wiederherstellen der Käufe. Kein aktives Abonnement gefunden oder Fehler aufgetreten.';

  @override
  String get settingsGeneralSection => 'Allgemein';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Konto';

  @override
  String get settingsSupportSection => 'Support & Feedback';

  @override
  String get settingsAbout => 'Über';

  @override
  String get settingsContact => 'Kontaktiere uns';

  @override
  String get settingsRateApp => 'App bewerten';

  @override
  String get settingsShareApp => 'App teilen';

  @override
  String get premiumUser => 'Premium-Nutzer';

  @override
  String get aboutTitle => 'Über Threads Downloader';

  @override
  String get aboutContent => 'Diese App hilft dir beim Herunterladen öffentlicher Fotos, Videos und Sprachnotizen von Threads-Beiträgen.\n\nBitte respektiere Urheberrechte und Privatsphäre. Lade nur Inhalte herunter, für deren Nutzung du die Erlaubnis hast.';

  @override
  String get contactTitle => 'Kontaktiere uns';

  @override
  String get contactNameHint => 'Dein Name';

  @override
  String get contactEmailHint => 'Deine E-Mail';

  @override
  String get contactMessageHint => 'Deine Nachricht';

  @override
  String get contactSendButton => 'Nachricht senden';

  @override
  String get contactSending => 'Wird gesendet...';

  @override
  String get contactSuccess => 'Nachricht erfolgreich gesendet! Wir werden uns bald bei dir melden.';

  @override
  String get contactError => 'Fehler beim Senden der Nachricht. Bitte versuche es später erneut.';

  @override
  String get permissionRequiredTitle => 'Berechtigung erforderlich';

  @override
  String get permissionStorageDenied => 'Speicherberechtigung ist erforderlich, um heruntergeladene Dateien zu speichern. Bitte erteile die Berechtigung in den Einstellungen.';

  @override
  String get permissionPhotosDenied => 'Fotos-Berechtigung ist erforderlich, um heruntergeladene Dateien zu speichern (iOS). Bitte erteile die Berechtigung in den Einstellungen.';

  @override
  String get permissionNotificationDenied => 'Benachrichtigungsberechtigung wird für Download-Fortschrittsaktualisierungen empfohlen.';

  @override
  String get permissiongoToSettings => 'Zu den Einstellungen';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Jetzt upgraden';

  @override
  String get chooseYourPlan => 'Wähle deinen Plan';

  @override
  String get planWeekly => 'Wöchentlich';

  @override
  String get planMonthly => 'Monatlich';

  @override
  String get planAnnually => 'Jährlich';

  @override
  String get planLifetime => 'Lebenslang';

  @override
  String get oneTimePurchase => 'Einmaliger Kauf';

  @override
  String savePercent(String percent) {
    return '$percent% sparen';
  }

  @override
  String get bestValue => 'Bestes Angebot';

  @override
  String get selectPlanErrorTitle => 'Fehler beim Laden der Pläne';

  @override
  String get selectPlanErrorMessage => 'Abonnementpläne konnten nicht geladen werden. Bitte überprüfe deine Internetverbindung und versuche es erneut.';

  @override
  String get purchaseFailed => 'Kauf fehlgeschlagen';

  @override
  String get purchaseCancelled => 'Kauf abgebrochen';

  @override
  String get purchasePending => 'Kauf ausstehend';

  @override
  String get purchaseSuccess => 'Kauf erfolgreich!';

  @override
  String get alreadyPremium => 'Du bist bereits Premium-Nutzer.';

  @override
  String get getPremium => 'Premium erhalten';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Verbleibende Downloads: $currentLimit. Sie können kostenlose Downloads erhalten, indem Sie Werbung ansehen';
  }

  @override
  String get unlockSaveVideoPro => 'Premium-Features freischalten';

  @override
  String get noAdsUnlockAllFeatures => 'Keine Werbung & alle Features freischalten';

  @override
  String get removeAds => 'Alle Werbung entfernen';

  @override
  String get threadsDownloads => 'Unbegrenzte HD-Downloads von Videos, Fotos und Sprachnachrichten von Threads';

  @override
  String get instagramDownloads => 'Unbegrenzte HD-Downloads von Videos, Fotos, Reels, Stories und vollständigen Profilen von Instagram';

  @override
  String get lifetimePro => 'Lebenslang Pro';

  @override
  String get yearlyPro => 'Jährlich Pro';

  @override
  String get monthlyPro => 'Monatlich Pro';

  @override
  String get weeklyPro => 'Wöchentlich Pro';

  @override
  String get onlyBuyOnce => 'Nur einmal kaufen';

  @override
  String get perYear => '/Jahr';

  @override
  String get perMonth => '/Monat';

  @override
  String get perWeek => '/Woche';

  @override
  String get mostPopular => 'Beliebteste';

  @override
  String get buyNow => 'Jetzt kaufen';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get loadingPlans => 'Tarife werden geladen...';

  @override
  String get failedToLoadPlans => 'Laden der Tarife fehlgeschlagen';

  @override
  String get retry => 'Erneut versuchen';

  @override
  String freeTrialDays(int days) {
    return '$days Tage kostenlose Testversion';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks Wochen kostenlose Testversion';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months Monate kostenlose Testversion';
  }

  @override
  String get supportedPlatforms => 'Unterstützte Plattformen';

  @override
  String get supportThreads => 'Videos, Bilder und Sprachnachrichten herunterladen';

  @override
  String get supportInstagram => 'Videos, Bilder, Reels, Stories und Profile herunterladen';

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
