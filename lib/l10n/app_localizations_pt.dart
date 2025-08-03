// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'Threads Video Downloader';

  @override
  String get homeTab => 'Início';

  @override
  String get libraryTab => 'Biblioteca';

  @override
  String get settingsTab => 'Configurações';

  @override
  String get pasteLink => 'Colar Link';

  @override
  String get clear => 'Limpar';

  @override
  String get download => 'Baixar';

  @override
  String get enterThreadsUrl => 'Digite a URL do Threads/Instagram';

  @override
  String get howToUseTitle => 'Como Usar:';

  @override
  String get howToUseStep1 => '1. Abra o Threads e encontre a publicação que deseja baixar.';

  @override
  String get howToUseStep2 => '2. Toque no ícone \'Compartilhar\' abaixo da publicação.';

  @override
  String get howToUseStep3 => '3. Escolha \'Copiar link\'.';

  @override
  String get howToUseStep4 => '4. Cole o link no campo acima e toque em \'Baixar\'.';

  @override
  String get invalidUrlError => 'Formato de URL do Threads inválido.';

  @override
  String get fetchingMedia => 'Buscando mídia...';

  @override
  String get downloadPhoto => 'Baixar Foto';

  @override
  String get downloadVideo => 'Baixar Vídeo';

  @override
  String get downloadVoice => 'Baixar Áudio';

  @override
  String get downloadMp3 => 'Baixar MP3';

  @override
  String get downloading => 'Baixando...';

  @override
  String get downloadSuccess => 'Download concluído!';

  @override
  String get downloadError => 'Falha no download. Por favor, tente novamente.';

  @override
  String get downloadLimitReachedTitle => 'Limite de Downloads Atingido';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Você atingiu o limite de downloads ($limit vezes). Assista a um anúncio curto para obter mais 5 tentativas de download.';
  }

  @override
  String get watchAd => 'Assistir Anúncio';

  @override
  String get cancel => 'Cancelar';

  @override
  String get photosTab => 'Fotos';

  @override
  String get videosTab => 'Vídeos';

  @override
  String get voiceTab => 'Áudio';

  @override
  String get view => 'Visualizar';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Renomear';

  @override
  String get share => 'Compartilhar';

  @override
  String get delete => 'Excluir';

  @override
  String get mediaInfoTitle => 'Informações da Mídia';

  @override
  String get fileName => 'Nome';

  @override
  String get filePath => 'Caminho';

  @override
  String get dateAdded => 'Data Adicionada';

  @override
  String get fileSize => 'Tamanho';

  @override
  String get renameMediaTitle => 'Renomear Mídia';

  @override
  String get enterNewName => 'Digite o novo nome';

  @override
  String get save => 'Salvar';

  @override
  String get deleteConfirmationTitle => 'Confirmar Exclusão';

  @override
  String get deleteConfirmationMessage => 'Tem certeza que deseja excluir este arquivo? Esta ação não pode ser desfeita.';

  @override
  String get confirm => 'Confirmar';

  @override
  String get settingsLanguage => 'Idioma';

  @override
  String get settingsTheme => 'Tema';

  @override
  String get settingsThemeLight => 'Claro';

  @override
  String get settingsThemeDark => 'Escuro';

  @override
  String get settingsThemeSystem => 'Sistema';

  @override
  String get settingsClaimMoreDownloads => 'Obter Mais 5 Downloads';

  @override
  String get settingsClaimSuccess => 'Sucesso! Você tem mais 5 downloads.';

  @override
  String get settingsClaimError => 'Falha ao carregar anúncio. Por favor, tente novamente mais tarde.';

  @override
  String get settingsPremium => 'Atualizar para Premium';

  @override
  String get settingsPremiumDescription => 'Remova anúncios e obtenha downloads ilimitados.';

  @override
  String get settingsRestorePurchase => 'Restaurar Compra';

  @override
  String get settingsRestoreSuccess => 'Compras restauradas com sucesso!';

  @override
  String get settingsRestoreError => 'Falha ao restaurar compras. Nenhuma assinatura ativa encontrada ou ocorreu um erro.';

  @override
  String get settingsGeneralSection => 'Geral';

  @override
  String get settingsDownloadsSection => 'Downloads';

  @override
  String get settingsAccountSection => 'Conta';

  @override
  String get settingsSupportSection => 'Suporte e Feedback';

  @override
  String get settingsAbout => 'Sobre';

  @override
  String get settingsContact => 'Contato';

  @override
  String get settingsRateApp => 'Avaliar este Aplicativo';

  @override
  String get settingsShareApp => 'Compartilhar este Aplicativo';

  @override
  String get premiumUser => 'Usuário Premium';

  @override
  String get aboutTitle => 'Sobre o Threads Downloader';

  @override
  String get aboutContent => 'Este aplicativo ajuda você a baixar fotos, vídeos e notas de voz públicas de publicações do Threads.\n\nPor favor, respeite os direitos autorais e a privacidade. Baixe apenas conteúdo que você tenha permissão para usar.';

  @override
  String get contactTitle => 'Entre em Contato';

  @override
  String get contactNameHint => 'Seu Nome';

  @override
  String get contactEmailHint => 'Seu Email';

  @override
  String get contactMessageHint => 'Sua Mensagem';

  @override
  String get contactSendButton => 'Enviar Mensagem';

  @override
  String get contactSending => 'Enviando...';

  @override
  String get contactSuccess => 'Mensagem enviada com sucesso! Entraremos em contato em breve.';

  @override
  String get contactError => 'Falha ao enviar mensagem. Por favor, tente novamente mais tarde.';

  @override
  String get permissionRequiredTitle => 'Permissão Necessária';

  @override
  String get permissionStorageDenied => 'A permissão de armazenamento é necessária para salvar arquivos baixados. Por favor, conceda a permissão nas configurações.';

  @override
  String get permissionPhotosDenied => 'A permissão de fotos é necessária para salvar arquivos baixados (iOS). Por favor, conceda a permissão nas configurações.';

  @override
  String get permissionNotificationDenied => 'A permissão de notificação é recomendada para atualizações do progresso de download.';

  @override
  String get permissiongoToSettings => 'Ir para Configurações';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Atualizar Agora';

  @override
  String get chooseYourPlan => 'Escolha Seu Plano';

  @override
  String get planWeekly => 'Semanal';

  @override
  String get planMonthly => 'Mensal';

  @override
  String get planAnnually => 'Anual';

  @override
  String get planLifetime => 'Vitalício';

  @override
  String get oneTimePurchase => 'Compra Única';

  @override
  String savePercent(String percent) {
    return 'Economize $percent%';
  }

  @override
  String get bestValue => 'Melhor Valor';

  @override
  String get selectPlanErrorTitle => 'Erro ao Carregar Planos';

  @override
  String get selectPlanErrorMessage => 'Não foi possível carregar os planos de assinatura. Por favor, verifique sua conexão com a internet e tente novamente.';

  @override
  String get purchaseFailed => 'Compra Falhou';

  @override
  String get purchaseCancelled => 'Compra Cancelada';

  @override
  String get purchasePending => 'Compra Pendente';

  @override
  String get purchaseSuccess => 'Compra Bem-sucedida!';

  @override
  String get alreadyPremium => 'Você já é um usuário Premium.';

  @override
  String get getPremium => 'Obter Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Downloads restantes: $currentLimit. Você pode obter downloads gratuitos assistindo a anúncios';
  }

  @override
  String get unlockSaveVideoPro => 'Desbloquear recursos premium';

  @override
  String get noAdsUnlockAllFeatures => 'Sem anúncios e desbloquear todos os recursos';

  @override
  String get removeAds => 'Remover todos os anúncios';

  @override
  String get threadsDownloads => 'Downloads HD ilimitados de vídeos, fotos e mensagens de voz do Threads';

  @override
  String get instagramDownloads => 'Downloads HD ilimitados de vídeos, fotos, reels, stories e perfis completos do Instagram';

  @override
  String get lifetimePro => 'Pro vitalício';

  @override
  String get yearlyPro => 'Pro anual';

  @override
  String get monthlyPro => 'Pro mensal';

  @override
  String get weeklyPro => 'Pro semanal';

  @override
  String get onlyBuyOnce => 'Compre apenas uma vez';

  @override
  String get perYear => '/ano';

  @override
  String get perMonth => '/mês';

  @override
  String get perWeek => '/semana';

  @override
  String get mostPopular => 'Mais popular';

  @override
  String get buyNow => 'Comprar agora';

  @override
  String get termsOfUse => 'Termos de uso';

  @override
  String get privacyPolicy => 'Política de privacidade';

  @override
  String get loadingPlans => 'Carregando planos...';

  @override
  String get failedToLoadPlans => 'Falha ao carregar planos';

  @override
  String get retry => 'Tentar novamente';

  @override
  String freeTrialDays(int days) {
    return 'Teste gratuito de $days dias';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return 'Teste gratuito de $weeks semanas';
  }

  @override
  String freeTrialMonths(int months) {
    return 'Teste gratuito de $months meses';
  }

  @override
  String get supportedPlatforms => 'Plataformas suportadas';

  @override
  String get supportThreads => 'Baixar vídeos, imagens e notas de voz';

  @override
  String get supportInstagram => 'Baixar vídeos, imagens, Reels, Stories e perfis';

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
