// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'تحميل TikTok';

  @override
  String get homeTab => 'الرئيسية';

  @override
  String get libraryTab => 'المكتبة';

  @override
  String get settingsTab => 'الإعدادات';

  @override
  String get pasteLink => 'لصق الرابط';

  @override
  String get clear => 'مسح';

  @override
  String get download => 'تحميل';

  @override
  String get enterTiktokUrl => 'أدخل رابط TikTok';

  @override
  String get howToUseTitle => 'كيفية الاستخدام:';

  @override
  String get howToUseStep1 => '1. افتح TikTok وابحث عن الفيديو الذي تريد تحميله.';

  @override
  String get howToUseStep2 => '2. اضغط على أيقونة \'مشاركة\' على الجانب الأيمن من الفيديو.';

  @override
  String get howToUseStep3 => '3. اختر \'نسخ الرابط\'.';

  @override
  String get howToUseStep4 => '4. الصق الرابط في حقل الإدخال أعلاه واضغط على \'تحميل\'.';

  @override
  String get invalidUrlError => 'تنسيق رابط TikTok غير صحيح.';

  @override
  String get fetchingMedia => 'جاري جلب الوسائط...';

  @override
  String get downloadPhoto => 'تحميل الصورة';

  @override
  String get downloadVideo => 'تحميل الفيديو';

  @override
  String get downloadVoice => 'تحميل الموسيقى';

  @override
  String get downloadMp3 => 'تحميل MP3';

  @override
  String get downloading => 'جاري التحميل...';

  @override
  String get downloadSuccess => 'اكتمل التحميل!';

  @override
  String get downloadError => 'فشل التحميل. يرجى المحاولة مرة أخرى.';

  @override
  String get downloadLimitReachedTitle => 'تم الوصول لحد التحميل';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'لقد وصلت إلى حد التحميل ($limit مرات). شاهد إعلاناً قصيراً للحصول على 5 محاولات تحميل إضافية.';
  }

  @override
  String get watchAd => 'مشاهدة الإعلان';

  @override
  String get cancel => 'إلغاء';

  @override
  String get photosTab => 'الصور';

  @override
  String get videosTab => 'الفيديوهات';

  @override
  String get musicTab => 'الموسيقى';

  @override
  String get view => 'عرض';

  @override
  String get info => 'معلومات';

  @override
  String get rename => 'إعادة تسمية';

  @override
  String get share => 'مشاركة';

  @override
  String get delete => 'حذف';

  @override
  String get mediaInfoTitle => 'معلومات الوسائط';

  @override
  String get fileName => 'الاسم';

  @override
  String get filePath => 'المسار';

  @override
  String get dateAdded => 'تاريخ الإضافة';

  @override
  String get fileSize => 'الحجم';

  @override
  String get renameMediaTitle => 'إعادة تسمية الوسائط';

  @override
  String get enterNewName => 'أدخل اسماً جديداً';

  @override
  String get save => 'حفظ';

  @override
  String get deleteConfirmationTitle => 'تأكيد الحذف';

  @override
  String get deleteConfirmationMessage => 'هل أنت متأكد من أنك تريد حذف هذا الملف؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get confirm => 'تأكيد';

  @override
  String get settingsLanguage => 'اللغة';

  @override
  String get settingsTheme => 'المظهر';

  @override
  String get settingsThemeLight => 'فاتح';

  @override
  String get settingsThemeDark => 'داكن';

  @override
  String get settingsThemeSystem => 'النظام';

  @override
  String get settingsClaimMoreDownloads => 'احصل على 5 تحميلات إضافية';

  @override
  String get settingsClaimSuccess => 'نجح! لديك 5 تحميلات إضافية.';

  @override
  String get settingsClaimError => 'فشل في تحميل الإعلان. يرجى المحاولة لاحقاً.';

  @override
  String get settingsPremium => 'الترقية إلى المميز';

  @override
  String get settingsPremiumDescription => 'إزالة الإعلانات والحصول على تحميلات غير محدودة.';

  @override
  String get settingsRestorePurchase => 'استعادة الشراء';

  @override
  String get settingsRestoreSuccess => 'تم استعادة المشتريات بنجاح!';

  @override
  String get settingsRestoreError => 'فشل في استعادة المشتريات. لم يتم العثور على اشتراك نشط أو حدث خطأ.';

  @override
  String get settingsGeneralSection => 'عام';

  @override
  String get settingsDownloadsSection => 'التحميلات';

  @override
  String get settingsAccountSection => 'الحساب';

  @override
  String get settingsSupportSection => 'الدعم والتعليقات';

  @override
  String get settingsAbout => 'حول';

  @override
  String get settingsContact => 'اتصل بنا';

  @override
  String get settingsRateApp => 'قيم هذا التطبيق';

  @override
  String get settingsShareApp => 'شارك هذا التطبيق';

  @override
  String get premiumUser => 'مستخدم مميز';

  @override
  String get aboutTitle => 'حول تحميل TikTok';

  @override
  String get aboutContent => 'يساعدك هذا التطبيق على تحميل الفيديوهات والصور والملفات الصوتية العامة من منشورات TikTok.\n\nيرجى احترام حقوق الطبع والنشر والخصوصية. حمل المحتوى الذي لديك الإذن لاستخدامه فقط.';

  @override
  String get contactTitle => 'اتصل بنا';

  @override
  String get contactNameHint => 'اسمك';

  @override
  String get contactEmailHint => 'بريدك الإلكتروني';

  @override
  String get contactMessageHint => 'رسالتك';

  @override
  String get contactSendButton => 'إرسال الرسالة';

  @override
  String get contactSending => 'جاري الإرسال...';

  @override
  String get contactSuccess => 'تم إرسال الرسالة بنجاح! سنعود إليك قريباً.';

  @override
  String get contactError => 'فشل في إرسال الرسالة. يرجى المحاولة لاحقاً.';

  @override
  String get permissionRequiredTitle => 'إذن مطلوب';

  @override
  String get permissionStorageDenied => 'إذن التخزين مطلوب لحفظ الملفات المحملة. يرجى منح الإذن في الإعدادات.';

  @override
  String get permissionPhotosDenied => 'إذن الصور مطلوب لحفظ الملفات المحملة (iOS). يرجى منح الإذن في الإعدادات.';

  @override
  String get permissionNotificationDenied => 'إذن الإشعارات موصى به لتحديثات تقدم التحميل.';

  @override
  String get permissiongoToSettings => 'الذهاب إلى الإعدادات';

  @override
  String get ok => 'موافق';

  @override
  String get upgradeNow => 'ترقية الآن';

  @override
  String get chooseYourPlan => 'اختر خطتك';

  @override
  String get planWeekly => 'أسبوعي';

  @override
  String get planMonthly => 'شهري';

  @override
  String get planAnnually => 'سنوي';

  @override
  String get planLifetime => 'مدى الحياة';

  @override
  String get oneTimePurchase => 'شراء لمرة واحدة';

  @override
  String savePercent(String percent) {
    return 'وفر $percent%';
  }

  @override
  String get bestValue => 'أفضل قيمة';

  @override
  String get selectPlanErrorTitle => 'خطأ في تحميل الخطط';

  @override
  String get selectPlanErrorMessage => 'لا يمكن تحميل خطط الاشتراك. يرجى التحقق من اتصال الإنترنت والمحاولة مرة أخرى.';

  @override
  String get purchaseFailed => 'فشل الشراء';

  @override
  String get purchaseCancelled => 'تم إلغاء الشراء';

  @override
  String get purchasePending => 'الشراء معلق';

  @override
  String get purchaseSuccess => 'نجح الشراء!';

  @override
  String get alreadyPremium => 'أنت بالفعل مستخدم مميز.';

  @override
  String get getPremium => 'احصل على المميز';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'التحميلات المتبقية: $currentLimit. يمكنك الحصول على تحميلات مجانية من خلال مشاهدة الإعلانات';
  }

  @override
  String get unlockSaveVideoPro => 'فتح الميزات المميزة';

  @override
  String get noAdsUnlockAllFeatures => 'بدون إعلانات وفتح جميع الميزات';

  @override
  String get removeAds => 'إزالة جميع الإعلانات';

  @override
  String get tiktokDownloads => 'تحميلات غير محدودة عالية الجودة للفيديوهات والصور والموسيقى من TikTok';

  @override
  String get instagramDownloads => 'تحميلات عالية الجودة بدون علامات مائية';

  @override
  String get lifetimePro => 'مميز مدى الحياة';

  @override
  String get yearlyPro => 'مميز سنوي';

  @override
  String get monthlyPro => 'مميز شهري';

  @override
  String get weeklyPro => 'مميز أسبوعي';

  @override
  String get onlyBuyOnce => 'اشتر مرة واحدة فقط';

  @override
  String get perYear => '/سنة';

  @override
  String get perMonth => '/شهر';

  @override
  String get perWeek => '/أسبوع';

  @override
  String get mostPopular => 'الأكثر شعبية';

  @override
  String get buyNow => 'اشتر الآن';

  @override
  String get termsOfUse => 'شروط الاستخدام';

  @override
  String get privacyPolicy => 'سياسة الخصوصية';

  @override
  String get loadingPlans => 'جاري تحميل الخطط...';

  @override
  String get failedToLoadPlans => 'فشل في تحميل الخطط';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String freeTrialDays(int days) {
    return 'تجربة مجانية لـ $days أيام';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'تجربة مجانية لـ $weeks أسابيع';
  }

  @override
  String freeTrialMonths(int months) {
    return 'تجربة مجانية لـ $months أشهر';
  }

  @override
  String get supportedPlatforms => 'المنصات المدعومة';

  @override
  String get supportTiktok => 'تحميل الفيديوهات والصور والموسيقى';

  @override
  String get supportInstagram => 'تحميلات عالية الجودة بدون علامات مائية';

  @override
  String get playlistTab => 'قائمة التشغيل';

  @override
  String get authorsTab => 'المؤلفون';

  @override
  String get createPlaylist => 'إنشاء قائمة تشغيل';

  @override
  String get playlistTitle => 'عنوان قائمة التشغيل';

  @override
  String get playlistDescription => 'الوصف';

  @override
  String get chooseFiles => 'اختيار الملفات';

  @override
  String get createPlaylistButton => 'إنشاء قائمة التشغيل';

  @override
  String get playlistTitleHint => 'أدخل عنوان قائمة التشغيل';

  @override
  String get playlistDescriptionHint => 'أدخل وصف قائمة التشغيل (اختياري)';

  @override
  String get selectFiles => 'اختر الملفات لإضافتها إلى قائمة التشغيل';

  @override
  String get noPlaylistsYet => 'لا توجد قوائم تشغيل حتى الآن';

  @override
  String get createFirstPlaylist => 'أنشئ أول قائمة تشغيل لك لتنظيم تحميلاتك';

  @override
  String get noAuthorsYet => 'لا يوجد مؤلفون حتى الآن';

  @override
  String get downloadSomethingFirst => 'حمل بعض المحتوى لرؤية المؤلفين هنا';

  @override
  String authorVideos(Object author) {
    return 'فيديوهات $author';
  }

  @override
  String get noVideosFromAuthor => 'لا توجد فيديوهات من هذا المؤلف حتى الآن';
}
