// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'TikTok ダウンローダー';

  @override
  String get homeTab => 'ホーム';

  @override
  String get libraryTab => 'ライブラリ';

  @override
  String get settingsTab => '設定';

  @override
  String get pasteLink => 'リンクを貼り付け';

  @override
  String get clear => 'クリア';

  @override
  String get download => 'ダウンロード';

  @override
  String get enterTiktokUrl => 'TikTok URLを入力';

  @override
  String get howToUseTitle => '使い方：';

  @override
  String get howToUseStep1 => '1. TikTokを開いて、ダウンロードしたい動画を見つけます。';

  @override
  String get howToUseStep2 => '2. 動画の右側にある「シェア」アイコンをタップします。';

  @override
  String get howToUseStep3 => '3. 「リンクをコピー」を選択します。';

  @override
  String get howToUseStep4 => '4. 上の入力欄にリンクを貼り付けて「ダウンロード」をタップします。';

  @override
  String get invalidUrlError => '無効なTikTok URLフォーマットです。';

  @override
  String get fetchingMedia => 'メディアを取得中...';

  @override
  String get downloadPhoto => '写真をダウンロード';

  @override
  String get downloadVideo => '動画をダウンロード';

  @override
  String get downloadVoice => '音楽をダウンロード';

  @override
  String get downloadMp3 => 'MP3をダウンロード';

  @override
  String get downloading => 'ダウンロード中...';

  @override
  String get downloadSuccess => 'ダウンロード完了！';

  @override
  String get downloadError => 'ダウンロードに失敗しました。もう一度お試しください。';

  @override
  String get downloadLimitReachedTitle => 'ダウンロード制限に達しました';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return 'ダウンロード制限に達しました（$limit回）。短い広告を見て、さらに5回のダウンロード試行を取得してください。';
  }

  @override
  String get watchAd => '広告を見る';

  @override
  String get cancel => 'キャンセル';

  @override
  String get photosTab => '写真';

  @override
  String get videosTab => '動画';

  @override
  String get musicTab => '音楽';

  @override
  String get view => '表示';

  @override
  String get info => '情報';

  @override
  String get rename => '名前を変更';

  @override
  String get share => '共有';

  @override
  String get delete => '削除';

  @override
  String get mediaInfoTitle => 'メディア情報';

  @override
  String get fileName => '名前';

  @override
  String get filePath => 'パス';

  @override
  String get dateAdded => '追加日';

  @override
  String get fileSize => 'サイズ';

  @override
  String get renameMediaTitle => 'メディア名を変更';

  @override
  String get enterNewName => '新しい名前を入力';

  @override
  String get save => '保存';

  @override
  String get deleteConfirmationTitle => '削除の確認';

  @override
  String get deleteConfirmationMessage => 'このファイルを削除してもよろしいですか？この操作は元に戻せません。';

  @override
  String get confirm => '確認';

  @override
  String get settingsLanguage => '言語';

  @override
  String get settingsTheme => 'テーマ';

  @override
  String get settingsThemeLight => 'ライト';

  @override
  String get settingsThemeDark => 'ダーク';

  @override
  String get settingsThemeSystem => 'システム';

  @override
  String get settingsClaimMoreDownloads => '5回のダウンロードを追加取得';

  @override
  String get settingsClaimSuccess => '成功！さらに5回のダウンロードがあります。';

  @override
  String get settingsClaimError => '広告の読み込みに失敗しました。後でもう一度お試しください。';

  @override
  String get settingsPremium => 'プレミアムにアップグレード';

  @override
  String get settingsPremiumDescription => '広告を削除して無制限ダウンロードを取得。';

  @override
  String get settingsRestorePurchase => '購入を復元';

  @override
  String get settingsRestoreSuccess => '購入が正常に復元されました！';

  @override
  String get settingsRestoreError => '購入の復元に失敗しました。アクティブなサブスクリプションが見つからないか、エラーが発生しました。';

  @override
  String get settingsGeneralSection => '一般';

  @override
  String get settingsDownloadsSection => 'ダウンロード';

  @override
  String get settingsAccountSection => 'アカウント';

  @override
  String get settingsSupportSection => 'サポートとフィードバック';

  @override
  String get settingsAbout => 'アプリについて';

  @override
  String get settingsContact => 'お問い合わせ';

  @override
  String get settingsRateApp => 'このアプリを評価';

  @override
  String get settingsShareApp => 'このアプリを共有';

  @override
  String get premiumUser => 'プレミアムユーザー';

  @override
  String get aboutTitle => 'TikTok ダウンローダーについて';

  @override
  String get aboutContent => 'このアプリはTikTok投稿から公開動画、写真、音声をダウンロードするのに役立ちます。\n\n著作権とプライバシーを尊重してください。使用許可のあるコンテンツのみをダウンロードしてください。';

  @override
  String get contactTitle => 'お問い合わせ';

  @override
  String get contactNameHint => 'お名前';

  @override
  String get contactEmailHint => 'メールアドレス';

  @override
  String get contactMessageHint => 'メッセージ';

  @override
  String get contactSendButton => 'メッセージを送信';

  @override
  String get contactSending => '送信中...';

  @override
  String get contactSuccess => 'メッセージが正常に送信されました！すぐにご連絡いたします。';

  @override
  String get contactError => 'メッセージの送信に失敗しました。後でもう一度お試しください。';

  @override
  String get permissionRequiredTitle => '許可が必要';

  @override
  String get permissionStorageDenied => 'ダウンロードしたファイルを保存するにはストレージ許可が必要です。設定で許可を与えてください。';

  @override
  String get permissionPhotosDenied => 'ダウンロードしたファイルを保存するには写真許可が必要です（iOS）。設定で許可を与えてください。';

  @override
  String get permissionNotificationDenied => 'ダウンロード進行状況の更新には通知許可をお勧めします。';

  @override
  String get permissiongoToSettings => '設定に移動';

  @override
  String get ok => 'OK';

  @override
  String get upgradeNow => '今すぐアップグレード';

  @override
  String get chooseYourPlan => 'プランを選択';

  @override
  String get planWeekly => '週間';

  @override
  String get planMonthly => '月間';

  @override
  String get planAnnually => '年間';

  @override
  String get planLifetime => '生涯';

  @override
  String get oneTimePurchase => '一回購入';

  @override
  String savePercent(String percent) {
    return '$percent%節約';
  }

  @override
  String get bestValue => '最高の価値';

  @override
  String get selectPlanErrorTitle => 'プラン読み込みエラー';

  @override
  String get selectPlanErrorMessage => 'サブスクリプションプランを読み込めませんでした。インターネット接続を確認してもう一度お試しください。';

  @override
  String get purchaseFailed => '購入失敗';

  @override
  String get purchaseCancelled => '購入キャンセル';

  @override
  String get purchasePending => '購入保留中';

  @override
  String get purchaseSuccess => '購入成功！';

  @override
  String get alreadyPremium => '既にプレミアムユーザーです。';

  @override
  String get getPremium => 'プレミアムを取得';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return '残りダウンロード数：$currentLimit。広告を視聴して無料ダウンロードを取得できます';
  }

  @override
  String get unlockSaveVideoPro => 'プレミアム機能をアンロック';

  @override
  String get noAdsUnlockAllFeatures => '広告なし&すべての機能をアンロック';

  @override
  String get removeAds => 'すべての広告を削除';

  @override
  String get tiktokDownloads => 'TikTokから動画、写真、音楽の無制限HDダウンロード';

  @override
  String get instagramDownloads => 'ウォーターマークなしの高品質ダウンロード';

  @override
  String get lifetimePro => '生涯プロ';

  @override
  String get yearlyPro => '年間プロ';

  @override
  String get monthlyPro => '月間プロ';

  @override
  String get weeklyPro => '週間プロ';

  @override
  String get onlyBuyOnce => '一度だけ購入';

  @override
  String get perYear => '/年';

  @override
  String get perMonth => '/月';

  @override
  String get perWeek => '/週';

  @override
  String get mostPopular => '最も人気';

  @override
  String get buyNow => '今すぐ購入';

  @override
  String get termsOfUse => '利用規約';

  @override
  String get privacyPolicy => 'プライバシーポリシー';

  @override
  String get loadingPlans => 'プランを読み込み中...';

  @override
  String get failedToLoadPlans => 'プランの読み込みに失敗';

  @override
  String get retry => '再試行';

  @override
  String freeTrialDays(int days) {
    return '$days日間無料トライアル';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks週間無料トライアル';
  }

  @override
  String freeTrialMonths(int months) {
    return '$monthsか月無料トライアル';
  }

  @override
  String get supportedPlatforms => 'サポートされているプラットフォーム';

  @override
  String get supportTiktok => '動画、画像、音楽をダウンロード';

  @override
  String get supportInstagram => 'ウォーターマークなしの高品質ダウンロード';

  @override
  String get playlistTab => 'プレイリスト';

  @override
  String get authorsTab => '作者';

  @override
  String get createPlaylist => 'プレイリストを作成';

  @override
  String get playlistTitle => 'プレイリストタイトル';

  @override
  String get playlistDescription => '説明';

  @override
  String get chooseFiles => 'ファイルを選択';

  @override
  String get createPlaylistButton => 'プレイリストを作成';

  @override
  String get playlistTitleHint => 'プレイリストタイトルを入力';

  @override
  String get playlistDescriptionHint => 'プレイリストの説明を入力（オプション）';

  @override
  String get selectFiles => 'プレイリストに追加するファイルを選択';

  @override
  String get noPlaylistsYet => 'まだプレイリストがありません';

  @override
  String get createFirstPlaylist => 'ダウンロードを整理するために最初のプレイリストを作成してください';

  @override
  String get noAuthorsYet => 'まだ作者がいません';

  @override
  String get downloadSomethingFirst => 'ここで作者を見るためにコンテンツをダウンロードしてください';

  @override
  String authorVideos(Object author) {
    return '$authorの動画';
  }

  @override
  String get noVideosFromAuthor => 'この作者からの動画はまだありません';

  @override
  String errorLoadingLibrary(Object error) {
    return 'ライブラリの読み込みエラー: $error';
  }

  @override
  String get downloadedMediaWillAppearHere => 'ダウンロードしたメディアがここに表示されます。';

  @override
  String get noPhotosDownloadedYet => 'まだ写真をダウンロードしていません。';

  @override
  String get noVideosDownloadedYet => 'まだ動画をダウンロードしていません。';

  @override
  String get noAudioDownloadedYet => 'まだ音楽をダウンロードしていません。';

  @override
  String get somethingWentWrong => '問題が発生しました。';
}
