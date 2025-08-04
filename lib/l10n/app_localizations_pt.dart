// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Portuguese (`pt`).
class AppLocalizationsPt extends AppLocalizations {
  AppLocalizationsPt([String locale = 'pt']) : super(locale);

  @override
  String get appTitle => 'TikTok Downloader';

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
  String get enterTiktokUrl => 'Digite a URL do TikTok';

  @override
  String get howToUseTitle => 'Como usar:';

  @override
  String get howToUseStep1 => '1. Abra o TikTok e encontre o vídeo que deseja baixar.';

  @override
  String get howToUseStep2 => '2. Toque no ícone \'Compartilhar\' no lado direito do vídeo.';

  @override
  String get howToUseStep3 => '3. Escolha \'Copiar link\'.';

  @override
  String get howToUseStep4 => '4. Cole o link no campo de entrada acima e toque em \'Baixar\'.';

  @override
  String get invalidUrlError => 'Formato de URL do TikTok inválido.';

  @override
  String get fetchingMedia => 'Buscando mídia...';

  @override
  String get downloadPhoto => 'Baixar Foto';

  @override
  String get downloadVideo => 'Baixar Vídeo';

  @override
  String get downloadVoice => 'Baixar Música';

  @override
  String get downloadMp3 => 'Baixar MP3';

  @override
  String get downloading => 'Baixando...';

  @override
  String get downloadSuccess => 'Download concluído!';

  @override
  String get downloadError => 'Falha no download. Tente novamente.';

  @override
  String get downloadLimitReachedTitle => 'Limite de Download Atingido';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Você atingiu o limite de download ($limit vezes). Assista a um anúncio curto para obter mais 5 tentativas de download.';
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
  String get musicTab => 'Música';

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
  String get deleteConfirmationMessage => 'Tem certeza de que deseja excluir este arquivo? Esta ação não pode ser desfeita.';

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
  String get settingsClaimMoreDownloads => 'Obter mais 5 Downloads';

  @override
  String get settingsClaimSuccess => 'Sucesso! Você tem mais 5 downloads.';

  @override
  String get settingsClaimError => 'Falha ao carregar anúncio. Tente novamente mais tarde.';

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
  String get settingsContact => 'Entre em Contato';

  @override
  String get settingsRateApp => 'Avaliar este App';

  @override
  String get settingsShareApp => 'Compartilhar este App';

  @override
  String get premiumUser => 'Usuário Premium';

  @override
  String get aboutTitle => 'Sobre o TikTok Downloader';

  @override
  String get aboutContent => 'Este app ajuda você a baixar vídeos, fotos e áudios públicos de posts do TikTok.\n\nPor favor, respeite direitos autorais e privacidade. Baixe apenas conteúdo que você tem permissão para usar.';

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
  String get contactError => 'Falha ao enviar mensagem. Tente novamente mais tarde.';

  @override
  String get permissionRequiredTitle => 'Permissão Necessária';

  @override
  String get permissionStorageDenied => 'Permissão de armazenamento é necessária para salvar arquivos baixados. Conceda a permissão nas configurações.';

  @override
  String get permissionPhotosDenied => 'Permissão de fotos é necessária para salvar arquivos baixados (iOS). Conceda a permissão nas configurações.';

  @override
  String get permissionNotificationDenied => 'Permissão de notificação é recomendada para atualizações do progresso de download.';

  @override
  String get permissiongoToSettings => 'Ir para Configurações';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Atualizar Agora';

  @override
  String get chooseYourPlan => 'Escolha seu Plano';

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
  String get selectPlanErrorMessage => 'Não foi possível carregar os planos de assinatura. Verifique sua conexão com a internet e tente novamente.';

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
    return 'Downloads restantes: $currentLimit. Você pode obter downloads gratuitos assistindo anúncios';
  }

  @override
  String get unlockSaveVideoPro => 'Desbloquear Recursos Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Sem Anúncios e Desbloquear Todos os Recursos';

  @override
  String get removeAds => 'Remover todos os anúncios';

  @override
  String get tiktokDownloads => 'Downloads HD ilimitados de vídeos, fotos e música do TikTok';

  @override
  String get instagramDownloads => 'Downloads de alta qualidade sem marcas d\'água';

  @override
  String get lifetimePro => 'Pro Vitalício';

  @override
  String get yearlyPro => 'Pro Anual';

  @override
  String get monthlyPro => 'Pro Mensal';

  @override
  String get weeklyPro => 'Pro Semanal';

  @override
  String get onlyBuyOnce => 'Compre apenas uma vez';

  @override
  String get perYear => '/ano';

  @override
  String get perMonth => '/mês';

  @override
  String get perWeek => '/semana';

  @override
  String get mostPopular => 'Mais Popular';

  @override
  String get buyNow => 'Comprar Agora';

  @override
  String get termsOfUse => 'Termos de Uso';

  @override
  String get privacyPolicy => 'Política de Privacidade';

  @override
  String get loadingPlans => 'Carregando planos...';

  @override
  String get failedToLoadPlans => 'Falha ao carregar planos';

  @override
  String get retry => 'Tentar Novamente';

  @override
  String freeTrialDays(int days) {
    return '$days dias de teste grátis';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks semanas de teste grátis';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months meses de teste grátis';
  }

  @override
  String get supportedPlatforms => 'Plataformas Suportadas';

  @override
  String get supportTiktok => 'Baixar Vídeos, Imagens, Música';

  @override
  String get supportInstagram => 'Downloads de Alta Qualidade Sem Marcas d\'Água';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Autores';

  @override
  String get createPlaylist => 'Criar Playlist';

  @override
  String get playlistTitle => 'Título da Playlist';

  @override
  String get playlistDescription => 'Descrição';

  @override
  String get chooseFiles => 'Escolher Arquivos';

  @override
  String get createPlaylistButton => 'Criar Playlist';

  @override
  String get playlistTitleHint => 'Digite o título da playlist';

  @override
  String get playlistDescriptionHint => 'Digite a descrição da playlist (opcional)';

  @override
  String get selectFiles => 'Selecione arquivos para adicionar à playlist';

  @override
  String get noPlaylistsYet => 'Ainda não há playlists';

  @override
  String get createFirstPlaylist => 'Crie sua primeira playlist para organizar seus downloads';

  @override
  String get noAuthorsYet => 'Ainda não há autores';

  @override
  String get downloadSomethingFirst => 'Baixe algum conteúdo primeiro para ver autores aqui';

  @override
  String authorVideos(Object author) {
    return 'Vídeos de $author';
  }

  @override
  String get noVideosFromAuthor => 'Ainda não há vídeos deste autor';
}
