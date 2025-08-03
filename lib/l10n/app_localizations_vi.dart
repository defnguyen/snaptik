// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Trang chủ';

  @override
  String get libraryTab => 'Thư viện';

  @override
  String get settingsTab => 'Cài đặt';

  @override
  String get pasteLink => 'Dán liên kết';

  @override
  String get clear => 'Xóa';

  @override
  String get download => 'Tải xuống';

  @override
  String get enterThreadsUrl => 'Nhập URL Threads/Instagram';

  @override
  String get howToUseTitle => 'Cách sử dụng:';

  @override
  String get howToUseStep1 => '1. Mở Threads và tìm bài đăng bạn muốn tải xuống.';

  @override
  String get howToUseStep2 => '2. Nhấn vào biểu tượng \'Chia sẻ\' bên dưới bài đăng.';

  @override
  String get howToUseStep3 => '3. Chọn \'Sao chép liên kết\'.';

  @override
  String get howToUseStep4 => '4. Dán liên kết vào ô nhập liệu ở trên và nhấn \'Tải xuống\'.';

  @override
  String get invalidUrlError => 'Định dạng URL Threads không hợp lệ.';

  @override
  String get fetchingMedia => 'Đang tải dữ liệu...';

  @override
  String get downloadPhoto => 'Tải xuống ảnh';

  @override
  String get downloadVideo => 'Tải xuống video';

  @override
  String get downloadVoice => 'Tải xuống voice';

  @override
  String get downloadMp3 => 'Tải xuống MP3';

  @override
  String get downloading => 'Đang tải xuống...';

  @override
  String get downloadSuccess => 'Tải xuống hoàn tất!';

  @override
  String get downloadError => 'Tải xuống thất bại. Vui lòng thử lại.';

  @override
  String get downloadLimitReachedTitle => 'Đã đạt giới hạn tải xuống';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Bạn đã đạt đến giới hạn tải xuống ($limit lần). Xem quảng cáo ngắn để nhận thêm 5 lần tải xuống.';
  }

  @override
  String get watchAd => 'Xem quảng cáo';

  @override
  String get cancel => 'Hủy';

  @override
  String get photosTab => 'Ảnh';

  @override
  String get videosTab => 'Video';

  @override
  String get voiceTab => 'Voice';

  @override
  String get view => 'Xem';

  @override
  String get info => 'Thông tin';

  @override
  String get rename => 'Đổi tên';

  @override
  String get share => 'Chia sẻ';

  @override
  String get delete => 'Xóa';

  @override
  String get mediaInfoTitle => 'Thông tin tập tin';

  @override
  String get fileName => 'Tên';

  @override
  String get filePath => 'Đường dẫn';

  @override
  String get dateAdded => 'Ngày thêm';

  @override
  String get fileSize => 'Kích thước';

  @override
  String get renameMediaTitle => 'Đổi tên tập tin';

  @override
  String get enterNewName => 'Nhập tên mới';

  @override
  String get save => 'Lưu';

  @override
  String get deleteConfirmationTitle => 'Xác nhận xóa';

  @override
  String get deleteConfirmationMessage => 'Bạn có chắc chắn muốn xóa tập tin này? Hành động này không thể hoàn tác.';

  @override
  String get confirm => 'Xác nhận';

  @override
  String get settingsLanguage => 'Ngôn ngữ';

  @override
  String get settingsTheme => 'Giao diện';

  @override
  String get settingsThemeLight => 'Sáng';

  @override
  String get settingsThemeDark => 'Tối';

  @override
  String get settingsThemeSystem => 'Hệ thống';

  @override
  String get settingsClaimMoreDownloads => 'Nhận thêm 5 lần tải xuống';

  @override
  String get settingsClaimSuccess => 'Thành công! Bạn đã có thêm 5 lần tải xuống.';

  @override
  String get settingsClaimError => 'Không thể tải quảng cáo. Vui lòng thử lại sau.';

  @override
  String get settingsPremium => 'Nâng cấp lên Premium';

  @override
  String get settingsPremiumDescription => 'Xoá hoàn toàn quảng cáo và tải xuống không giới hạn.';

  @override
  String get settingsRestorePurchase => 'Khôi phục Premium';

  @override
  String get settingsRestoreSuccess => 'Khôi phục giao dịch thành công!';

  @override
  String get settingsRestoreError => 'Không thể khôi phục giao dịch. Không tìm thấy gói đăng ký hoạt động hoặc đã xảy ra lỗi.';

  @override
  String get settingsGeneralSection => 'Tổng quan';

  @override
  String get settingsDownloadsSection => 'Tải xuống';

  @override
  String get settingsAccountSection => 'Tài khoản';

  @override
  String get settingsSupportSection => 'Hỗ trợ & Phản hồi';

  @override
  String get settingsAbout => 'Giới thiệu';

  @override
  String get settingsContact => 'Liên hệ';

  @override
  String get settingsRateApp => 'Đánh giá ứng dụng';

  @override
  String get settingsShareApp => 'Chia sẻ ứng dụng';

  @override
  String get premiumUser => 'Người dùng Premium';

  @override
  String get aboutTitle => 'Giới thiệu Threads Downloader';

  @override
  String get aboutContent => 'Ứng dụng này giúp bạn tải xuống ảnh, video và ghi âm công khai từ các bài đăng Threads.\n\nVui lòng tôn trọng bản quyền và quyền riêng tư. Chỉ tải xuống nội dung mà bạn được phép sử dụng.';

  @override
  String get contactTitle => 'Liên hệ với chúng tôi';

  @override
  String get contactNameHint => 'Tên của bạn';

  @override
  String get contactEmailHint => 'Email của bạn';

  @override
  String get contactMessageHint => 'Tin nhắn của bạn';

  @override
  String get contactSendButton => 'Gửi tin nhắn';

  @override
  String get contactSending => 'Đang gửi...';

  @override
  String get contactSuccess => 'Gửi tin nhắn thành công! Chúng tôi sẽ liên hệ lại sớm.';

  @override
  String get contactError => 'Không thể gửi tin nhắn. Vui lòng thử lại sau.';

  @override
  String get permissionRequiredTitle => 'Yêu cầu quyền truy cập';

  @override
  String get permissionStorageDenied => 'Cần quyền truy cập bộ nhớ để lưu các tập tin đã tải xuống. Vui lòng cấp quyền trong cài đặt.';

  @override
  String get permissionPhotosDenied => 'Cần quyền truy cập ảnh để lưu các tập tin đã tải xuống (iOS). Vui lòng cấp quyền trong cài đặt.';

  @override
  String get permissionNotificationDenied => 'Nên cấp quyền thông báo để cập nhật tiến trình tải xuống.';

  @override
  String get permissiongoToSettings => 'Đi đến Cài đặt';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Nâng cấp ngay';

  @override
  String get chooseYourPlan => 'Chọn gói của bạn';

  @override
  String get planWeekly => 'Hàng tuần';

  @override
  String get planMonthly => 'Hàng tháng';

  @override
  String get planAnnually => 'Hàng năm';

  @override
  String get planLifetime => 'Trọn đời';

  @override
  String get oneTimePurchase => 'Thanh toán một lần';

  @override
  String savePercent(String percent) {
    return 'Tiết kiệm $percent%';
  }

  @override
  String get bestValue => 'Giá trị tốt nhất';

  @override
  String get selectPlanErrorTitle => 'Lỗi tải gói';

  @override
  String get selectPlanErrorMessage => 'Không thể tải các gói đăng ký. Vui lòng kiểm tra kết nối internet và thử lại.';

  @override
  String get purchaseFailed => 'Thanh toán thất bại';

  @override
  String get purchaseCancelled => 'Đã hủy thanh toán';

  @override
  String get purchasePending => 'Đang xử lý thanh toán';

  @override
  String get purchaseSuccess => 'Thanh toán thành công!';

  @override
  String get alreadyPremium => 'Bạn đã là người dùng Premium.';

  @override
  String get getPremium => 'Nâng cấp Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Lượt tải còn lại: $currentLimit. Bạn có thể nhận các lượt tải miễn phí bằng cách xem quảng cáo';
  }

  @override
  String get unlockSaveVideoPro => 'Mở khóa tính năng cao cấp';

  @override
  String get noAdsUnlockAllFeatures => 'Không quảng cáo và mở khóa tất cả tính năng';

  @override
  String get removeAds => 'Xóa tất cả quảng cáo';

  @override
  String get threadsDownloads => 'Tải xuống không giới hạn video, ảnh và tin nhắn thoại HD từ Threads';

  @override
  String get instagramDownloads => 'Tải xuống không giới hạn video, ảnh, reels, story và hồ sơ HD từ Instagram';

  @override
  String get lifetimePro => 'Pro trọn đời';

  @override
  String get yearlyPro => 'Pro hàng năm';

  @override
  String get monthlyPro => 'Pro hàng tháng';

  @override
  String get weeklyPro => 'Pro hàng tuần';

  @override
  String get onlyBuyOnce => 'Chỉ mua một lần';

  @override
  String get perYear => '/năm';

  @override
  String get perMonth => '/tháng';

  @override
  String get perWeek => '/tuần';

  @override
  String get mostPopular => 'Phổ biến nhất';

  @override
  String get buyNow => 'Mua ngay';

  @override
  String get termsOfUse => 'Điều khoản sử dụng';

  @override
  String get privacyPolicy => 'Chính sách bảo mật';

  @override
  String get loadingPlans => 'Đang tải gói...';

  @override
  String get failedToLoadPlans => 'Tải gói thất bại';

  @override
  String get retry => 'Thử lại';

  @override
  String freeTrialDays(int days) {
    return 'Dùng thử miễn phí $days ngày';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Dùng thử miễn phí $weeks tuần';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Dùng thử miễn phí $months tháng';
  }

  @override
  String get supportedPlatforms => 'Nền tảng được hỗ trợ';

  @override
  String get supportThreads => 'Tải xuống video, hình ảnh và tin nhắn thoại';

  @override
  String get supportInstagram => 'Tải xuống video, hình ảnh, Reels, Stories và hồ sơ';

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
