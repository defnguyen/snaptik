// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

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
  String get enterTiktokUrl => 'TikTok URL eingeben';

  @override
  String get howToUseTitle => 'So verwenden Sie:';

  @override
  String get howToUseStep1 => '1. Öffnen Sie TikTok und finden Sie das Video, das Sie herunterladen möchten.';

  @override
  String get howToUseStep2 => '2. Tippen Sie auf das \'Teilen\'-Symbol auf der rechten Seite des Videos.';

  @override
  String get howToUseStep3 => '3. Wählen Sie \'Link kopieren\'.';

  @override
  String get howToUseStep4 => '4. Fügen Sie den Link in das Eingabefeld oben ein und tippen Sie auf \'Herunterladen\'.';

  @override
  String get invalidUrlError => 'Ungültiges TikTok URL-Format.';

  @override
  String get fetchingMedia => 'Medien werden abgerufen...';

  @override
  String get downloadPhoto => 'Foto herunterladen';

  @override
  String get downloadVideo => 'Video herunterladen';

  @override
  String get downloadVoice => 'Musik herunterladen';

  @override
  String get downloadMp3 => 'MP3 herunterladen';

  @override
  String get downloading => 'Wird heruntergeladen...';

  @override
  String get downloadSuccess => 'Download abgeschlossen!';

  @override
  String get downloadError => 'Download fehlgeschlagen. Bitte versuchen Sie es erneut.';

  @override
  String get downloadLimitReachedTitle => 'Download-Limit erreicht';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Sie haben das Download-Limit erreicht ($limit Mal). Sehen Sie sich eine kurze Werbung an, um 5 weitere Download-Versuche zu erhalten.';
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
  String get musicTab => 'Musik';

  @override
  String get view => 'Anzeigen';

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
  String get renameMediaTitle => 'Medien umbenennen';

  @override
  String get enterNewName => 'Neuen Namen eingeben';

  @override
  String get save => 'Speichern';

  @override
  String get deleteConfirmationTitle => 'Löschen bestätigen';

  @override
  String get deleteConfirmationMessage => 'Sind Sie sicher, dass Sie diese Datei löschen möchten? Diese Aktion kann nicht rückgängig gemacht werden.';

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
  String get settingsClaimSuccess => 'Erfolg! Sie haben 5 weitere Downloads.';

  @override
  String get settingsClaimError => 'Werbung konnte nicht geladen werden. Bitte versuchen Sie es später erneut.';

  @override
  String get settingsPremium => 'Auf Premium upgraden';

  @override
  String get settingsPremiumDescription => 'Entfernen Sie Werbung und erhalten Sie unbegrenzte Downloads.';

  @override
  String get settingsRestorePurchase => 'Kauf wiederherstellen';

  @override
  String get settingsRestoreSuccess => 'Käufe erfolgreich wiederhergestellt!';

  @override
  String get settingsRestoreError => 'Käufe konnten nicht wiederhergestellt werden. Kein aktives Abonnement gefunden oder es ist ein Fehler aufgetreten.';

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
  String get settingsContact => 'Kontakt';

  @override
  String get settingsRateApp => 'App bewerten';

  @override
  String get settingsShareApp => 'App teilen';

  @override
  String get premiumUser => 'Premium-Benutzer';

  @override
  String get aboutTitle => 'Über TikTok Downloader';

  @override
  String get aboutContent => 'Diese App hilft Ihnen dabei, öffentliche Videos, Fotos und Audio-Dateien von TikTok-Posts herunterzuladen.\n\nBitte respektieren Sie Urheberrechte und Privatsphäre. Laden Sie nur Inhalte herunter, für die Sie eine Nutzungsberechtigung haben.';

  @override
  String get contactTitle => 'Kontakt';

  @override
  String get contactNameHint => 'Ihr Name';

  @override
  String get contactEmailHint => 'Ihre E-Mail';

  @override
  String get contactMessageHint => 'Ihre Nachricht';

  @override
  String get contactSendButton => 'Nachricht senden';

  @override
  String get contactSending => 'Wird gesendet...';

  @override
  String get contactSuccess => 'Nachricht erfolgreich gesendet! Wir werden uns bald bei Ihnen melden.';

  @override
  String get contactError => 'Nachricht konnte nicht gesendet werden. Bitte versuchen Sie es später erneut.';

  @override
  String get permissionRequiredTitle => 'Berechtigung erforderlich';

  @override
  String get permissionStorageDenied => 'Speicherberechtigung ist erforderlich, um heruntergeladene Dateien zu speichern. Bitte gewähren Sie die Berechtigung in den Einstellungen.';

  @override
  String get permissionPhotosDenied => 'Foto-Berechtigung ist erforderlich, um heruntergeladene Dateien zu speichern (iOS). Bitte gewähren Sie die Berechtigung in den Einstellungen.';

  @override
  String get permissionNotificationDenied => 'Benachrichtigungsberechtigung wird für Download-Fortschrittsupdates empfohlen.';

  @override
  String get permissiongoToSettings => 'Zu Einstellungen';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Jetzt upgraden';

  @override
  String get chooseYourPlan => 'Wählen Sie Ihren Plan';

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
    return 'Sparen Sie $percent%';
  }

  @override
  String get bestValue => 'Bester Wert';

  @override
  String get selectPlanErrorTitle => 'Fehler beim Laden der Pläne';

  @override
  String get selectPlanErrorMessage => 'Abonnementpläne konnten nicht geladen werden. Bitte überprüfen Sie Ihre Internetverbindung und versuchen Sie es erneut.';

  @override
  String get purchaseFailed => 'Kauf fehlgeschlagen';

  @override
  String get purchaseCancelled => 'Kauf abgebrochen';

  @override
  String get purchasePending => 'Kauf ausstehend';

  @override
  String get purchaseSuccess => 'Kauf erfolgreich!';

  @override
  String get alreadyPremium => 'Sie sind bereits Premium-Benutzer.';

  @override
  String get getPremium => 'Premium erhalten';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Verbleibende Downloads: $currentLimit. Sie können kostenlose Downloads erhalten, indem Sie Werbung ansehen';
  }

  @override
  String get unlockSaveVideoPro => 'Premium-Funktionen freischalten';

  @override
  String get noAdsUnlockAllFeatures => 'Keine Werbung & alle Funktionen freischalten';

  @override
  String get removeAds => 'Alle Werbung entfernen';

  @override
  String get tiktokDownloads => 'Unbegrenzte HD-Downloads von Videos, Fotos und Musik von TikTok';

  @override
  String get instagramDownloads => 'Hochwertige Downloads ohne Wasserzeichen';

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
  String get mostPopular => 'Am beliebtesten';

  @override
  String get buyNow => 'Jetzt kaufen';

  @override
  String get termsOfUse => 'Nutzungsbedingungen';

  @override
  String get privacyPolicy => 'Datenschutzrichtlinie';

  @override
  String get loadingPlans => 'Pläne werden geladen...';

  @override
  String get failedToLoadPlans => 'Pläne konnten nicht geladen werden';

  @override
  String get retry => 'Wiederholen';

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
  String get supportTiktok => 'Videos, Bilder, Musik herunterladen';

  @override
  String get supportInstagram => 'Hochwertige Downloads ohne Wasserzeichen';

  @override
  String get playlistTab => 'Wiedergabeliste';

  @override
  String get authorsTab => 'Autoren';

  @override
  String get createPlaylist => 'Wiedergabeliste erstellen';

  @override
  String get playlistTitle => 'Wiedergabelisten-Titel';

  @override
  String get playlistDescription => 'Beschreibung';

  @override
  String get chooseFiles => 'Dateien auswählen';

  @override
  String get createPlaylistButton => 'Wiedergabeliste erstellen';

  @override
  String get playlistTitleHint => 'Wiedergabelisten-Titel eingeben';

  @override
  String get playlistDescriptionHint => 'Wiedergabelisten-Beschreibung eingeben (optional)';

  @override
  String get selectFiles => 'Dateien für die Wiedergabeliste auswählen';

  @override
  String get noPlaylistsYet => 'Noch keine Wiedergabelisten';

  @override
  String get createFirstPlaylist => 'Erstellen Sie Ihre erste Wiedergabeliste, um Ihre Downloads zu organisieren';

  @override
  String get noAuthorsYet => 'Noch keine Autoren';

  @override
  String get downloadSomethingFirst => 'Laden Sie zuerst Inhalte herunter, um hier Autoren zu sehen';

  @override
  String authorVideos(Object author) {
    return 'Videos von $author';
  }

  @override
  String get noVideosFromAuthor => 'Noch keine Videos von diesem Autor';
}
