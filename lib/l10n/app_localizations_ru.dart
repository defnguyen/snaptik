// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'TikTok Загрузчик';

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
  String get enterTiktokUrl => 'Введите URL TikTok';

  @override
  String get howToUseTitle => 'Как использовать:';

  @override
  String get howToUseStep1 => '1. Откройте TikTok и найдите видео, которое хотите скачать.';

  @override
  String get howToUseStep2 => '2. Нажмите на иконку \'Поделиться\' справа от видео.';

  @override
  String get howToUseStep3 => '3. Выберите \'Копировать ссылку\'.';

  @override
  String get howToUseStep4 => '4. Вставьте ссылку в поле ввода выше и нажмите \'Скачать\'.';

  @override
  String get invalidUrlError => 'Неверный формат URL TikTok.';

  @override
  String get fetchingMedia => 'Получение медиа...';

  @override
  String get downloadPhoto => 'Скачать фото';

  @override
  String get downloadVideo => 'Скачать видео';

  @override
  String get downloadVoice => 'Скачать музыку';

  @override
  String get downloadMp3 => 'Скачать MP3';

  @override
  String get downloading => 'Скачивание...';

  @override
  String get downloadSuccess => 'Скачивание завершено!';

  @override
  String get downloadError => 'Ошибка скачивания. Попробуйте ещё раз.';

  @override
  String get downloadLimitReachedTitle => 'Достигнут лимит скачиваний';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Вы достигли лимита скачиваний ($limit раз). Посмотрите короткую рекламу, чтобы получить ещё 5 попыток скачивания.';
  }

  @override
  String get watchAd => 'Посмотреть рекламу';

  @override
  String get cancel => 'Отмена';

  @override
  String get photosTab => 'Фото';

  @override
  String get videosTab => 'Видео';

  @override
  String get musicTab => 'Музыка';

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
  String get mediaInfoTitle => 'Информация о медиа';

  @override
  String get fileName => 'Имя';

  @override
  String get filePath => 'Путь';

  @override
  String get dateAdded => 'Дата добавления';

  @override
  String get fileSize => 'Размер';

  @override
  String get renameMediaTitle => 'Переименовать медиа';

  @override
  String get enterNewName => 'Введите новое имя';

  @override
  String get save => 'Сохранить';

  @override
  String get deleteConfirmationTitle => 'Подтвердить удаление';

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
  String get settingsThemeDark => 'Тёмная';

  @override
  String get settingsThemeSystem => 'Системная';

  @override
  String get settingsClaimMoreDownloads => 'Получить ещё 5 скачиваний';

  @override
  String get settingsClaimSuccess => 'Успешно! У вас есть ещё 5 скачиваний.';

  @override
  String get settingsClaimError => 'Не удалось загрузить рекламу. Попробуйте позже.';

  @override
  String get settingsPremium => 'Обновить до Premium';

  @override
  String get settingsPremiumDescription => 'Уберите рекламу и получите неограниченные скачивания.';

  @override
  String get settingsRestorePurchase => 'Восстановить покупку';

  @override
  String get settingsRestoreSuccess => 'Покупки успешно восстановлены!';

  @override
  String get settingsRestoreError => 'Не удалось восстановить покупки. Активная подписка не найдена или произошла ошибка.';

  @override
  String get settingsGeneralSection => 'Общие';

  @override
  String get settingsDownloadsSection => 'Скачивания';

  @override
  String get settingsAccountSection => 'Аккаунт';

  @override
  String get settingsSupportSection => 'Поддержка и отзывы';

  @override
  String get settingsAbout => 'О приложении';

  @override
  String get settingsContact => 'Связаться с нами';

  @override
  String get settingsRateApp => 'Оценить приложение';

  @override
  String get settingsShareApp => 'Поделиться приложением';

  @override
  String get premiumUser => 'Premium пользователь';

  @override
  String get aboutTitle => 'О TikTok Загрузчике';

  @override
  String get aboutContent => 'Это приложение помогает вам скачивать публичные видео, фото и аудио из постов TikTok.\n\nПожалуйста, соблюдайте авторские права и приватность. Скачивайте только контент, на использование которого у вас есть разрешение.';

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
  String get contactSuccess => 'Сообщение успешно отправлено! Мы скоро с вами свяжемся.';

  @override
  String get contactError => 'Не удалось отправить сообщение. Попробуйте позже.';

  @override
  String get permissionRequiredTitle => 'Требуется разрешение';

  @override
  String get permissionStorageDenied => 'Разрешение на хранение требуется для сохранения скачанных файлов. Предоставьте разрешение в настройках.';

  @override
  String get permissionPhotosDenied => 'Разрешение на фото требуется для сохранения скачанных файлов (iOS). Предоставьте разрешение в настройках.';

  @override
  String get permissionNotificationDenied => 'Разрешение на уведомления рекомендуется для обновлений прогресса скачивания.';

  @override
  String get permissiongoToSettings => 'Перейти в настройки';

  @override
  String get ok => 'ОК';

  @override
  String get upgradeNow => 'Обновить сейчас';

  @override
  String get chooseYourPlan => 'Выберите ваш план';

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
  String get bestValue => 'Лучшая ценность';

  @override
  String get selectPlanErrorTitle => 'Ошибка загрузки планов';

  @override
  String get selectPlanErrorMessage => 'Не удалось загрузить планы подписки. Проверьте интернет-соединение и попробуйте снова.';

  @override
  String get purchaseFailed => 'Покупка не удалась';

  @override
  String get purchaseCancelled => 'Покупка отменена';

  @override
  String get purchasePending => 'Покупка ожидает';

  @override
  String get purchaseSuccess => 'Покупка успешна!';

  @override
  String get alreadyPremium => 'Вы уже Premium пользователь.';

  @override
  String get getPremium => 'Получить Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Осталось скачиваний: $currentLimit. Вы можете получить бесплатные скачивания, просматривая рекламу';
  }

  @override
  String get unlockSaveVideoPro => 'Разблокировать Premium функции';

  @override
  String get noAdsUnlockAllFeatures => 'Без рекламы и разблокировка всех функций';

  @override
  String get removeAds => 'Убрать всю рекламу';

  @override
  String get tiktokDownloads => 'Неограниченные HD скачивания видео, фото и музыки из TikTok';

  @override
  String get instagramDownloads => 'Высококачественные скачивания без водяных знаков';

  @override
  String get lifetimePro => 'Пожизненный Pro';

  @override
  String get yearlyPro => 'Годовой Pro';

  @override
  String get monthlyPro => 'Месячный Pro';

  @override
  String get weeklyPro => 'Недельный Pro';

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
  String get loadingPlans => 'Загрузка планов...';

  @override
  String get failedToLoadPlans => 'Не удалось загрузить планы';

  @override
  String get retry => 'Повторить';

  @override
  String freeTrialDays(int days) {
    return '$days дней бесплатного пробного периода';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks недель бесплатного пробного периода';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months месяцев бесплатного пробного периода';
  }

  @override
  String get supportedPlatforms => 'Поддерживаемые платформы';

  @override
  String get supportTiktok => 'Скачивание видео, изображений, музыки';

  @override
  String get supportInstagram => 'Высококачественные скачивания без водяных знаков';

  @override
  String get playlistTab => 'Плейлист';

  @override
  String get authorsTab => 'Авторы';

  @override
  String get createPlaylist => 'Создать плейлист';

  @override
  String get playlistTitle => 'Название плейлиста';

  @override
  String get playlistDescription => 'Описание';

  @override
  String get chooseFiles => 'Выбрать файлы';

  @override
  String get createPlaylistButton => 'Создать плейлист';

  @override
  String get playlistTitleHint => 'Введите название плейлиста';

  @override
  String get playlistDescriptionHint => 'Введите описание плейлиста (необязательно)';

  @override
  String get selectFiles => 'Выберите файлы для добавления в плейлист';

  @override
  String get noPlaylistsYet => 'Пока нет плейлистов';

  @override
  String get createFirstPlaylist => 'Создайте свой первый плейлист для организации ваших скачиваний';

  @override
  String get noAuthorsYet => 'Пока нет авторов';

  @override
  String get downloadSomethingFirst => 'Сначала скачайте контент, чтобы увидеть авторов здесь';

  @override
  String authorVideos(Object author) {
    return 'Видео $author';
  }

  @override
  String get noVideosFromAuthor => 'Пока нет видео от этого автора';

  @override
  String errorLoadingLibrary(Object error) {
    return 'Ошибка загрузки библиотеки: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'Загруженные медиафайлы появятся здесь.';

  @override
  String get noPhotosDownloadedYet => 'Фотографии пока не загружены.';

  @override
  String get noVideosDownloadedYet => 'Видео пока не загружены.';

  @override
  String get noAudioDownloadedYet => 'Музыка пока не загружена.';

  @override
  String get somethingWentWrong => 'Что-то пошло не так.';
}
