// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

  @override
  String get homeTab => 'Beranda';

  @override
  String get libraryTab => 'Perpustakaan';

  @override
  String get settingsTab => 'Pengaturan';

  @override
  String get pasteLink => 'Tempel Link';

  @override
  String get clear => 'Hapus';

  @override
  String get download => 'Unduh';

  @override
  String get enterTiktokUrl => 'Masukkan URL TikTok';

  @override
  String get howToUseTitle => 'Cara Menggunakan:';

  @override
  String get howToUseStep1 => '1. Buka TikTok dan cari video yang ingin kamu unduh.';

  @override
  String get howToUseStep2 => '2. Ketuk ikon \'Bagikan\' di sisi kanan video.';

  @override
  String get howToUseStep3 => '3. Pilih \'Salin link\'.';

  @override
  String get howToUseStep4 => '4. Tempel link di kolom input di atas dan ketuk \'Unduh\'.';

  @override
  String get invalidUrlError => 'Format URL TikTok tidak valid.';

  @override
  String get fetchingMedia => 'Mengambil media...';

  @override
  String get downloadPhoto => 'Unduh Foto';

  @override
  String get downloadVideo => 'Unduh Video';

  @override
  String get downloadVoice => 'Unduh Musik';

  @override
  String get downloadMp3 => 'Unduh MP3';

  @override
  String get downloading => 'Mengunduh...';

  @override
  String get downloadSuccess => 'Unduhan selesai!';

  @override
  String get downloadError => 'Unduhan gagal. Silakan coba lagi.';

  @override
  String get downloadLimitReachedTitle => 'Batas Unduhan Tercapai';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Kamu telah mencapai batas unduhan ($limit kali). Tonton iklan singkat untuk mendapatkan 5 percobaan unduh lagi.';
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
  String get musicTab => 'Musik';

  @override
  String get view => 'Lihat';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Ubah Nama';

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
  String get renameMediaTitle => 'Ubah Nama Media';

  @override
  String get enterNewName => 'Masukkan nama baru';

  @override
  String get save => 'Simpan';

  @override
  String get deleteConfirmationTitle => 'Konfirmasi Hapus';

  @override
  String get deleteConfirmationMessage => 'Apakah kamu yakin ingin menghapus file ini? Tindakan ini tidak bisa dibatalkan.';

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
  String get settingsClaimSuccess => 'Berhasil! Kamu punya 5 unduhan lagi.';

  @override
  String get settingsClaimError => 'Gagal memuat iklan. Silakan coba lagi nanti.';

  @override
  String get settingsPremium => 'Upgrade ke Premium';

  @override
  String get settingsPremiumDescription => 'Hapus iklan dan dapatkan unduhan unlimited.';

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
  String get settingsSupportSection => 'Dukungan & Masukan';

  @override
  String get settingsAbout => 'Tentang';

  @override
  String get settingsContact => 'Hubungi Kami';

  @override
  String get settingsRateApp => 'Beri Rating Aplikasi Ini';

  @override
  String get settingsShareApp => 'Bagikan Aplikasi Ini';

  @override
  String get premiumUser => 'Pengguna Premium';

  @override
  String get aboutTitle => 'Tentang TikTok Downloader';

  @override
  String get aboutContent => 'Aplikasi ini membantu kamu mengunduh video, foto, dan audio publik dari postingan TikTok.\n\nMohon hormati hak cipta dan privasi. Hanya unduh konten yang kamu punya izin untuk gunakan.';

  @override
  String get contactTitle => 'Hubungi Kami';

  @override
  String get contactNameHint => 'Nama Kamu';

  @override
  String get contactEmailHint => 'Email Kamu';

  @override
  String get contactMessageHint => 'Pesan Kamu';

  @override
  String get contactSendButton => 'Kirim Pesan';

  @override
  String get contactSending => 'Mengirim...';

  @override
  String get contactSuccess => 'Pesan berhasil dikirim! Kami akan segera menghubungi kamu.';

  @override
  String get contactError => 'Gagal mengirim pesan. Silakan coba lagi nanti.';

  @override
  String get permissionRequiredTitle => 'Izin Diperlukan';

  @override
  String get permissionStorageDenied => 'Izin penyimpanan diperlukan untuk menyimpan file yang diunduh. Mohon berikan izin di pengaturan.';

  @override
  String get permissionPhotosDenied => 'Izin foto diperlukan untuk menyimpan file yang diunduh (iOS). Mohon berikan izin di pengaturan.';

  @override
  String get permissionNotificationDenied => 'Izin notifikasi disarankan untuk update progres unduhan.';

  @override
  String get permissiongoToSettings => 'Ke Pengaturan';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Upgrade Sekarang';

  @override
  String get chooseYourPlan => 'Pilih Paket Kamu';

  @override
  String get planWeekly => 'Mingguan';

  @override
  String get planMonthly => 'Bulanan';

  @override
  String get planAnnually => 'Tahunan';

  @override
  String get planLifetime => 'Seumur Hidup';

  @override
  String get oneTimePurchase => 'Pembelian Sekali';

  @override
  String savePercent(String percent) {
    return 'Hemat $percent%';
  }

  @override
  String get bestValue => 'Nilai Terbaik';

  @override
  String get selectPlanErrorTitle => 'Error Memuat Paket';

  @override
  String get selectPlanErrorMessage => 'Tidak bisa memuat paket langganan. Mohon periksa koneksi internet dan coba lagi.';

  @override
  String get purchaseFailed => 'Pembelian Gagal';

  @override
  String get purchaseCancelled => 'Pembelian Dibatalkan';

  @override
  String get purchasePending => 'Pembelian Tertunda';

  @override
  String get purchaseSuccess => 'Pembelian Berhasil!';

  @override
  String get alreadyPremium => 'Kamu sudah pengguna Premium.';

  @override
  String get getPremium => 'Dapatkan Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Unduhan tersisa: $currentLimit. Kamu bisa mendapat unduhan gratis dengan menonton iklan';
  }

  @override
  String get unlockSaveVideoPro => 'Buka Fitur Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Tanpa Iklan & Buka Semua Fitur';

  @override
  String get removeAds => 'Hapus semua iklan';

  @override
  String get tiktokDownloads => 'Unduhan HD unlimited video, foto, dan musik dari TikTok';

  @override
  String get instagramDownloads => 'Unduhan berkualitas tinggi tanpa watermark';

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
  String get mostPopular => 'Paling Populer';

  @override
  String get buyNow => 'Beli Sekarang';

  @override
  String get termsOfUse => 'Syarat Penggunaan';

  @override
  String get privacyPolicy => 'Kebijakan Privasi';

  @override
  String get loadingPlans => 'Memuat paket...';

  @override
  String get failedToLoadPlans => 'Gagal memuat paket';

  @override
  String get retry => 'Coba Lagi';

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
  String get supportTiktok => 'Unduh Video, Gambar, Musik';

  @override
  String get supportInstagram => 'Unduhan Berkualitas Tinggi Tanpa Watermark';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Penulis';

  @override
  String get createPlaylist => 'Buat Playlist';

  @override
  String get playlistTitle => 'Judul Playlist';

  @override
  String get playlistDescription => 'Deskripsi';

  @override
  String get chooseFiles => 'Pilih File';

  @override
  String get createPlaylistButton => 'Buat Playlist';

  @override
  String get playlistTitleHint => 'Masukkan judul playlist';

  @override
  String get playlistDescriptionHint => 'Masukkan deskripsi playlist (opsional)';

  @override
  String get selectFiles => 'Pilih file untuk ditambahkan ke playlist';

  @override
  String get noPlaylistsYet => 'Belum ada playlist';

  @override
  String get createFirstPlaylist => 'Buat playlist pertama kamu untuk mengatur unduhan';

  @override
  String get noAuthorsYet => 'Belum ada penulis';

  @override
  String get downloadSomethingFirst => 'Unduh beberapa konten untuk melihat penulis di sini';

  @override
  String authorVideos(Object author) {
    return 'Video oleh $author';
  }

  @override
  String get noVideosFromAuthor => 'Belum ada video dari penulis ini';
}
