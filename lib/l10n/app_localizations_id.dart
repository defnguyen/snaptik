// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Beranda';

  @override
  String get libraryTab => 'Perpustakaan';

  @override
  String get settingsTab => 'Pengaturan';

  @override
  String get pasteLink => 'Tempel Tautan';

  @override
  String get clear => 'Hapus';

  @override
  String get download => 'Unduh';

  @override
  String get enterThreadsUrl => 'Masukkan URL Threads/Instagram';

  @override
  String get howToUseTitle => 'Cara Penggunaan:';

  @override
  String get howToUseStep1 => '1. Buka Threads dan temukan postingan yang ingin Anda unduh.';

  @override
  String get howToUseStep2 => '2. Ketuk ikon \'Bagikan\' di bawah postingan.';

  @override
  String get howToUseStep3 => '3. Pilih \'Salin tautan\'.';

  @override
  String get howToUseStep4 => '4. Tempel tautan ke kolom input di atas dan ketuk \'Unduh\'.';

  @override
  String get invalidUrlError => 'Format URL Threads tidak valid.';

  @override
  String get fetchingMedia => 'Mengambil media...';

  @override
  String get downloadPhoto => 'Unduh Foto';

  @override
  String get downloadVideo => 'Unduh Video';

  @override
  String get downloadVoice => 'Unduh Suara';

  @override
  String get downloadMp3 => 'Unduh MP3';

  @override
  String get downloading => 'Mengunduh...';

  @override
  String get downloadSuccess => 'Pengunduhan selesai!';

  @override
  String get downloadError => 'Pengunduhan gagal. Silakan coba lagi.';

  @override
  String get downloadLimitReachedTitle => 'Batas Unduhan Tercapai';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Anda telah mencapai batas unduhan ($limit kali). Tonton iklan singkat untuk mendapatkan 5 percobaan unduhan tambahan.';
  }

  @override
  String get watchAd => 'Tonton Iklan';

  @override
  String get cancel => 'Batal';

  @override
  String get photosTab => 'Foto';

  @override
  String get videosTab => 'Video';

  @override
  String get voiceTab => 'Suara';

  @override
  String get view => 'Lihat';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Ganti Nama';

  @override
  String get share => 'Bagikan';

  @override
  String get delete => 'Hapus';

  @override
  String get mediaInfoTitle => 'Informasi Media';

  @override
  String get fileName => 'Nama';

  @override
  String get filePath => 'Jalur';

  @override
  String get dateAdded => 'Tanggal Ditambahkan';

  @override
  String get fileSize => 'Ukuran';

  @override
  String get renameMediaTitle => 'Ganti Nama Media';

  @override
  String get enterNewName => 'Masukkan nama baru';

  @override
  String get save => 'Simpan';

  @override
  String get deleteConfirmationTitle => 'Konfirmasi Hapus';

  @override
  String get deleteConfirmationMessage => 'Apakah Anda yakin ingin menghapus file ini? Tindakan ini tidak dapat dibatalkan.';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get settingsLanguage => 'Bahasa';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Terang';

  @override
  String get settingsThemeDark => 'Gelap';

  @override
  String get settingsThemeSystem => 'Sistem';

  @override
  String get settingsClaimMoreDownloads => 'Dapatkan 5 Unduhan Lagi';

  @override
  String get settingsClaimSuccess => 'Berhasil! Anda mendapatkan 5 unduhan tambahan.';

  @override
  String get settingsClaimError => 'Gagal memuat iklan. Silakan coba lagi nanti.';

  @override
  String get settingsPremium => 'Tingkatkan ke Premium';

  @override
  String get settingsPremiumDescription => 'Hapus iklan dan dapatkan unduhan tanpa batas.';

  @override
  String get settingsRestorePurchase => 'Pulihkan Pembelian';

  @override
  String get settingsRestoreSuccess => 'Pembelian berhasil dipulihkan!';

  @override
  String get settingsRestoreError => 'Gagal memulihkan pembelian. Tidak ditemukan langganan aktif atau terjadi kesalahan.';

  @override
  String get settingsGeneralSection => 'Umum';

  @override
  String get settingsDownloadsSection => 'Unduhan';

  @override
  String get settingsAccountSection => 'Akun';

  @override
  String get settingsSupportSection => 'Dukungan & Umpan Balik';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get settingsContact => 'Hubungi Kami';

  @override
  String get settingsRateApp => 'Nilai Aplikasi Ini';

  @override
  String get settingsShareApp => 'Bagikan Aplikasi Ini';

  @override
  String get premiumUser => 'Pengguna Premium';

  @override
  String get aboutTitle => 'Tentang Threads Downloader';

  @override
  String get aboutContent => 'Aplikasi ini membantu Anda mengunduh foto, video, dan catatan suara publik dari postingan Threads.\n\nHarap hormati hak cipta dan privasi. Hanya unduh konten yang Anda memiliki izin untuk menggunakannya.';

  @override
  String get contactTitle => 'Hubungi Kami';

  @override
  String get contactNameHint => 'Nama Anda';

  @override
  String get contactEmailHint => 'Email Anda';

  @override
  String get contactMessageHint => 'Pesan Anda';

  @override
  String get contactSendButton => 'Kirim Pesan';

  @override
  String get contactSending => 'Mengirim...';

  @override
  String get contactSuccess => 'Pesan berhasil dikirim! Kami akan segera menghubungi Anda.';

  @override
  String get contactError => 'Gagal mengirim pesan. Silakan coba lagi nanti.';

  @override
  String get permissionRequiredTitle => 'Izin Diperlukan';

  @override
  String get permissionStorageDenied => 'Izin penyimpanan diperlukan untuk menyimpan file yang diunduh. Harap berikan izin di pengaturan.';

  @override
  String get permissionPhotosDenied => 'Izin foto diperlukan untuk menyimpan file yang diunduh (iOS). Harap berikan izin di pengaturan.';

  @override
  String get permissionNotificationDenied => 'Izin notifikasi direkomendasikan untuk pembaruan progres unduhan.';

  @override
  String get permissiongoToSettings => 'Buka Pengaturan';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Tingkatkan Sekarang';

  @override
  String get chooseYourPlan => 'Pilih Paket Anda';

  @override
  String get planWeekly => 'Mingguan';

  @override
  String get planMonthly => 'Bulanan';

  @override
  String get planAnnually => 'Tahunan';

  @override
  String get planLifetime => 'Seumur Hidup';

  @override
  String get oneTimePurchase => 'Pembelian Sekali Bayar';

  @override
  String savePercent(String percent) {
    return 'Hemat $percent%';
  }

  @override
  String get bestValue => 'Nilai Terbaik';

  @override
  String get selectPlanErrorTitle => 'Error Memuat Paket';

  @override
  String get selectPlanErrorMessage => 'Tidak dapat memuat paket langganan. Silakan periksa koneksi internet Anda dan coba lagi.';

  @override
  String get purchaseFailed => 'Pembelian Gagal';

  @override
  String get purchaseCancelled => 'Pembelian Dibatalkan';

  @override
  String get purchasePending => 'Pembelian Tertunda';

  @override
  String get purchaseSuccess => 'Pembelian Berhasil!';

  @override
  String get alreadyPremium => 'Anda sudah menjadi pengguna Premium.';

  @override
  String get getPremium => 'Dapatkan Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Unduhan tersisa: $currentLimit. Anda bisa mendapatkan unduhan gratis dengan menonton iklan';
  }

  @override
  String get unlockSaveVideoPro => 'Buka Fitur Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Tanpa iklan & buka semua fitur';

  @override
  String get removeAds => 'Hapus semua iklan';

  @override
  String get threadsDownloads => 'Download HD tak terbatas video, foto, dan pesan suara dari Threads';

  @override
  String get instagramDownloads => 'Download HD tak terbatas video, foto, reels, story, dan profil lengkap dari Instagram';

  @override
  String get lifetimePro => 'Pro Seumur Hidup';

  @override
  String get yearlyPro => 'Pro Tahunan';

  @override
  String get monthlyPro => 'Pro Bulanan';

  @override
  String get weeklyPro => 'Pro Mingguan';

  @override
  String get onlyBuyOnce => 'Beli sekali saja';

  @override
  String get perYear => '/tahun';

  @override
  String get perMonth => '/bulan';

  @override
  String get perWeek => '/minggu';

  @override
  String get mostPopular => 'Paling populer';

  @override
  String get buyNow => 'Beli sekarang';

  @override
  String get termsOfUse => 'Syarat Penggunaan';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get loadingPlans => 'Memuat paket...';

  @override
  String get failedToLoadPlans => 'Gagal memuat paket';

  @override
  String get retry => 'Coba lagi';

  @override
  String freeTrialDays(int days) {
    return 'Uji coba gratis $days hari';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Uji coba gratis $weeks minggu';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Uji coba gratis $months bulan';
  }

  @override
  String get supportedPlatforms => 'Platform yang Didukung';

  @override
  String get supportThreads => 'Unduh Video, Gambar, Pesan Suara';

  @override
  String get supportInstagram => 'Unduh Video, Gambar, Reels, Stories, Profil';

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
