// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

  @override
  String get homeTab => 'หน้าหลัก';

  @override
  String get libraryTab => 'คลังข้อมูล';

  @override
  String get settingsTab => 'การตั้งค่า';

  @override
  String get pasteLink => 'วางลิงก์';

  @override
  String get clear => 'ล้าง';

  @override
  String get download => 'ดาวน์โหลด';

  @override
  String get enterTiktokUrl => 'ใส่ URL ของ TikTok';

  @override
  String get howToUseTitle => 'วิธีการใช้:';

  @override
  String get howToUseStep1 => '1. เปิด TikTok และหาวิดีโอที่คุณต้องการดาวน์โหลด';

  @override
  String get howToUseStep2 => '2. แตะไอคอน \'แชร์\' ที่ด้านขวาของวิดีโอ';

  @override
  String get howToUseStep3 => '3. เลือก \'คัดลอกลิงก์\'';

  @override
  String get howToUseStep4 => '4. วางลิงก์ในช่องใส่ข้อมูลด้านบนและแตะ \'ดาวน์โหลด\'';

  @override
  String get invalidUrlError => 'รูปแบบ URL ของ TikTok ไม่ถูกต้อง';

  @override
  String get fetchingMedia => 'กำลังดึงข้อมูลสื่อ...';

  @override
  String get downloadPhoto => 'ดาวน์โหลดรูป';

  @override
  String get downloadVideo => 'ดาวน์โหลดวิดีโอ';

  @override
  String get downloadVoice => 'ดาวน์โหลดเพลง';

  @override
  String get downloadMp3 => 'ดาวน์โหลด MP3';

  @override
  String get downloading => 'กำลังดาวน์โหลด...';

  @override
  String get downloadSuccess => 'ดาวน์โหลดเสร็จสิ้น!';

  @override
  String get downloadError => 'ดาวน์โหลดล้มเหลว กรุณาลองใหม่';

  @override
  String get downloadLimitReachedTitle => 'ถึงขีดจำกัดการดาวน์โหลด';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'คุณได้ถึงขีดจำกัดการดาวน์โหลดแล้ว ($limit ครั้ง) ดูโฆษณาสั้นๆ เพื่อรับสิทธิ์ดาวน์โหลดเพิ่มอีก 5 ครั้ง';
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
  String get musicTab => 'เพลง';

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
  String get filePath => 'เส้นทาง';

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
  String get settingsClaimMoreDownloads => 'รับดาวน์โหลดเพิ่ม 5 ครั้ง';

  @override
  String get settingsClaimSuccess => 'สำเร็จ! คุณมีดาวน์โหลดเพิ่มอีก 5 ครั้ง';

  @override
  String get settingsClaimError => 'โหลดโฆษณาล้มเหลว กรุณาลองใหม่ในภายหลัง';

  @override
  String get settingsPremium => 'อัปเกรดเป็น Premium';

  @override
  String get settingsPremiumDescription => 'ลบโฆษณาและรับดาวน์โหลดไม่จำกัด';

  @override
  String get settingsRestorePurchase => 'คืนค่าการซื้อ';

  @override
  String get settingsRestoreSuccess => 'คืนค่าการซื้อสำเร็จ!';

  @override
  String get settingsRestoreError => 'คืนค่าการซื้อล้มเหลว ไม่พบการสมัครสมาชิกที่ใช้งานอยู่หรือเกิดข้อผิดพลาด';

  @override
  String get settingsGeneralSection => 'ทั่วไป';

  @override
  String get settingsDownloadsSection => 'ดาวน์โหลด';

  @override
  String get settingsAccountSection => 'บัญชี';

  @override
  String get settingsSupportSection => 'ความช่วยเหลือและคำติชม';

  @override
  String get settingsAbout => 'เกี่ยวกับ';

  @override
  String get settingsContact => 'ติดต่อเรา';

  @override
  String get settingsRateApp => 'ให้คะแนนแอปนี้';

  @override
  String get settingsShareApp => 'แชร์แอปนี้';

  @override
  String get premiumUser => 'ผู้ใช้ Premium';

  @override
  String get aboutTitle => 'เกี่ยวกับ TikTok Downloader';

  @override
  String get aboutContent => 'แอปนี้ช่วยคุณดาวน์โหลดวิดีโอ รูปภาพ และเสียงสาธารณะจากโพสต์ TikTok\n\nกรุณาเคารพลิขสิทธิ์และความเป็นส่วนตัว ดาวน์โหลดเฉพาะเนื้อหาที่คุณได้รับอนุญาตให้ใช้งาน';

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
  String get contactSuccess => 'ส่งข้อความสำเร็จ! เราจะติดต่อกลับไปเร็วๆ นี้';

  @override
  String get contactError => 'ส่งข้อความล้มเหลว กรุณาลองใหม่ในภายหลัง';

  @override
  String get permissionRequiredTitle => 'ต้องการสิทธิ์';

  @override
  String get permissionStorageDenied => 'ต้องการสิทธิ์การจัดเก็บเพื่อบันทึกไฟล์ที่ดาวน์โหลด กรุณาให้สิทธิ์ในการตั้งค่า';

  @override
  String get permissionPhotosDenied => 'ต้องการสิทธิ์รูปภาพเพื่อบันทึกไฟล์ที่ดาวน์โหลด (iOS) กรุณาให้สิทธิ์ในการตั้งค่า';

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
  String get planLifetime => 'ตลอดชีวิต';

  @override
  String get oneTimePurchase => 'ซื้อครั้งเดียว';

  @override
  String savePercent(String percent) {
    return 'ประหยัด $percent%';
  }

  @override
  String get bestValue => 'คุ้มค่าที่สุด';

  @override
  String get selectPlanErrorTitle => 'ข้อผิดพลาดในการโหลดแผน';

  @override
  String get selectPlanErrorMessage => 'ไม่สามารถโหลดแผนการสมัครสมาชิกได้ กรุณาตรวจสอบการเชื่อมต่ออินเทอร์เน็ตและลองใหม่';

  @override
  String get purchaseFailed => 'การซื้อล้มเหลว';

  @override
  String get purchaseCancelled => 'ยกเลิกการซื้อ';

  @override
  String get purchasePending => 'การซื้อรอดำเนินการ';

  @override
  String get purchaseSuccess => 'ซื้อสำเร็จ!';

  @override
  String get alreadyPremium => 'คุณเป็นผู้ใช้ Premium อยู่แล้ว';

  @override
  String get getPremium => 'รับ Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'ดาวน์โหลดที่เหลือ: $currentLimit คุณสามารถรับดาวน์โหลดฟรีได้โดยการดูโฆษณา';
  }

  @override
  String get unlockSaveVideoPro => 'ปลดล็อกฟีเจอร์ Premium';

  @override
  String get noAdsUnlockAllFeatures => 'ไม่มีโฆษณาและปลดล็อกฟีเจอร์ทั้งหมด';

  @override
  String get removeAds => 'ลบโฆษณาทั้งหมด';

  @override
  String get tiktokDownloads => 'ดาวน์โหลด HD ไม่จำกัดสำหรับวิดีโอ รูปภาพ และเพลงจาก TikTok';

  @override
  String get instagramDownloads => 'ดาวน์โหลดคุณภาพสูงไม่มีลายน้ำ';

  @override
  String get lifetimePro => 'Pro ตลอดชีวิต';

  @override
  String get yearlyPro => 'Pro รายปี';

  @override
  String get monthlyPro => 'Pro รายเดือน';

  @override
  String get weeklyPro => 'Pro รายสัปดาห์';

  @override
  String get onlyBuyOnce => 'ซื้อเพียงครั้งเดียว';

  @override
  String get perYear => '/ปี';

  @override
  String get perMonth => '/เดือน';

  @override
  String get perWeek => '/สัปดาห์';

  @override
  String get mostPopular => 'ยอดนิยมสุด';

  @override
  String get buyNow => 'ซื้อตอนนี้';

  @override
  String get termsOfUse => 'ข้อกำหนดการใช้งาน';

  @override
  String get privacyPolicy => 'นโยบายความเป็นส่วนตัว';

  @override
  String get loadingPlans => 'กำลังโหลดแผน...';

  @override
  String get failedToLoadPlans => 'โหลดแผนล้มเหลว';

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
  String get supportTiktok => 'ดาวน์โหลดวิดีโอ รูปภาพ เพลง';

  @override
  String get supportInstagram => 'ดาวน์โหลดคุณภาพสูงไม่มีลายน้ำ';

  @override
  String get playlistTab => 'เพลย์ลิสต์';

  @override
  String get authorsTab => 'ผู้สร้าง';

  @override
  String get createPlaylist => 'สร้างเพลย์ลิสต์';

  @override
  String get playlistTitle => 'ชื่อเพลย์ลิสต์';

  @override
  String get playlistDescription => 'คำอธิบาย';

  @override
  String get chooseFiles => 'เลือกไฟล์';

  @override
  String get createPlaylistButton => 'สร้างเพลย์ลิสต์';

  @override
  String get playlistTitleHint => 'ใส่ชื่อเพลย์ลิสต์';

  @override
  String get playlistDescriptionHint => 'ใส่คำอธิบายเพลย์ลิสต์ (ไม่บังคับ)';

  @override
  String get selectFiles => 'เลือกไฟล์เพื่อเพิ่มในเพลย์ลิสต์';

  @override
  String get noPlaylistsYet => 'ยังไม่มีเพลย์ลิสต์';

  @override
  String get createFirstPlaylist => 'สร้างเพลย์ลิสต์แรกของคุณเพื่อจัดระเบียบการดาวน์โหลด';

  @override
  String get noAuthorsYet => 'ยังไม่มีผู้สร้าง';

  @override
  String get downloadSomethingFirst => 'ดาวน์โหลดเนื้อหาบางอย่างก่อนเพื่อดูผู้สร้างที่นี่';

  @override
  String authorVideos(Object author) {
    return 'วิดีโอโดย $author';
  }

  @override
  String get noVideosFromAuthor => 'ยังไม่มีวิดีโอจากผู้สร้างนี้';

  @override
  String errorLoadingLibrary(Object error) {
    return 'เกิดข้อผิดพลาดในการโหลดไลบรารี: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'สื่อที่ดาวน์โหลดจะปรากฏที่นี่';

  @override
  String get noPhotosDownloadedYet => 'ยังไม่มีรูปภาพที่ดาวน์โหลด';

  @override
  String get noVideosDownloadedYet => 'ยังไม่มีวิดีโอที่ดาวน์โหลด';

  @override
  String get noAudioDownloadedYet => 'ยังไม่มีเพลงที่ดาวน์โหลด';

  @override
  String get somethingWentWrong => 'เกิดข้อผิดพลาด';
}
