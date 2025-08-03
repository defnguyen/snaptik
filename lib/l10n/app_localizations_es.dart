// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Descargador de TikTok';

  @override
  String get homeTab => 'Inicio';

  @override
  String get libraryTab => 'Biblioteca';

  @override
  String get settingsTab => 'Ajustes';

  @override
  String get pasteLink => 'Pegar Enlace';

  @override
  String get clear => 'Borrar';

  @override
  String get download => 'Descargar';

  @override
  String get enterThreadsUrl => 'Ingresa la URL de TikTok';

  @override
  String get howToUseTitle => 'Cómo Usar:';

  @override
  String get howToUseStep1 => '1. Abre TikTok y encuentra el video que quieres descargar.';

  @override
  String get howToUseStep2 => '2. Toca el icono \'Compartir\' al lado derecho del video.';

  @override
  String get howToUseStep3 => '3. Elige \'Copiar enlace\'.';

  @override
  String get howToUseStep4 => '4. Pega el enlace en el campo de entrada de arriba y toca \'Descargar\'.';

  @override
  String get invalidUrlError => 'Formato de URL de TikTok inválido.';

  @override
  String get fetchingMedia => 'Obteniendo medios...';

  @override
  String get downloadPhoto => 'Descargar Foto';

  @override
  String get downloadVideo => 'Descargar Video';

  @override
  String get downloadVoice => 'Descargar Voz';

  @override
  String get downloadMp3 => 'Descargar MP3';

  @override
  String get downloading => 'Descargando...';

  @override
  String get downloadSuccess => '¡Descarga completada!';

  @override
  String get downloadError => 'Descarga fallida. Por favor, inténtalo de nuevo.';

  @override
  String get downloadLimitReachedTitle => 'Límite de Descargas Alcanzado';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Has alcanzado el límite de descargas ($limit veces). Mira un anuncio corto para obtener 5 intentos más de descarga.';
  }

  @override
  String get watchAd => 'Ver Anuncio';

  @override
  String get cancel => 'Cancelar';

  @override
  String get photosTab => 'Fotos';

  @override
  String get videosTab => 'Videos';

  @override
  String get voiceTab => 'Voz';

  @override
  String get view => 'Ver';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Renombrar';

  @override
  String get share => 'Compartir';

  @override
  String get delete => 'Eliminar';

  @override
  String get mediaInfoTitle => 'Información del Medio';

  @override
  String get fileName => 'Nombre';

  @override
  String get filePath => 'Ruta';

  @override
  String get dateAdded => 'Fecha de Adición';

  @override
  String get fileSize => 'Tamaño';

  @override
  String get renameMediaTitle => 'Renombrar Medio';

  @override
  String get enterNewName => 'Introduce nuevo nombre';

  @override
  String get save => 'Guardar';

  @override
  String get deleteConfirmationTitle => 'Confirmar Eliminación';

  @override
  String get deleteConfirmationMessage => '¿Estás seguro de que quieres eliminar este archivo? Esta acción no se puede deshacer.';

  @override
  String get confirm => 'Confirmar';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Oscuro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsClaimMoreDownloads => 'Obtener 5 Descargas Más';

  @override
  String get settingsClaimSuccess => '¡Éxito! Tienes 5 descargas más.';

  @override
  String get settingsClaimError => 'No se pudo cargar el anuncio. Por favor, inténtalo más tarde.';

  @override
  String get settingsPremium => 'Actualizar a Premium';

  @override
  String get settingsPremiumDescription => 'Elimina anuncios y obtén descargas ilimitadas.';

  @override
  String get settingsRestorePurchase => 'Restaurar Compra';

  @override
  String get settingsRestoreSuccess => '¡Compras restauradas correctamente!';

  @override
  String get settingsRestoreError => 'Error al restaurar las compras. No se encontró ninguna suscripción activa o ocurrió un error.';

  @override
  String get settingsGeneralSection => 'General';

  @override
  String get settingsDownloadsSection => 'Descargas';

  @override
  String get settingsAccountSection => 'Cuenta';

  @override
  String get settingsSupportSection => 'Soporte y Comentarios';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get settingsContact => 'Contáctanos';

  @override
  String get settingsRateApp => 'Califica esta Aplicación';

  @override
  String get settingsShareApp => 'Comparte esta Aplicación';

  @override
  String get premiumUser => 'Usuario Premium';

  @override
  String get aboutTitle => 'Acerca de Threads Downloader';

  @override
  String get aboutContent => 'Versión 1.0.0\n\nEsta aplicación te ayuda a descargar fotos, videos y notas de voz públicas de las publicaciones de Threads.\n\nPor favor, respeta los derechos de autor y la privacidad. Solo descarga contenido que tengas permiso para usar.';

  @override
  String get contactTitle => 'Contáctanos';

  @override
  String get contactNameHint => 'Tu Nombre';

  @override
  String get contactEmailHint => 'Tu Email';

  @override
  String get contactMessageHint => 'Tu Mensaje';

  @override
  String get contactSendButton => 'Enviar Mensaje';

  @override
  String get contactSending => 'Enviando...';

  @override
  String get contactSuccess => '¡Mensaje enviado correctamente! Nos pondremos en contacto contigo pronto.';

  @override
  String get contactError => 'Error al enviar el mensaje. Por favor, inténtalo más tarde.';

  @override
  String get permissionRequiredTitle => 'Permiso Requerido';

  @override
  String get permissionStorageDenied => 'Se requiere permiso de almacenamiento para guardar los archivos descargados. Por favor, concede el permiso en ajustes.';

  @override
  String get permissionPhotosDenied => 'Se requiere permiso de fotos para guardar archivos descargados (iOS). Por favor, concede el permiso en ajustes.';

  @override
  String get permissionNotificationDenied => 'Se recomienda el permiso de notificación para actualizaciones del progreso de descarga.';

  @override
  String get permissiongoToSettings => 'Ir a Ajustes';

  @override
  String get ok => 'Aceptar';

  @override
  String get upgradeNow => 'Actualizar Ahora';

  @override
  String get chooseYourPlan => 'Elige Tu Plan';

  @override
  String get planWeekly => 'Semanal';

  @override
  String get planMonthly => 'Mensual';

  @override
  String get planAnnually => 'Anual';

  @override
  String get planLifetime => 'Para Siempre';

  @override
  String get oneTimePurchase => 'Compra Única';

  @override
  String savePercent(String percent) {
    return 'Ahorra $percent%';
  }

  @override
  String get bestValue => 'Mejor Valor';

  @override
  String get selectPlanErrorTitle => 'Error al Cargar Planes';

  @override
  String get selectPlanErrorMessage => 'No se pudieron cargar los planes de suscripción. Por favor, revisa tu conexión a internet e inténtalo de nuevo.';

  @override
  String get purchaseFailed => 'Compra Fallida';

  @override
  String get purchaseCancelled => 'Compra Cancelada';

  @override
  String get purchasePending => 'Compra Pendiente';

  @override
  String get purchaseSuccess => '¡Compra Exitosa!';

  @override
  String get alreadyPremium => 'Ya eres usuario Premium.';

  @override
  String get getPremium => 'Obtener Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Descargas restantes: $currentLimit. Puedes obtener descargas gratuitas viendo anuncios';
  }

  @override
  String get unlockSaveVideoPro => 'Desbloquear funciones premium';

  @override
  String get noAdsUnlockAllFeatures => 'Sin anuncios y desbloquear todas las funciones';

  @override
  String get removeAds => 'Eliminar todos los anuncios';

  @override
  String get threadsDownloads => 'Descargas ilimitadas en HD de videos, fotos y audios de Threads';

  @override
  String get instagramDownloads => 'Descargas ilimitadas en HD de videos, fotos, reels, historias y perfiles completos de Instagram';

  @override
  String get lifetimePro => 'Pro de por vida';

  @override
  String get yearlyPro => 'Pro anual';

  @override
  String get monthlyPro => 'Pro mensual';

  @override
  String get weeklyPro => 'Pro semanal';

  @override
  String get onlyBuyOnce => 'Compra solo una vez';

  @override
  String get perYear => '/año';

  @override
  String get perMonth => '/mes';

  @override
  String get perWeek => '/semana';

  @override
  String get mostPopular => 'Más popular';

  @override
  String get buyNow => 'Comprar ahora';

  @override
  String get termsOfUse => 'Términos de uso';

  @override
  String get privacyPolicy => 'Política de privacidad';

  @override
  String get loadingPlans => 'Cargando planes...';

  @override
  String get failedToLoadPlans => 'Error al cargar los planes';

  @override
  String get retry => 'Reintentar';

  @override
  String freeTrialDays(int days) {
    return 'Prueba gratuita de $days días';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Prueba gratuita de $weeks semanas';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Prueba gratuita de $months meses';
  }

  @override
  String get supportedPlatforms => 'Plataformas compatibles';

  @override
  String get supportThreads => 'Descargar videos, imágenes y notas de voz';

  @override
  String get supportInstagram => 'Descargar videos, imágenes, Reels, Stories y perfiles';

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
