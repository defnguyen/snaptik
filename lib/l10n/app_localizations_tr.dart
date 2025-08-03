// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Threads Video İndirici';

  @override
  String get homeTab => 'Ana Sayfa';

  @override
  String get libraryTab => 'Kütüphane';

  @override
  String get settingsTab => 'Ayarlar';

  @override
  String get pasteLink => 'Bağlantı Yapıştır';

  @override
  String get clear => 'Temizle';

  @override
  String get download => 'İndir';

  @override
  String get enterThreadsUrl => 'Threads/Instagram URL\'sini girin';

  @override
  String get howToUseTitle => 'Nasıl Kullanılır:';

  @override
  String get howToUseStep1 => '1. Threads\'i açın ve indirmek istediğiniz gönderiyi bulun.';

  @override
  String get howToUseStep2 => '2. Gönderinin altındaki \'Paylaş\' simgesine dokunun.';

  @override
  String get howToUseStep3 => '3. \'Bağlantıyı kopyala\'yı seçin.';

  @override
  String get howToUseStep4 => '4. Bağlantıyı yukarıdaki giriş alanına yapıştırın ve \'İndir\'e dokunun.';

  @override
  String get invalidUrlError => 'Geçersiz Threads URL formatı.';

  @override
  String get fetchingMedia => 'Medya alınıyor...';

  @override
  String get downloadPhoto => 'Fotoğrafı İndir';

  @override
  String get downloadVideo => 'Videoyu İndir';

  @override
  String get downloadVoice => 'Sesi İndir';

  @override
  String get downloadMp3 => 'MP3 İndir';

  @override
  String get downloading => 'İndiriliyor...';

  @override
  String get downloadSuccess => 'İndirme tamamlandı!';

  @override
  String get downloadError => 'İndirme başarısız. Lütfen tekrar deneyin.';

  @override
  String get downloadLimitReachedTitle => 'İndirme Limiti Aşıldı';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'İndirme limitine ulaştınız ($limit kez). 5 indirme hakkı daha kazanmak için kısa bir reklam izleyin.';
  }

  @override
  String get watchAd => 'Reklam İzle';

  @override
  String get cancel => 'İptal';

  @override
  String get photosTab => 'Fotoğraflar';

  @override
  String get videosTab => 'Videolar';

  @override
  String get voiceTab => 'Sesler';

  @override
  String get view => 'Görüntüle';

  @override
  String get info => 'Bilgi';

  @override
  String get rename => 'Yeniden Adlandır';

  @override
  String get share => 'Paylaş';

  @override
  String get delete => 'Sil';

  @override
  String get mediaInfoTitle => 'Medya Bilgisi';

  @override
  String get fileName => 'İsim';

  @override
  String get filePath => 'Yol';

  @override
  String get dateAdded => 'Eklenme Tarihi';

  @override
  String get fileSize => 'Boyut';

  @override
  String get renameMediaTitle => 'Medyayı Yeniden Adlandır';

  @override
  String get enterNewName => 'Yeni isim girin';

  @override
  String get save => 'Kaydet';

  @override
  String get deleteConfirmationTitle => 'Silmeyi Onayla';

  @override
  String get deleteConfirmationMessage => 'Bu dosyayı silmek istediğinizden emin misiniz? Bu işlem geri alınamaz.';

  @override
  String get confirm => 'Onayla';

  @override
  String get settingsLanguage => 'Dil';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Açık';

  @override
  String get settingsThemeDark => 'Koyu';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsClaimMoreDownloads => '5 İndirme Hakkı Daha Al';

  @override
  String get settingsClaimSuccess => 'Başarılı! 5 indirme hakkı daha kazandınız.';

  @override
  String get settingsClaimError => 'Reklam yüklenemedi. Lütfen daha sonra tekrar deneyin.';

  @override
  String get settingsPremium => 'Premium\'a Yükselt';

  @override
  String get settingsPremiumDescription => 'Reklamları kaldırın ve sınırsız indirme elde edin.';

  @override
  String get settingsRestorePurchase => 'Satın Almayı Geri Yükle';

  @override
  String get settingsRestoreSuccess => 'Satın almalar başarıyla geri yüklendi!';

  @override
  String get settingsRestoreError => 'Satın almalar geri yüklenemedi. Aktif abonelik bulunamadı veya hata oluştu.';

  @override
  String get settingsGeneralSection => 'Genel';

  @override
  String get settingsDownloadsSection => 'İndirmeler';

  @override
  String get settingsAccountSection => 'Hesap';

  @override
  String get settingsSupportSection => 'Destek ve Geri Bildirim';

  @override
  String get settingsAbout => 'Hakkında';

  @override
  String get settingsContact => 'Bize Ulaşın';

  @override
  String get settingsRateApp => 'Bu Uygulamayı Değerlendir';

  @override
  String get settingsShareApp => 'Bu Uygulamayı Paylaş';

  @override
  String get premiumUser => 'Premium Kullanıcı';

  @override
  String get aboutTitle => 'Threads Downloader Hakkında';

  @override
  String get aboutContent => 'Bu uygulama, Threads gönderilerinden herkese açık fotoğrafları, videoları ve ses notlarını indirmenize yardımcı olur.\n\nLütfen telif hakkı ve gizliliğe saygı gösterin. Yalnızca kullanma izniniz olan içerikleri indirin.';

  @override
  String get contactTitle => 'Bize Ulaşın';

  @override
  String get contactNameHint => 'Adınız';

  @override
  String get contactEmailHint => 'E-posta Adresiniz';

  @override
  String get contactMessageHint => 'Mesajınız';

  @override
  String get contactSendButton => 'Mesaj Gönder';

  @override
  String get contactSending => 'Gönderiliyor...';

  @override
  String get contactSuccess => 'Mesaj başarıyla gönderildi! En kısa sürede size geri döneceğiz.';

  @override
  String get contactError => 'Mesaj gönderilemedi. Lütfen daha sonra tekrar deneyin.';

  @override
  String get permissionRequiredTitle => 'İzin Gerekli';

  @override
  String get permissionStorageDenied => 'İndirilen dosyaları kaydetmek için depolama izni gereklidir. Lütfen ayarlarda izin verin.';

  @override
  String get permissionPhotosDenied => 'İndirilen dosyaları kaydetmek için Fotoğraflar izni gereklidir (iOS). Lütfen ayarlarda izin verin.';

  @override
  String get permissionNotificationDenied => 'İndirme ilerleme güncellemeleri için bildirim izni önerilir.';

  @override
  String get permissiongoToSettings => 'Ayarlara Git';

  @override
  String get ok => 'Tamam';

  @override
  String get upgradeNow => 'Şimdi Yükselt';

  @override
  String get chooseYourPlan => 'Planınızı Seçin';

  @override
  String get planWeekly => 'Haftalık';

  @override
  String get planMonthly => 'Aylık';

  @override
  String get planAnnually => 'Yıllık';

  @override
  String get planLifetime => 'Ömür Boyu';

  @override
  String get oneTimePurchase => 'Tek Seferlik Satın Alma';

  @override
  String savePercent(String percent) {
    return '$percent% Tasarruf';
  }

  @override
  String get bestValue => 'En İyi Değer';

  @override
  String get selectPlanErrorTitle => 'Plan Yükleme Hatası';

  @override
  String get selectPlanErrorMessage => 'Abonelik planları yüklenemedi. Lütfen internet bağlantınızı kontrol edin ve tekrar deneyin.';

  @override
  String get purchaseFailed => 'Satın Alma Başarısız';

  @override
  String get purchaseCancelled => 'Satın Alma İptal Edildi';

  @override
  String get purchasePending => 'Satın Alma Beklemede';

  @override
  String get purchaseSuccess => 'Satın Alma Başarılı!';

  @override
  String get alreadyPremium => 'Zaten Premium kullanıcısınız.';

  @override
  String get getPremium => 'Premium Al';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Kalan indirme sayısı: $currentLimit. Reklamları izleyerek ücretsiz indirme hakkı kazanabilirsiniz';
  }

  @override
  String get unlockSaveVideoPro => 'Premium özelliklerin kilidini aç';

  @override
  String get noAdsUnlockAllFeatures => 'Reklamsız ve tüm özelliklerin kilidini aç';

  @override
  String get removeAds => 'Tüm reklamları kaldır';

  @override
  String get threadsDownloads => 'Threads\'den video, fotoğraf ve ses mesajlarının sınırsız HD indirmeleri';

  @override
  String get instagramDownloads => 'Instagram\'dan video, fotoğraf, reels, hikayeler ve tam profillerin sınırsız HD indirmeleri';

  @override
  String get lifetimePro => 'Yaşam Boyu Pro';

  @override
  String get yearlyPro => 'Yıllık Pro';

  @override
  String get monthlyPro => 'Aylık Pro';

  @override
  String get weeklyPro => 'Haftalık Pro';

  @override
  String get onlyBuyOnce => 'Sadece bir kez satın al';

  @override
  String get perYear => '/yıl';

  @override
  String get perMonth => '/ay';

  @override
  String get perWeek => '/hafta';

  @override
  String get mostPopular => 'En popüler';

  @override
  String get buyNow => 'Şimdi satın al';

  @override
  String get termsOfUse => 'Kullanım Şartları';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get loadingPlans => 'Planlar yükleniyor...';

  @override
  String get failedToLoadPlans => 'Planlar yüklenemedi';

  @override
  String get retry => 'Tekrar dene';

  @override
  String freeTrialDays(int days) {
    return '$days gün ücretsiz deneme';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks hafta ücretsiz deneme';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months ay ücretsiz deneme';
  }

  @override
  String get supportedPlatforms => 'Desteklenen platformlar';

  @override
  String get supportThreads => 'Video, resim ve sesli mesajları indirin';

  @override
  String get supportInstagram => 'Video, resim, Reels, Stories ve profilleri indirin';

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
