// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'TikTok Завантажувач';

  @override
  String get homeTab => 'Головна';

  @override
  String get libraryTab => 'Бібліотека';

  @override
  String get settingsTab => 'Налаштування';

  @override
  String get pasteLink => 'Вставити посилання';

  @override
  String get clear => 'Очистити';

  @override
  String get download => 'Завантажити';

  @override
  String get enterTiktokUrl => 'Введіть URL TikTok';

  @override
  String get howToUseTitle => 'Як використовувати:';

  @override
  String get howToUseStep1 => '1. Відкрийте TikTok і знайдіть відео, яке хочете завантажити.';

  @override
  String get howToUseStep2 => '2. Натисніть на іконку \'Поділитися\' праворуч від відео.';

  @override
  String get howToUseStep3 => '3. Виберіть \'Копіювати посилання\'.';

  @override
  String get howToUseStep4 => '4. Вставте посилання у поле введення вище та натисніть \'Завантажити\'.';

  @override
  String get invalidUrlError => 'Неправильний формат URL TikTok.';

  @override
  String get fetchingMedia => 'Отримання медіа...';

  @override
  String get downloadPhoto => 'Завантажити фото';

  @override
  String get downloadVideo => 'Завантажити відео';

  @override
  String get downloadVoice => 'Завантажити музику';

  @override
  String get downloadMp3 => 'Завантажити MP3';

  @override
  String get downloading => 'Завантаження...';

  @override
  String get downloadSuccess => 'Завантаження завершено!';

  @override
  String get downloadError => 'Помилка завантаження. Спробуйте ще раз.';

  @override
  String get downloadLimitReachedTitle => 'Досягнуто ліміт завантажень';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Ви досягли ліміту завантажень ($limit разів). Подивіться коротку рекламу, щоб отримати ще 5 спроб завантаження.';
  }

  @override
  String get watchAd => 'Подивитися рекламу';

  @override
  String get cancel => 'Скасувати';

  @override
  String get photosTab => 'Фото';

  @override
  String get videosTab => 'Відео';

  @override
  String get musicTab => 'Музика';

  @override
  String get view => 'Переглянути';

  @override
  String get info => 'Інформація';

  @override
  String get rename => 'Перейменувати';

  @override
  String get share => 'Поділитися';

  @override
  String get delete => 'Видалити';

  @override
  String get mediaInfoTitle => 'Інформація про медіа';

  @override
  String get fileName => 'Ім\'я';

  @override
  String get filePath => 'Шлях';

  @override
  String get dateAdded => 'Дата додавання';

  @override
  String get fileSize => 'Розмір';

  @override
  String get renameMediaTitle => 'Перейменувати медіа';

  @override
  String get enterNewName => 'Введіть нове ім\'я';

  @override
  String get save => 'Зберегти';

  @override
  String get deleteConfirmationTitle => 'Підтвердити видалення';

  @override
  String get deleteConfirmationMessage => 'Ви впевнені, що хочете видалити цей файл? Цю дію неможливо скасувати.';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get settingsLanguage => 'Мова';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeLight => 'Світла';

  @override
  String get settingsThemeDark => 'Темна';

  @override
  String get settingsThemeSystem => 'Системна';

  @override
  String get settingsClaimMoreDownloads => 'Отримати ще 5 завантажень';

  @override
  String get settingsClaimSuccess => 'Успішно! У вас є ще 5 завантажень.';

  @override
  String get settingsClaimError => 'Не вдалося завантажити рекламу. Спробуйте пізніше.';

  @override
  String get settingsPremium => 'Оновити до Premium';

  @override
  String get settingsPremiumDescription => 'Видаліть рекламу та отримайте необмежені завантаження.';

  @override
  String get settingsRestorePurchase => 'Відновити покупку';

  @override
  String get settingsRestoreSuccess => 'Покупки успішно відновлено!';

  @override
  String get settingsRestoreError => 'Не вдалося відновити покупки. Активну підписку не знайдено або сталася помилка.';

  @override
  String get settingsGeneralSection => 'Загальні';

  @override
  String get settingsDownloadsSection => 'Завантаження';

  @override
  String get settingsAccountSection => 'Акаунт';

  @override
  String get settingsSupportSection => 'Підтримка та відгуки';

  @override
  String get settingsAbout => 'Про додаток';

  @override
  String get settingsContact => 'Зв\'язатися з нами';

  @override
  String get settingsRateApp => 'Оцінити цей додаток';

  @override
  String get settingsShareApp => 'Поділитися цим додатком';

  @override
  String get premiumUser => 'Premium користувач';

  @override
  String get aboutTitle => 'Про TikTok Завантажувач';

  @override
  String get aboutContent => 'Цей додаток допомагає завантажувати публічні відео, фото та аудіо з дописів TikTok.\n\nБудь ласка, поважайте авторські права та приватність. Завантажуйте лише контент, на використання якого у вас є дозвіл.';

  @override
  String get contactTitle => 'Зв\'язатися з нами';

  @override
  String get contactNameHint => 'Ваше ім\'я';

  @override
  String get contactEmailHint => 'Ваш email';

  @override
  String get contactMessageHint => 'Ваше повідомлення';

  @override
  String get contactSendButton => 'Надіслати повідомлення';

  @override
  String get contactSending => 'Надсилання...';

  @override
  String get contactSuccess => 'Повідомлення успішно надіслано! Ми зв\'яжемося з вами незабаром.';

  @override
  String get contactError => 'Не вдалося надіслати повідомлення. Спробуйте пізніше.';

  @override
  String get permissionRequiredTitle => 'Потрібен дозвіл';

  @override
  String get permissionStorageDenied => 'Дозвіл на сховище потрібен для збереження завантажених файлів. Надайте дозвіл у налаштуваннях.';

  @override
  String get permissionPhotosDenied => 'Дозвіл на фото потрібен для збереження завантажених файлів (iOS). Надайте дозвіл у налаштуваннях.';

  @override
  String get permissionNotificationDenied => 'Дозвіл на сповіщення рекомендується для оновлень прогресу завантаження.';

  @override
  String get permissiongoToSettings => 'Перейти до налаштувань';

  @override
  String get ok => 'ОК';

  @override
  String get upgradeNow => 'Оновити зараз';

  @override
  String get chooseYourPlan => 'Виберіть ваш план';

  @override
  String get planWeekly => 'Щотижня';

  @override
  String get planMonthly => 'Щомісяця';

  @override
  String get planAnnually => 'Щороку';

  @override
  String get planLifetime => 'Довічно';

  @override
  String get oneTimePurchase => 'Разова покупка';

  @override
  String savePercent(String percent) {
    return 'Заощадьте $percent%';
  }

  @override
  String get bestValue => 'Найкраща цінність';

  @override
  String get selectPlanErrorTitle => 'Помилка завантаження планів';

  @override
  String get selectPlanErrorMessage => 'Не вдалося завантажити плани підписки. Перевірте інтернет-з\'єднання та спробуйте знову.';

  @override
  String get purchaseFailed => 'Покупка не вдалася';

  @override
  String get purchaseCancelled => 'Покупка скасована';

  @override
  String get purchasePending => 'Покупка очікує';

  @override
  String get purchaseSuccess => 'Покупка успішна!';

  @override
  String get alreadyPremium => 'Ви вже Premium користувач.';

  @override
  String get getPremium => 'Отримати Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Залишилося завантажень: $currentLimit. Ви можете отримати безкоштовні завантаження, переглядаючи рекламу';
  }

  @override
  String get unlockSaveVideoPro => 'Розблокувати Premium функції';

  @override
  String get noAdsUnlockAllFeatures => 'Без реклами та розблокування всіх функцій';

  @override
  String get removeAds => 'Видалити всю рекламу';

  @override
  String get tiktokDownloads => 'Необмежені HD завантаження відео, фото та музики з TikTok';

  @override
  String get instagramDownloads => 'Високоякісні завантаження без водяних знаків';

  @override
  String get lifetimePro => 'Довічний Pro';

  @override
  String get yearlyPro => 'Річний Pro';

  @override
  String get monthlyPro => 'Місячний Pro';

  @override
  String get weeklyPro => 'Тижневий Pro';

  @override
  String get onlyBuyOnce => 'Купити лише один раз';

  @override
  String get perYear => '/рік';

  @override
  String get perMonth => '/місяць';

  @override
  String get perWeek => '/тиждень';

  @override
  String get mostPopular => 'Найпопулярніший';

  @override
  String get buyNow => 'Купити зараз';

  @override
  String get termsOfUse => 'Умови використання';

  @override
  String get privacyPolicy => 'Політика конфіденційності';

  @override
  String get loadingPlans => 'Завантаження планів...';

  @override
  String get failedToLoadPlans => 'Не вдалося завантажити плани';

  @override
  String get retry => 'Спробувати знову';

  @override
  String freeTrialDays(int days) {
    return '$days днів безкоштовного пробного періоду';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks тижнів безкоштовного пробного періоду';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months місяців безкоштовного пробного періоду';
  }

  @override
  String get supportedPlatforms => 'Підтримувані платформи';

  @override
  String get supportTiktok => 'Завантаження відео, зображень, музики';

  @override
  String get supportInstagram => 'Високоякісні завантаження без водяних знаків';

  @override
  String get playlistTab => 'Плейлист';

  @override
  String get authorsTab => 'Автори';

  @override
  String get createPlaylist => 'Створити плейлист';

  @override
  String get playlistTitle => 'Назва плейлиста';

  @override
  String get playlistDescription => 'Опис';

  @override
  String get chooseFiles => 'Вибрати файли';

  @override
  String get createPlaylistButton => 'Створити плейлист';

  @override
  String get playlistTitleHint => 'Введіть назву плейлиста';

  @override
  String get playlistDescriptionHint => 'Введіть опис плейлиста (необов\'язково)';

  @override
  String get selectFiles => 'Виберіть файли для додавання в плейлист';

  @override
  String get noPlaylistsYet => 'Поки немає плейлистів';

  @override
  String get createFirstPlaylist => 'Створіть свій перший плейлист для організації завантажень';

  @override
  String get noAuthorsYet => 'Поки немає авторів';

  @override
  String get downloadSomethingFirst => 'Спочатку завантажте контент, щоб побачити авторів тут';

  @override
  String authorVideos(Object author) {
    return 'Відео від $author';
  }

  @override
  String get noVideosFromAuthor => 'Поки немає відео від цього автора';

  @override
  String errorLoadingLibrary(Object error) {
    return 'Помилка завантаження бібліотеки: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'Завантажені медіафайли з\'являться тут.';

  @override
  String get noPhotosDownloadedYet => 'Фото ще не завантажено.';

  @override
  String get noVideosDownloadedYet => 'Відео ще не завантажено.';

  @override
  String get noAudioDownloadedYet => 'Музику ще не завантажено.';

  @override
  String get somethingWentWrong => 'Щось пішло не так.';
}
