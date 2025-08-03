// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'หน้าหลัก';

  @override
  String get libraryTab => 'คลัง';

  @override
  String get settingsTab => 'ตั้งค่า';

  @override
  String get pasteLink => 'วางลิงก์';

  @override
  String get clear => 'ล้าง';

  @override
  String get download => 'ดาวน์โหลด';

  @override
  String get enterThreadsUrl => 'ใส่ URL ของ Threads/Instagram';

  @override
  String get howToUseTitle => 'วิธีใช้งาน:';

  @override
  String get howToUseStep1 => '1. เปิด Threads และค้นหาโพสต์ที่คุณต้องการดาวน์โหลด';

  @override
  String get howToUseStep2 => '2. แตะไอคอน \'แชร์\' ด้านล่างโพสต์';

  @override
  String get howToUseStep3 => '3. เลือก \'คัดลอกลิงก์\'';

  @override
  String get howToUseStep4 => '4. วางลิงก์ลงในช่องข้างบนและแตะ \'ดาวน์โหลด\'';

  @override
  String get invalidUrlError => 'รูปแบบ URL Threads ไม่ถูกต้อง';

  @override
  String get fetchingMedia => 'กำลังดึงสื่อ...';

  @override
  String get downloadPhoto => 'ดาวน์โหลดรูปภาพ';

  @override
  String get downloadVideo => 'ดาวน์โหลดวิดีโอ';

  @override
  String get downloadVoice => 'ดาวน์โหลดเสียง';

  @override
  String get downloadMp3 => 'ดาวน์โหลด MP3';

  @override
  String get downloading => 'กำลังดาวน์โหลด...';

  @override
  String get downloadSuccess => 'ดาวน์โหลดเสร็จสมบูรณ์!';

  @override
  String get downloadError => 'ดาวน์โหลดล้มเหลว โปรดลองอีกครั้ง';

  @override
  String get downloadLimitReachedTitle => 'ถึงขีดจำกัดการดาวน์โหลด';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'คุณได้ถึงขีดจำกัดการดาวน์โหลดแล้ว ($limit ครั้ง) ดูโฆษณาสั้นๆ เพื่อรับการดาวน์โหลดเพิ่มอีก 5 ครั้ง';
  }

  @override
  String get watchAd => 'ดูโฆษณา';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get photosTab => 'รูปภาพ';

  @override
  String get videosTab => 'วิดีโอ';

  @override
  String get voiceTab => 'เสียง';

  @override
  String get view => 'ดู';

  @override
  String get info => 'ข้อมูล';

  @override
  String get rename => 'เปลี่ยนชื่อ';

  @override
  String get share => 'แชร์';

  @override
  String get delete => 'ลบ';

  @override
  String get mediaInfoTitle => 'ข้อมูลสื่อ';

  @override
  String get fileName => 'ชื่อ';

  @override
  String get filePath => 'ที่อยู่';

  @override
  String get dateAdded => 'วันที่เพิ่ม';

  @override
  String get fileSize => 'ขนาด';

  @override
  String get renameMediaTitle => 'เปลี่ยนชื่อสื่อ';

  @override
  String get enterNewName => 'ใส่ชื่อใหม่';

  @override
  String get save => 'บันทึก';

  @override
  String get deleteConfirmationTitle => 'ยืนยันการลบ';

  @override
  String get deleteConfirmationMessage => 'คุณแน่ใจหรือไม่ว่าต้องการลบไฟล์นี้? การกระทำนี้ไม่สามารถย้อนกลับได้';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get settingsLanguage => 'ภาษา';

  @override
  String get settingsTheme => 'ธีม';

  @override
  String get settingsThemeLight => 'สว่าง';

  @override
  String get settingsThemeDark => 'มืด';

  @override
  String get settingsThemeSystem => 'ระบบ';

  @override
  String get settingsClaimMoreDownloads => 'รับการดาวน์โหลดเพิ่มอีก 5 ครั้ง';

  @override
  String get settingsClaimSuccess => 'สำเร็จ! คุณได้รับการดาวน์โหลดเพิ่มอีก 5 ครั้ง';

  @override
  String get settingsClaimError => 'ล้มเหลวในการโหลดโฆษณา โปรดลองอีกครั้งในภายหลัง';

  @override
  String get settingsPremium => 'อัปเกรดเป็นพรีเมียม';

  @override
  String get settingsPremiumDescription => 'ลบโฆษณาและรับการดาวน์โหลดไม่จำกัด';

  @override
  String get settingsRestorePurchase => 'กู้คืนการซื้อ';

  @override
  String get settingsRestoreSuccess => 'กู้คืนการซื้อสำเร็จ!';

  @override
  String get settingsRestoreError => 'ล้มเหลวในการกู้คืนการซื้อ ไม่พบการสมัครสมาชิกที่ใช้งานอยู่หรือเกิดข้อผิดพลาด';

  @override
  String get settingsGeneralSection => 'ทั่วไป';

  @override
  String get settingsDownloadsSection => 'ดาวน์โหลด';

  @override
  String get settingsAccountSection => 'บัญชี';

  @override
  String get settingsSupportSection => 'การสนับสนุนและข้อเสนอแนะ';

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String get settingsContact => 'ติดต่อเรา';

  @override
  String get settingsRateApp => 'ให้คะแนนแอปนี้';

  @override
  String get settingsShareApp => 'แชร์แอปนี้';

  @override
  String get premiumUser => 'ผู้ใช้พรีเมียม';

  @override
  String get aboutTitle => 'เกี่ยวกับ Threads Downloader';

  @override
  String get aboutContent => 'แอปนี้ช่วยให้คุณดาวน์โหลดรูปภาพ วิดีโอ และบันทึกเสียงสาธารณะจากโพสต์ Threads\n\nโปรดเคารพลิขสิทธิ์และความเป็นส่วนตัว ดาวน์โหลดเฉพาะเนื้อหาที่คุณมีสิทธิ์ใช้เท่านั้น';

  @override
  String get contactTitle => 'ติดต่อเรา';

  @override
  String get contactNameHint => 'ชื่อของคุณ';

  @override
  String get contactEmailHint => 'อีเมลของคุณ';

  @override
  String get contactMessageHint => 'ข้อความของคุณ';

  @override
  String get contactSendButton => 'ส่งข้อความ';

  @override
  String get contactSending => 'กำลังส่ง...';

  @override
  String get contactSuccess => 'ส่งข้อความสำเร็จ! เราจะติดต่อกลับไปในเร็วๆ นี้';

  @override
  String get contactError => 'ส่งข้อความล้มเหลว โปรดลองอีกครั้งในภายหลัง';

  @override
  String get permissionRequiredTitle => 'ต้องการสิทธิ์';

  @override
  String get permissionStorageDenied => 'ต้องการสิทธิ์การจัดเก็บเพื่อบันทึกไฟล์ที่ดาวน์โหลด โปรดให้สิทธิ์ในการตั้งค่า';

  @override
  String get permissionPhotosDenied => 'ต้องการสิทธิ์รูปภาพเพื่อบันทึกไฟล์ที่ดาวน์โหลด (iOS) โปรดให้สิทธิ์ในการตั้งค่า';

  @override
  String get permissionNotificationDenied => 'แนะนำให้มีสิทธิ์การแจ้งเตือนสำหรับการอัปเดตความคืบหน้าการดาวน์โหลด';

  @override
  String get permissiongoToSettings => 'ไปที่การตั้งค่า';

  @override
  String get ok => 'ตกลง';

  @override
  String get upgradeNow => 'อัปเกรดตอนนี้';

  @override
  String get chooseYourPlan => 'เลือกแผนของคุณ';

  @override
  String get planWeekly => 'รายสัปดาห์';

  @override
  String get planMonthly => 'รายเดือน';

  @override
  String get planAnnually => 'รายปี';

  @override
  String get planLifetime => 'ตลอดชีพ';

  @override
  String get oneTimePurchase => 'ซื้อครั้งเดียว';

  @override
  String savePercent(String percent) {
    return 'ประหยัด $percent%';
  }

  @override
  String get bestValue => 'คุ้มค่าที่สุด';

  @override
  String get selectPlanErrorTitle => 'เกิดข้อผิดพลาดในการโหลดแผน';

  @override
  String get selectPlanErrorMessage => 'ไม่สามารถโหลดแผนการสมัครสมาชิกได้ โปรดตรวจสอบการเชื่อมต่ออินเทอร์เน็ตและลองอีกครั้ง';

  @override
  String get purchaseFailed => 'การซื้อล้มเหลว';

  @override
  String get purchaseCancelled => 'การซื้อถูกยกเลิก';

  @override
  String get purchasePending => 'การซื้อกำลังดำเนินการ';

  @override
  String get purchaseSuccess => 'การซื้อสำเร็จ!';

  @override
  String get alreadyPremium => 'คุณเป็นผู้ใช้พรีเมียมอยู่แล้ว';

  @override
  String get getPremium => 'รับพรีเมียม';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'การดาวน์โหลดที่เหลือ: $currentLimit คุณสามารถรับการดาวน์โหลดฟรีได้โดยการดูโฆษณา';
  }

  @override
  String get unlockSaveVideoPro => 'ปลดล็อกฟีเจอร์พรีเมียม';

  @override
  String get noAdsUnlockAllFeatures => 'ไม่มีโฆษณาและปลดล็อกฟีเจอร์ทั้งหมด';

  @override
  String get removeAds => 'ลบโฆษณาทั้งหมด';

  @override
  String get threadsDownloads => 'ดาวน์โหลด HD ไม่จำกัดสำหรับวิดีโอ รูปภาพ และข้อความเสียงจาก Threads';

  @override
  String get instagramDownloads => 'ดาวน์โหลด HD ไม่จำกัดสำหรับวิดีโอ รูปภาพ reels สตอรี่ และโปรไฟล์เต็มจาก Instagram';

  @override
  String get lifetimePro => 'โปรตลอดชีวิต';

  @override
  String get yearlyPro => 'โปรรายปี';

  @override
  String get monthlyPro => 'โปรรายเดือน';

  @override
  String get weeklyPro => 'โปรรายสัปดาห์';

  @override
  String get onlyBuyOnce => 'ซื้อครั้งเดียวเท่านั้น';

  @override
  String get perYear => '/ปี';

  @override
  String get perMonth => '/เดือน';

  @override
  String get perWeek => '/สัปดาห์';

  @override
  String get mostPopular => 'ได้รับความนิยมมากที่สุด';

  @override
  String get buyNow => 'ซื้อเลย';

  @override
  String get termsOfUse => 'ข้อกำหนดการใช้งาน';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get loadingPlans => 'กำลังโหลดแผน...';

  @override
  String get failedToLoadPlans => 'โหลดแผนไม่สำเร็จ';

  @override
  String get retry => 'ลองใหม่';

  @override
  String freeTrialDays(int days) {
    return 'ทดลองใช้ฟรี $days วัน';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'ทดลองใช้ฟรี $weeks สัปดาห์';
  }

  @override
  String freeTrialMonths(int months) {
    return 'ทดลองใช้ฟรี $months เดือน';
  }

  @override
  String get supportedPlatforms => 'แพลตฟอร์มที่รองรับ';

  @override
  String get supportThreads => 'ดาวน์โหลดวิดีโอ รูปภาพ และข้อความเสียง';

  @override
  String get supportInstagram => 'ดาวน์โหลดวิดีโอ รูปภาพ Reels Stories และโปรไฟล์';

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
