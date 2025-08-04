// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'TikTok İndirici';

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
  String get enterTiktokUrl => 'TikTok URL\'sini girin';

  @override
  String get howToUseTitle => 'Nasıl kullanılır:';

  @override
  String get howToUseStep1 => '1. TikTok\'u açın ve indirmek istediğiniz videoyu bulun.';

  @override
  String get howToUseStep2 => '2. Videonun sağ tarafındaki \'Paylaş\' simgesine dokunun.';

  @override
  String get howToUseStep3 => '3. \'Bağlantıyı kopyala\'yı seçin.';

  @override
  String get howToUseStep4 => '4. Bağlantıyı yukarıdaki giriş alanına yapıştırın ve \'İndir\'e dokunun.';

  @override
  String get invalidUrlError => 'Geçersiz TikTok URL formatı.';

  @override
  String get fetchingMedia => 'Medya getiriliyor...';

  @override
  String get downloadPhoto => 'Fotoğraf İndir';

  @override
  String get downloadVideo => 'Video İndir';

  @override
  String get downloadVoice => 'Müzik İndir';

  @override
  String get downloadMp3 => 'MP3 İndir';

  @override
  String get downloading => 'İndiriliyor...';

  @override
  String get downloadSuccess => 'İndirme tamamlandı!';

  @override
  String get downloadError => 'İndirme başarısız. Lütfen tekrar deneyin.';

  @override
  String get downloadLimitReachedTitle => 'İndirme Limitine Ulaşıldı';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'İndirme limitine ulaştınız ($limit kez). 5 ek indirme denemesi almak için kısa bir reklam izleyin.';
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
  String get musicTab => 'Müzik';

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
  String get mediaInfoTitle => 'Medya Bilgileri';

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
  String get settingsClaimMoreDownloads => '5 Daha Fazla İndirme Al';

  @override
  String get settingsClaimSuccess => 'Başarılı! 5 daha fazla indirmeniz var.';

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
  String get settingsRestoreError => 'Satın almalar geri yüklenemedi. Aktif abonelik bulunamadı veya bir hata oluştu.';

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
  String get aboutTitle => 'TikTok İndirici Hakkında';

  @override
  String get aboutContent => 'Bu uygulama, TikTok gönderilerinden halka açık videoları, fotoğrafları ve sesleri indirmenize yardımcı olur.\n\nLütfen telif hakkını ve gizliliği saygı gösterin. Yalnızca kullanma izniniz olan içerikleri indirin.';

  @override
  String get contactTitle => 'Bize Ulaşın';

  @override
  String get contactNameHint => 'Adınız';

  @override
  String get contactEmailHint => 'E-postanız';

  @override
  String get contactMessageHint => 'Mesajınız';

  @override
  String get contactSendButton => 'Mesaj Gönder';

  @override
  String get contactSending => 'Gönderiliyor...';

  @override
  String get contactSuccess => 'Mesaj başarıyla gönderildi! Yakında size geri döneceğiz.';

  @override
  String get contactError => 'Mesaj gönderilemedi. Lütfen daha sonra tekrar deneyin.';

  @override
  String get permissionRequiredTitle => 'İzin Gerekli';

  @override
  String get permissionStorageDenied => 'İndirilen dosyaları kaydetmek için depolama izni gereklidir. Lütfen ayarlarda izin verin.';

  @override
  String get permissionPhotosDenied => 'İndirilen dosyaları kaydetmek için fotoğraf izni gereklidir (iOS). Lütfen ayarlarda izin verin.';

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
  String get planLifetime => 'Yaşam Boyu';

  @override
  String get oneTimePurchase => 'Tek Seferlik Satın Alma';

  @override
  String savePercent(String percent) {
    return '%$percent Tasarruf Edin';
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
    return 'Kalan indirmeler: $currentLimit. Reklam izleyerek ücretsiz indirmeler alabilirsiniz';
  }

  @override
  String get unlockSaveVideoPro => 'Premium Özellikleri Kilidini Aç';

  @override
  String get noAdsUnlockAllFeatures => 'Reklam Yok ve Tüm Özelliklerin Kilidini Aç';

  @override
  String get removeAds => 'Tüm reklamları kaldır';

  @override
  String get tiktokDownloads => 'TikTok\'tan sınırsız HD video, fotoğraf ve müzik indirme';

  @override
  String get instagramDownloads => 'Filigran olmadan yüksek kaliteli indirmeler';

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
  String get mostPopular => 'En Popüler';

  @override
  String get buyNow => 'Şimdi Satın Al';

  @override
  String get termsOfUse => 'Kullanım Şartları';

  @override
  String get privacyPolicy => 'Gizlilik Politikası';

  @override
  String get loadingPlans => 'Planlar yükleniyor...';

  @override
  String get failedToLoadPlans => 'Planlar yüklenemedi';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String freeTrialDays(int days) {
    return '$days günlük ücretsiz deneme';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks haftalık ücretsiz deneme';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months aylık ücretsiz deneme';
  }

  @override
  String get supportedPlatforms => 'Desteklenen Platformlar';

  @override
  String get supportTiktok => 'Video, Resim, Müzik İndirme';

  @override
  String get supportInstagram => 'Filigran Olmadan Yüksek Kaliteli İndirmeler';

  @override
  String get playlistTab => 'Çalma Listesi';

  @override
  String get authorsTab => 'Yazarlar';

  @override
  String get createPlaylist => 'Çalma Listesi Oluştur';

  @override
  String get playlistTitle => 'Çalma Listesi Başlığı';

  @override
  String get playlistDescription => 'Açıklama';

  @override
  String get chooseFiles => 'Dosyaları Seç';

  @override
  String get createPlaylistButton => 'Çalma Listesi Oluştur';

  @override
  String get playlistTitleHint => 'Çalma listesi başlığını girin';

  @override
  String get playlistDescriptionHint => 'Çalma listesi açıklamasını girin (isteğe bağlı)';

  @override
  String get selectFiles => 'Çalma listesine eklemek için dosyaları seçin';

  @override
  String get noPlaylistsYet => 'Henüz çalma listesi yok';

  @override
  String get createFirstPlaylist => 'İndirmelerinizi düzenlemek için ilk çalma listenizi oluşturun';

  @override
  String get noAuthorsYet => 'Henüz yazar yok';

  @override
  String get downloadSomethingFirst => 'Burada yazarları görmek için önce bazı içerikleri indirin';

  @override
  String authorVideos(Object author) {
    return '$author tarafından videolar';
  }

  @override
  String get noVideosFromAuthor => 'Bu yazardan henüz video yok';
}
