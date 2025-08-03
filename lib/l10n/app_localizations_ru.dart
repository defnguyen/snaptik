// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Загрузчик видео Threads';

  @override
  String get homeTab => 'Главная';

  @override
  String get libraryTab => 'Библиотека';

  @override
  String get settingsTab => 'Настройки';

  @override
  String get pasteLink => 'Вставить ссылку';

  @override
  String get clear => 'Очистить';

  @override
  String get download => 'Скачать';

  @override
  String get enterThreadsUrl => 'Введите URL Threads/Instagram';

  @override
  String get howToUseTitle => 'Как использовать:';

  @override
  String get howToUseStep1 => '1. Откройте Threads и найдите пост, который хотите скачать.';

  @override
  String get howToUseStep2 => '2. Нажмите на значок \'Поделиться\' под постом.';

  @override
  String get howToUseStep3 => '3. Выберите \'Копировать ссылку\'.';

  @override
  String get howToUseStep4 => '4. Вставьте ссылку в поле выше и нажмите \'Скачать\'.';

  @override
  String get invalidUrlError => 'Неверный формат URL Threads.';

  @override
  String get fetchingMedia => 'Получение медиафайла...';

  @override
  String get downloadPhoto => 'Скачать фото';

  @override
  String get downloadVideo => 'Скачать видео';

  @override
  String get downloadVoice => 'Скачать голосовое';

  @override
  String get downloadMp3 => 'Скачать MP3';

  @override
  String get downloading => 'Загрузка...';

  @override
  String get downloadSuccess => 'Загрузка завершена!';

  @override
  String get downloadError => 'Ошибка загрузки. Пожалуйста, повторите попытку.';

  @override
  String get downloadLimitReachedTitle => 'Достигнут лимит загрузок';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Вы достигли лимита загрузок ($limit раз). Посмотрите короткую рекламу, чтобы получить еще 5 попыток загрузки.';
  }

  @override
  String get watchAd => 'Смотреть рекламу';

  @override
  String get cancel => 'Отмена';

  @override
  String get photosTab => 'Фото';

  @override
  String get videosTab => 'Видео';

  @override
  String get voiceTab => 'Голосовые';

  @override
  String get view => 'Просмотр';

  @override
  String get info => 'Информация';

  @override
  String get rename => 'Переименовать';

  @override
  String get share => 'Поделиться';

  @override
  String get delete => 'Удалить';

  @override
  String get mediaInfoTitle => 'Информация о медиафайле';

  @override
  String get fileName => 'Имя';

  @override
  String get filePath => 'Путь';

  @override
  String get dateAdded => 'Дата добавления';

  @override
  String get fileSize => 'Размер';

  @override
  String get renameMediaTitle => 'Переименовать медиафайл';

  @override
  String get enterNewName => 'Введите новое имя';

  @override
  String get save => 'Сохранить';

  @override
  String get deleteConfirmationTitle => 'Подтверждение удаления';

  @override
  String get deleteConfirmationMessage => 'Вы уверены, что хотите удалить этот файл? Это действие нельзя отменить.';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get settingsLanguage => 'Язык';

  @override
  String get settingsTheme => 'Тема';

  @override
  String get settingsThemeLight => 'Светлая';

  @override
  String get settingsThemeDark => 'Темная';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsClaimMoreDownloads => 'Получить еще 5 загрузок';

  @override
  String get settingsClaimSuccess => 'Успех! У вас есть еще 5 загрузок.';

  @override
  String get settingsClaimError => 'Не удалось загрузить рекламу. Пожалуйста, попробуйте позже.';

  @override
  String get settingsPremium => 'Обновить до Премиум';

  @override
  String get settingsPremiumDescription => 'Убрать рекламу и получить неограниченное количество загрузок.';

  @override
  String get settingsRestorePurchase => 'Восстановить покупку';

  @override
  String get settingsRestoreSuccess => 'Покупки успешно восстановлены!';

  @override
  String get settingsRestoreError => 'Не удалось восстановить покупки. Активная подписка не найдена или произошла ошибка.';

  @override
  String get settingsGeneralSection => 'Общие';

  @override
  String get settingsDownloadsSection => 'Загрузки';

  @override
  String get settingsAccountSection => 'Аккаунт';

  @override
  String get settingsSupportSection => 'Поддержка и обратная связь';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String get settingsContact => 'Связаться с нами';

  @override
  String get settingsRateApp => 'Оценить приложение';

  @override
  String get settingsShareApp => 'Поделиться приложением';

  @override
  String get premiumUser => 'Премиум пользователь';

  @override
  String get aboutTitle => 'О Threads Downloader';

  @override
  String get aboutContent => 'Это приложение помогает вам скачивать публичные фотографии, видео и голосовые заметки из постов Threads.\n\nПожалуйста, уважайте авторские права и конфиденциальность. Скачивайте только тот контент, на использование которого у вас есть разрешение.';

  @override
  String get contactTitle => 'Связаться с нами';

  @override
  String get contactNameHint => 'Ваше имя';

  @override
  String get contactEmailHint => 'Ваш email';

  @override
  String get contactMessageHint => 'Ваше сообщение';

  @override
  String get contactSendButton => 'Отправить сообщение';

  @override
  String get contactSending => 'Отправка...';

  @override
  String get contactSuccess => 'Сообщение успешно отправлено! Мы скоро свяжемся с вами.';

  @override
  String get contactError => 'Не удалось отправить сообщение. Пожалуйста, попробуйте позже.';

  @override
  String get permissionRequiredTitle => 'Требуется разрешение';

  @override
  String get permissionStorageDenied => 'Для сохранения скачанных файлов требуется разрешение на доступ к хранилищу. Пожалуйста, предоставьте разрешение в настройках.';

  @override
  String get permissionPhotosDenied => 'Для сохранения скачанных файлов требуется разрешение на доступ к фотографиям (iOS). Пожалуйста, предоставьте разрешение в настройках.';

  @override
  String get permissionNotificationDenied => 'Рекомендуется разрешение на уведомления для отслеживания прогресса загрузки.';

  @override
  String get permissiongoToSettings => 'Перейти в Настройки';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Обновить сейчас';

  @override
  String get chooseYourPlan => 'Выберите свой план';

  @override
  String get planWeekly => 'Еженедельно';

  @override
  String get planMonthly => 'Ежемесячно';

  @override
  String get planAnnually => 'Ежегодно';

  @override
  String get planLifetime => 'Пожизненно';

  @override
  String get oneTimePurchase => 'Разовая покупка';

  @override
  String savePercent(String percent) {
    return 'Сэкономьте $percent%';
  }

  @override
  String get bestValue => 'Лучшая цена';

  @override
  String get selectPlanErrorTitle => 'Ошибка загрузки планов';

  @override
  String get selectPlanErrorMessage => 'Не удалось загрузить планы подписки. Пожалуйста, проверьте подключение к интернету и попробуйте снова.';

  @override
  String get purchaseFailed => 'Ошибка покупки';

  @override
  String get purchaseCancelled => 'Покупка отменена';

  @override
  String get purchasePending => 'Покупка в обработке';

  @override
  String get purchaseSuccess => 'Покупка успешна!';

  @override
  String get alreadyPremium => 'Вы уже являетесь Премиум пользователем.';

  @override
  String get getPremium => 'Получить Премиум';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Осталось загрузок: $currentLimit. Вы можете получить бесплатные загрузки, просматривая рекламу';
  }

  @override
  String get unlockSaveVideoPro => 'Разблокировать премиум-функции';

  @override
  String get noAdsUnlockAllFeatures => 'Без рекламы и разблокировка всех функций';

  @override
  String get removeAds => 'Удалить всю рекламу';

  @override
  String get threadsDownloads => 'Неограниченные HD-загрузки видео, фото и голосовых сообщений из Threads';

  @override
  String get instagramDownloads => 'Неограниченные HD-загрузки видео, фото, reels, историй и полных профилей из Instagram';

  @override
  String get lifetimePro => 'Пожизненная Pro версия';

  @override
  String get yearlyPro => 'Годовая Pro версия';

  @override
  String get monthlyPro => 'Месячная Pro версия';

  @override
  String get weeklyPro => 'Недельная Pro версия';

  @override
  String get onlyBuyOnce => 'Купить только один раз';

  @override
  String get perYear => '/год';

  @override
  String get perMonth => '/месяц';

  @override
  String get perWeek => '/неделя';

  @override
  String get mostPopular => 'Самый популярный';

  @override
  String get buyNow => 'Купить сейчас';

  @override
  String get termsOfUse => 'Условия использования';

  @override
  String get privacyPolicy => 'Политика конфиденциальности';

  @override
  String get loadingPlans => 'Загрузка тарифов...';

  @override
  String get failedToLoadPlans => 'Не удалось загрузить тарифы';

  @override
  String get retry => 'Повторить';

  @override
  String freeTrialDays(int days) {
    return 'Бесплатная пробная версия на $days дней';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Бесплатная пробная версия на $weeks недель';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Бесплатная пробная версия на $months месяцев';
  }

  @override
  String get supportedPlatforms => 'Поддерживаемые платформы';

  @override
  String get supportThreads => 'Скачать видео, изображения и голосовые сообщения';

  @override
  String get supportInstagram => 'Скачать видео, изображения, Reels, Stories и профили';

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
