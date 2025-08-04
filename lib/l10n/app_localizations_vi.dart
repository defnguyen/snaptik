// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

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
  String get enterTiktokUrl => 'Nhập URL TikTok';

  @override
  String get howToUseTitle => 'Cách sử dụng:';

  @override
  String get howToUseStep1 => '1. Mở TikTok và tìm video bạn muốn tải xuống.';

  @override
  String get howToUseStep2 => '2. Chạm vào biểu tượng \'Chia sẻ\' ở bên phải video.';

  @override
  String get howToUseStep3 => '3. Chọn \'Sao chép liên kết\'.';

  @override
  String get howToUseStep4 => '4. Dán liên kết vào trường nhập ở trên và chạm \'Tải xuống\'.';

  @override
  String get invalidUrlError => 'Định dạng URL TikTok không hợp lệ.';

  @override
  String get fetchingMedia => 'Đang tải media...';

  @override
  String get downloadPhoto => 'Tải xuống ảnh';

  @override
  String get downloadVideo => 'Tải xuống video';

  @override
  String get downloadVoice => 'Tải xuống nhạc';

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
    return 'Bạn đã đạt giới hạn tải xuống ($limit lần). Xem quảng cáo ngắn để có thêm 5 lần tải xuống.';
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
  String get musicTab => 'Nhạc';

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
  String get mediaInfoTitle => 'Thông tin media';

  @override
  String get fileName => 'Tên';

  @override
  String get filePath => 'Đường dẫn';

  @override
  String get dateAdded => 'Ngày thêm';

  @override
  String get fileSize => 'Kích thước';

  @override
  String get renameMediaTitle => 'Đổi tên media';

  @override
  String get enterNewName => 'Nhập tên mới';

  @override
  String get save => 'Lưu';

  @override
  String get deleteConfirmationTitle => 'Xác nhận xóa';

  @override
  String get deleteConfirmationMessage => 'Bạn có chắc muốn xóa tệp này? Hành động này không thể hoàn tác.';

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
  String get settingsClaimSuccess => 'Thành công! Bạn có thêm 5 lần tải xuống.';

  @override
  String get settingsClaimError => 'Không thể tải quảng cáo. Vui lòng thử lại sau.';

  @override
  String get settingsPremium => 'Nâng cấp lên Premium';

  @override
  String get settingsPremiumDescription => 'Xóa quảng cáo và có tải xuống không giới hạn.';

  @override
  String get settingsRestorePurchase => 'Khôi phục giao dịch mua';

  @override
  String get settingsRestoreSuccess => 'Khôi phục giao dịch mua thành công!';

  @override
  String get settingsRestoreError => 'Không thể khôi phục giao dịch mua. Không tìm thấy gói đăng ký hoạt động hoặc có lỗi xảy ra.';

  @override
  String get settingsGeneralSection => 'Chung';

  @override
  String get settingsDownloadsSection => 'Tải xuống';

  @override
  String get settingsAccountSection => 'Tài khoản';

  @override
  String get settingsSupportSection => 'Hỗ trợ và phản hồi';

  @override
  String get settingsAbout => 'Về ứng dụng';

  @override
  String get settingsContact => 'Liên hệ';

  @override
  String get settingsRateApp => 'Đánh giá ứng dụng';

  @override
  String get settingsShareApp => 'Chia sẻ ứng dụng';

  @override
  String get premiumUser => 'Người dùng Premium';

  @override
  String get aboutTitle => 'Về TikTok Downloader';

  @override
  String get aboutContent => 'Ứng dụng này giúp bạn tải xuống video, ảnh và âm thanh công khai từ các bài đăng TikTok.\n\nVui lòng tôn trọng bản quyền và quyền riêng tư. Chỉ tải xuống nội dung mà bạn có quyền sử dụng.';

  @override
  String get contactTitle => 'Liên hệ';

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
  String get permissionRequiredTitle => 'Cần quyền truy cập';

  @override
  String get permissionStorageDenied => 'Cần quyền truy cập bộ nhớ để lưu các tệp đã tải xuống. Vui lòng cấp quyền trong cài đặt.';

  @override
  String get permissionPhotosDenied => 'Cần quyền truy cập ảnh để lưu các tệp đã tải xuống (iOS). Vui lòng cấp quyền trong cài đặt.';

  @override
  String get permissionNotificationDenied => 'Khuyến nghị cấp quyền thông báo để cập nhật tiến trình tải xuống.';

  @override
  String get permissiongoToSettings => 'Đi đến cài đặt';

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
  String get oneTimePurchase => 'Mua một lần';

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
  String get purchaseFailed => 'Mua hàng thất bại';

  @override
  String get purchaseCancelled => 'Đã hủy mua hàng';

  @override
  String get purchasePending => 'Giao dịch mua đang chờ';

  @override
  String get purchaseSuccess => 'Mua hàng thành công!';

  @override
  String get alreadyPremium => 'Bạn đã là người dùng Premium.';

  @override
  String get getPremium => 'Nhận Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Số lần tải xuống còn lại: $currentLimit. Bạn có thể nhận tải xuống miễn phí bằng cách xem quảng cáo';
  }

  @override
  String get unlockSaveVideoPro => 'Mở khóa tính năng Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Không quảng cáo và mở khóa tất cả tính năng';

  @override
  String get removeAds => 'Xóa tất cả quảng cáo';

  @override
  String get tiktokDownloads => 'Tải xuống HD không giới hạn video, ảnh và nhạc từ TikTok';

  @override
  String get instagramDownloads => 'Tải xuống chất lượng cao không có watermark';

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
  String get failedToLoadPlans => 'Không thể tải gói';

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
  String get supportTiktok => 'Tải xuống video, hình ảnh, nhạc';

  @override
  String get supportInstagram => 'Tải xuống chất lượng cao không có watermark';

  @override
  String get playlistTab => 'Danh sách phát';

  @override
  String get authorsTab => 'Tác giả';

  @override
  String get createPlaylist => 'Tạo danh sách phát';

  @override
  String get playlistTitle => 'Tiêu đề danh sách phát';

  @override
  String get playlistDescription => 'Mô tả';

  @override
  String get chooseFiles => 'Chọn tệp';

  @override
  String get createPlaylistButton => 'Tạo danh sách phát';

  @override
  String get playlistTitleHint => 'Nhập tiêu đề danh sách phát';

  @override
  String get playlistDescriptionHint => 'Nhập mô tả danh sách phát (tùy chọn)';

  @override
  String get selectFiles => 'Chọn tệp để thêm vào danh sách phát';

  @override
  String get noPlaylistsYet => 'Chưa có danh sách phát nào';

  @override
  String get createFirstPlaylist => 'Tạo danh sách phát đầu tiên để sắp xếp các tệp tải xuống';

  @override
  String get noAuthorsYet => 'Chưa có tác giả nào';

  @override
  String get downloadSomethingFirst => 'Tải xuống một số nội dung trước để xem tác giả ở đây';

  @override
  String authorVideos(Object author) {
    return 'Video của $author';
  }

  @override
  String get noVideosFromAuthor => 'Chưa có video nào từ tác giả này';
}
