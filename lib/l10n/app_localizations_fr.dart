// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'TikTok Téléchargeur';

  @override
  String get homeTab => 'Accueil';

  @override
  String get libraryTab => 'Bibliothèque';

  @override
  String get settingsTab => 'Paramètres';

  @override
  String get pasteLink => 'Coller le lien';

  @override
  String get clear => 'Effacer';

  @override
  String get download => 'Télécharger';

  @override
  String get enterTiktokUrl => 'Entrez l\'URL TikTok';

  @override
  String get howToUseTitle => 'Comment utiliser :';

  @override
  String get howToUseStep1 => '1. Ouvrez TikTok et trouvez la vidéo que vous voulez télécharger.';

  @override
  String get howToUseStep2 => '2. Appuyez sur l\'icône \'Partager\' sur le côté droit de la vidéo.';

  @override
  String get howToUseStep3 => '3. Choisissez \'Copier le lien\'.';

  @override
  String get howToUseStep4 => '4. Collez le lien dans le champ de saisie ci-dessus et appuyez sur \'Télécharger\'.';

  @override
  String get invalidUrlError => 'Format d\'URL TikTok invalide.';

  @override
  String get fetchingMedia => 'Récupération des médias...';

  @override
  String get downloadPhoto => 'Télécharger la photo';

  @override
  String get downloadVideo => 'Télécharger la vidéo';

  @override
  String get downloadVoice => 'Télécharger la musique';

  @override
  String get downloadMp3 => 'Télécharger MP3';

  @override
  String get downloading => 'Téléchargement...';

  @override
  String get downloadSuccess => 'Téléchargement terminé !';

  @override
  String get downloadError => 'Échec du téléchargement. Veuillez réessayer.';

  @override
  String get downloadLimitReachedTitle => 'Limite de téléchargement atteinte';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'Vous avez atteint la limite de téléchargement ($limit fois). Regardez une courte publicité pour obtenir 5 tentatives de téléchargement supplémentaires.';
  }

  @override
  String get watchAd => 'Regarder la pub';

  @override
  String get cancel => 'Annuler';

  @override
  String get photosTab => 'Photos';

  @override
  String get videosTab => 'Vidéos';

  @override
  String get musicTab => 'Musique';

  @override
  String get view => 'Voir';

  @override
  String get info => 'Info';

  @override
  String get rename => 'Renommer';

  @override
  String get share => 'Partager';

  @override
  String get delete => 'Supprimer';

  @override
  String get mediaInfoTitle => 'Informations du média';

  @override
  String get fileName => 'Nom';

  @override
  String get filePath => 'Chemin';

  @override
  String get dateAdded => 'Date ajoutée';

  @override
  String get fileSize => 'Taille';

  @override
  String get renameMediaTitle => 'Renommer le média';

  @override
  String get enterNewName => 'Entrez un nouveau nom';

  @override
  String get save => 'Enregistrer';

  @override
  String get deleteConfirmationTitle => 'Confirmer la suppression';

  @override
  String get deleteConfirmationMessage => 'Êtes-vous sûr de vouloir supprimer ce fichier ? Cette action ne peut pas être annulée.';

  @override
  String get confirm => 'Confirmer';

  @override
  String get settingsLanguage => 'Langue';

  @override
  String get settingsTheme => 'Thème';

  @override
  String get settingsThemeLight => 'Clair';

  @override
  String get settingsThemeDark => 'Sombre';

  @override
  String get settingsThemeSystem => 'Système';

  @override
  String get settingsClaimMoreDownloads => 'Obtenir 5 téléchargements de plus';

  @override
  String get settingsClaimSuccess => 'Succès ! Vous avez 5 téléchargements de plus.';

  @override
  String get settingsClaimError => 'Échec du chargement de la pub. Veuillez réessayer plus tard.';

  @override
  String get settingsPremium => 'Passer à Premium';

  @override
  String get settingsPremiumDescription => 'Supprimez les publicités et obtenez des téléchargements illimités.';

  @override
  String get settingsRestorePurchase => 'Restaurer l\'achat';

  @override
  String get settingsRestoreSuccess => 'Achats restaurés avec succès !';

  @override
  String get settingsRestoreError => 'Échec de la restauration des achats. Aucun abonnement actif trouvé ou une erreur s\'est produite.';

  @override
  String get settingsGeneralSection => 'Général';

  @override
  String get settingsDownloadsSection => 'Téléchargements';

  @override
  String get settingsAccountSection => 'Compte';

  @override
  String get settingsSupportSection => 'Support et commentaires';

  @override
  String get settingsAbout => 'À propos';

  @override
  String get settingsContact => 'Nous contacter';

  @override
  String get settingsRateApp => 'Noter cette app';

  @override
  String get settingsShareApp => 'Partager cette app';

  @override
  String get premiumUser => 'Utilisateur Premium';

  @override
  String get aboutTitle => 'À propos de TikTok Téléchargeur';

  @override
  String get aboutContent => 'Cette application vous aide à télécharger des vidéos, photos et audio publics des publications TikTok.\n\nVeuillez respecter les droits d\'auteur et la vie privée. Ne téléchargez que le contenu que vous êtes autorisé à utiliser.';

  @override
  String get contactTitle => 'Nous contacter';

  @override
  String get contactNameHint => 'Votre nom';

  @override
  String get contactEmailHint => 'Votre email';

  @override
  String get contactMessageHint => 'Votre message';

  @override
  String get contactSendButton => 'Envoyer le message';

  @override
  String get contactSending => 'Envoi...';

  @override
  String get contactSuccess => 'Message envoyé avec succès ! Nous vous répondrons bientôt.';

  @override
  String get contactError => 'Échec de l\'envoi du message. Veuillez réessayer plus tard.';

  @override
  String get permissionRequiredTitle => 'Permission requise';

  @override
  String get permissionStorageDenied => 'L\'autorisation de stockage est requise pour sauvegarder les fichiers téléchargés. Veuillez accorder l\'autorisation dans les paramètres.';

  @override
  String get permissionPhotosDenied => 'L\'autorisation photos est requise pour sauvegarder les fichiers téléchargés (iOS). Veuillez accorder l\'autorisation dans les paramètres.';

  @override
  String get permissionNotificationDenied => 'L\'autorisation de notification est recommandée pour les mises à jour du progrès de téléchargement.';

  @override
  String get permissiongoToSettings => 'Aller aux paramètres';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => 'Mettre à niveau maintenant';

  @override
  String get chooseYourPlan => 'Choisissez votre plan';

  @override
  String get planWeekly => 'Hebdomadaire';

  @override
  String get planMonthly => 'Mensuel';

  @override
  String get planAnnually => 'Annuel';

  @override
  String get planLifetime => 'À vie';

  @override
  String get oneTimePurchase => 'Achat unique';

  @override
  String savePercent(String percent) {
    return 'Économisez $percent%';
  }

  @override
  String get bestValue => 'Meilleure valeur';

  @override
  String get selectPlanErrorTitle => 'Erreur de chargement des plans';

  @override
  String get selectPlanErrorMessage => 'Impossible de charger les plans d\'abonnement. Veuillez vérifier votre connexion internet et réessayer.';

  @override
  String get purchaseFailed => 'Achat échoué';

  @override
  String get purchaseCancelled => 'Achat annulé';

  @override
  String get purchasePending => 'Achat en attente';

  @override
  String get purchaseSuccess => 'Achat réussi !';

  @override
  String get alreadyPremium => 'Vous êtes déjà utilisateur Premium.';

  @override
  String get getPremium => 'Obtenir Premium';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return 'Téléchargements restants : $currentLimit. Vous pouvez obtenir des téléchargements gratuits en regardant des publicités';
  }

  @override
  String get unlockSaveVideoPro => 'Débloquer les fonctionnalités Premium';

  @override
  String get noAdsUnlockAllFeatures => 'Pas de pubs et débloquer toutes les fonctionnalités';

  @override
  String get removeAds => 'Supprimer toutes les publicités';

  @override
  String get tiktokDownloads => 'Téléchargements HD illimités de vidéos, photos et musique de TikTok';

  @override
  String get instagramDownloads => 'Téléchargements haute qualité sans filigranes';

  @override
  String get lifetimePro => 'Pro à vie';

  @override
  String get yearlyPro => 'Pro annuel';

  @override
  String get monthlyPro => 'Pro mensuel';

  @override
  String get weeklyPro => 'Pro hebdomadaire';

  @override
  String get onlyBuyOnce => 'N\'achetez qu\'une seule fois';

  @override
  String get perYear => '/an';

  @override
  String get perMonth => '/mois';

  @override
  String get perWeek => '/semaine';

  @override
  String get mostPopular => 'Le plus populaire';

  @override
  String get buyNow => 'Acheter maintenant';

  @override
  String get termsOfUse => 'Conditions d\'utilisation';

  @override
  String get privacyPolicy => 'Politique de confidentialité';

  @override
  String get loadingPlans => 'Chargement des plans...';

  @override
  String get failedToLoadPlans => 'Échec du chargement des plans';

  @override
  String get retry => 'Réessayer';

  @override
  String freeTrialDays(int days) {
    return '$days jours d\'essai gratuit';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks semaines d\'essai gratuit';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months mois d\'essai gratuit';
  }

  @override
  String get supportedPlatforms => 'Plateformes supportées';

  @override
  String get supportTiktok => 'Télécharger vidéos, images, musique';

  @override
  String get supportInstagram => 'Téléchargements haute qualité sans filigranes';

  @override
  String get playlistTab => 'Playlist';

  @override
  String get authorsTab => 'Auteurs';

  @override
  String get createPlaylist => 'Créer une playlist';

  @override
  String get playlistTitle => 'Titre de la playlist';

  @override
  String get playlistDescription => 'Description';

  @override
  String get chooseFiles => 'Choisir les fichiers';

  @override
  String get createPlaylistButton => 'Créer la playlist';

  @override
  String get playlistTitleHint => 'Entrez le titre de la playlist';

  @override
  String get playlistDescriptionHint => 'Entrez la description de la playlist (optionnel)';

  @override
  String get selectFiles => 'Sélectionnez les fichiers à ajouter à la playlist';

  @override
  String get noPlaylistsYet => 'Aucune playlist pour l\'instant';

  @override
  String get createFirstPlaylist => 'Créez votre première playlist pour organiser vos téléchargements';

  @override
  String get noAuthorsYet => 'Aucun auteur pour l\'instant';

  @override
  String get downloadSomethingFirst => 'Téléchargez du contenu pour voir les auteurs ici';

  @override
  String authorVideos(Object author) {
    return 'Vidéos de $author';
  }

  @override
  String get noVideosFromAuthor => 'Aucune vidéo de cet auteur pour l\'instant';

  @override
  String errorLoadingLibrary(Object error) {
    return 'Erreur lors du chargement de la bibliothèque : $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'Vos médias téléchargés apparaîtront ici.';

  @override
  String get noPhotosDownloadedYet => 'Aucune photo téléchargée pour le moment.';

  @override
  String get noVideosDownloadedYet => 'Aucune vidéo téléchargée pour le moment.';

  @override
  String get noAudioDownloadedYet => 'Aucune musique téléchargée pour le moment.';

  @override
  String get somethingWentWrong => 'Quelque chose s\'est mal passé.';
}
