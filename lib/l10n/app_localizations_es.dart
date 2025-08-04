// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'TikTok Descargador';

  @override
  String get homeTab => 'Inicio';

  @override
  String get libraryTab => 'Biblioteca';

  @override
  String get settingsTab => 'Configuración';

  @override
  String get pasteLink => 'Pegar enlace';

  @override
  String get clear => 'Limpiar';

  @override
  String get download => 'Descargar';

  @override
  String get enterTiktokUrl => 'Ingrese la URL de TikTok';

  @override
  String get howToUseTitle => 'Cómo usar:';

  @override
  String get howToUseStep1 => '1. Abre TikTok y encuentra el video que quieres descargar.';

  @override
  String get howToUseStep2 => '2. Toca el ícono \'Compartir\' en el lado derecho del video.';

  @override
  String get howToUseStep3 => '3. Elige \'Copiar enlace\'.';

  @override
  String get howToUseStep4 => '4. Pega el enlace en el campo de entrada de arriba y toca \'Descargar\'.';

  @override
  String get invalidUrlError => 'Formato de URL de TikTok inválido.';

  @override
  String get fetchingMedia => 'Obteniendo medios...';

  @override
  String get downloadPhoto => 'Descargar foto';

  @override
  String get downloadVideo => 'Descargar video';

  @override
  String get downloadVoice => 'Descargar música';

  @override
  String get downloadMp3 => 'Descargar MP3';

  @override
  String get downloading => 'Descargando...';

  @override
  String get downloadSuccess => '¡Descarga completa!';

  @override
  String get downloadError => 'Error en la descarga. Inténtalo de nuevo.';

  @override
  String get downloadLimitReachedTitle => 'Límite de descarga alcanzado';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Has alcanzado el límite de descarga ($limit veces). Mira un anuncio corto para obtener 5 intentos más de descarga.';
  }

  @override
  String get watchAd => 'Ver anuncio';

  @override
  String get cancel => 'Cancelar';

  @override
  String get photosTab => 'Fotos';

  @override
  String get videosTab => 'Videos';

  @override
  String get musicTab => 'Música';

  @override
  String get view => 'Ver';

  @override
  String get info => 'Información';

  @override
  String get rename => 'Renombrar';

  @override
  String get share => 'Compartir';

  @override
  String get delete => 'Eliminar';

  @override
  String get mediaInfoTitle => 'Información del medio';

  @override
  String get fileName => 'Nombre';

  @override
  String get filePath => 'Ruta';

  @override
  String get dateAdded => 'Fecha agregada';

  @override
  String get fileSize => 'Tamaño';

  @override
  String get renameMediaTitle => 'Renombrar medio';

  @override
  String get enterNewName => 'Ingresa un nuevo nombre';

  @override
  String get save => 'Guardar';

  @override
  String get deleteConfirmationTitle => 'Confirmar eliminación';

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
  String get settingsClaimMoreDownloads => 'Obtener 5 descargas más';

  @override
  String get settingsClaimSuccess => '¡Éxito! Tienes 5 descargas más.';

  @override
  String get settingsClaimError => 'Error al cargar el anuncio. Inténtalo más tarde.';

  @override
  String get settingsPremium => 'Actualizar a Premium';

  @override
  String get settingsPremiumDescription => 'Elimina anuncios y obtén descargas ilimitadas.';

  @override
  String get settingsRestorePurchase => 'Restaurar compra';

  @override
  String get settingsRestoreSuccess => '¡Compras restauradas exitosamente!';

  @override
  String get settingsRestoreError => 'Error al restaurar compras. No se encontró suscripción activa o ocurrió un error.';

  @override
  String get settingsGeneralSection => 'General';

  @override
  String get settingsDownloadsSection => 'Descargas';

  @override
  String get settingsAccountSection => 'Cuenta';

  @override
  String get settingsSupportSection => 'Soporte y comentarios';

  @override
  String get settingsAbout => 'Acerca de';

  @override
  String get settingsContact => 'Contáctanos';

  @override
  String get settingsRateApp => 'Calificar esta app';

  @override
  String get settingsShareApp => 'Compartir esta app';

  @override
  String get premiumUser => 'Usuario Premium';

  @override
  String get aboutTitle => 'Acerca de TikTok Descargador';

  @override
  String get aboutContent => 'Esta app te ayuda a descargar videos, fotos y audio públicos de publicaciones de TikTok.\n\nRespeta los derechos de autor y la privacidad. Solo descarga contenido que tengas permiso para usar.';

  @override
  String get contactTitle => 'Contáctanos';

  @override
  String get contactNameHint => 'Tu nombre';

  @override
  String get contactEmailHint => 'Tu email';

  @override
  String get contactMessageHint => 'Tu mensaje';

  @override
  String get contactSendButton => 'Enviar mensaje';

  @override
  String get contactSending => 'Enviando...';

  @override
  String get contactSuccess => '¡Mensaje enviado exitosamente! Te responderemos pronto.';

  @override
  String get contactError => 'Error al enviar mensaje. Inténtalo más tarde.';

  @override
  String get permissionRequiredTitle => 'Permisos requeridos';

  @override
  String get permissionStorageDenied => 'Se requiere permiso de almacenamiento para guardar archivos descargados. Concede el permiso en configuración.';

  @override
  String get permissionPhotosDenied => 'Se requiere permiso de fotos para guardar archivos descargados (iOS). Concede el permiso en configuración.';

  @override
  String get permissionNotificationDenied => 'Se recomienda el permiso de notificaciones para actualizaciones del progreso de descarga.';

  @override
  String get permissiongoToSettings => 'Ir a configuración';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Actualizar ahora';

  @override
  String get chooseYourPlan => 'Elige tu plan';

  @override
  String get planWeekly => 'Semanal';

  @override
  String get planMonthly => 'Mensual';

  @override
  String get planAnnually => 'Anual';

  @override
  String get planLifetime => 'De por vida';

  @override
  String get oneTimePurchase => 'Compra única';

  @override
  String savePercent(String percent) {
    return 'Ahorra $percent%';
  }

  @override
  String get bestValue => 'Mejor valor';

  @override
  String get selectPlanErrorTitle => 'Error al cargar planes';

  @override
  String get selectPlanErrorMessage => 'No se pudieron cargar los planes de suscripción. Verifica tu conexión a internet e inténtalo de nuevo.';

  @override
  String get purchaseFailed => 'Compra fallida';

  @override
  String get purchaseCancelled => 'Compra cancelada';

  @override
  String get purchasePending => 'Compra pendiente';

  @override
  String get purchaseSuccess => '¡Compra exitosa!';

  @override
  String get alreadyPremium => 'Ya eres usuario Premium.';

  @override
  String get getPremium => 'Obtener Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Descargas restantes: $currentLimit. Puedes obtener descargas gratuitas viendo anuncios';
  }

  @override
  String get unlockSaveVideoPro => 'Desbloquear funciones Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Sin anuncios y desbloquear todas las funciones';

  @override
  String get removeAds => 'Eliminar todos los anuncios';

  @override
  String get tiktokDownloads => 'Descargas HD ilimitadas de videos, fotos y música de TikTok';

  @override
  String get instagramDownloads => 'Descargas de alta calidad sin marcas de agua';

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
  String get failedToLoadPlans => 'Error al cargar planes';

  @override
  String get retry => 'Reintentar';

  @override
  String freeTrialDays(int days) {
    return '$days días de prueba gratuita';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks semanas de prueba gratuita';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months meses de prueba gratuita';
  }

  @override
  String get supportedPlatforms => 'Plataformas compatibles';

  @override
  String get supportTiktok => 'Descargar videos, imágenes, música';

  @override
  String get supportInstagram => 'Descargas de alta calidad sin marcas de agua';

  @override
  String get playlistTab => 'Lista de reproducción';

  @override
  String get authorsTab => 'Autores';

  @override
  String get createPlaylist => 'Crear lista de reproducción';

  @override
  String get playlistTitle => 'Título de la lista';

  @override
  String get playlistDescription => 'Descripción';

  @override
  String get chooseFiles => 'Elegir archivos';

  @override
  String get createPlaylistButton => 'Crear lista de reproducción';

  @override
  String get playlistTitleHint => 'Ingresa el título de la lista';

  @override
  String get playlistDescriptionHint => 'Ingresa la descripción de la lista (opcional)';

  @override
  String get selectFiles => 'Selecciona archivos para agregar a la lista';

  @override
  String get noPlaylistsYet => 'Aún no hay listas de reproducción';

  @override
  String get createFirstPlaylist => 'Crea tu primera lista de reproducción para organizar tus descargas';

  @override
  String get noAuthorsYet => 'Aún no hay autores';

  @override
  String get downloadSomethingFirst => 'Descarga algo de contenido para ver autores aquí';

  @override
  String authorVideos(Object author) {
    return 'Videos de $author';
  }

  @override
  String get noVideosFromAuthor => 'Aún no hay videos de este autor';
}
