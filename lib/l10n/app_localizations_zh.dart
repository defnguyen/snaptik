// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'TikTok 下载器';

  @override
  String get homeTab => '首页';

  @override
  String get libraryTab => '资料库';

  @override
  String get settingsTab => '设置';

  @override
  String get pasteLink => '粘贴链接';

  @override
  String get clear => '清除';

  @override
  String get download => '下载';

  @override
  String get enterThreadsUrl => '输入 TikTok 链接';

  @override
  String get howToUseTitle => '使用方法：';

  @override
  String get howToUseStep1 => '1. 打开 TikTok 并找到你想下载的视频。';

  @override
  String get howToUseStep2 => '2. 点击视频右侧的\"分享\"图标。';

  @override
  String get howToUseStep3 => '3. 选择\"复制链接\"。';

  @override
  String get howToUseStep4 => '4. 将链接粘贴到上面的输入框中，然后点击\"下载\"。';

  @override
  String get invalidUrlError => '无效的 TikTok 网址格式。';

  @override
  String get fetchingMedia => '正在获取媒体...';

  @override
  String get downloadPhoto => '下载照片';

  @override
  String get downloadVideo => '下载视频';

  @override
  String get downloadVoice => '下载语音';

  @override
  String get downloadMp3 => '下载 MP3';

  @override
  String get downloading => '正在下载...';

  @override
  String get downloadSuccess => '下载完成！';

  @override
  String get downloadError => '下载失败。请重试。';

  @override
  String get downloadLimitReachedTitle => '已达到下载限制';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return '你已达到下载限制（$limit次）。观看短广告获取5次额外下载机会。';
  }

  @override
  String get watchAd => '观看广告';

  @override
  String get cancel => '取消';

  @override
  String get photosTab => '照片';

  @override
  String get videosTab => '视频';

  @override
  String get voiceTab => '语音';

  @override
  String get view => '查看';

  @override
  String get info => '信息';

  @override
  String get rename => '重命名';

  @override
  String get share => '分享';

  @override
  String get delete => '删除';

  @override
  String get mediaInfoTitle => '媒体信息';

  @override
  String get fileName => '名称';

  @override
  String get filePath => '路径';

  @override
  String get dateAdded => '添加日期';

  @override
  String get fileSize => '大小';

  @override
  String get renameMediaTitle => '重命名媒体';

  @override
  String get enterNewName => '输入新名称';

  @override
  String get save => '保存';

  @override
  String get deleteConfirmationTitle => '确认删除';

  @override
  String get deleteConfirmationMessage => '确定要删除此文件吗？此操作无法撤销。';

  @override
  String get confirm => '确认';

  @override
  String get settingsLanguage => '语言';

  @override
  String get settingsTheme => '主题';

  @override
  String get settingsThemeLight => '浅色';

  @override
  String get settingsThemeDark => '深色';

  @override
  String get settingsThemeSystem => '系统';

  @override
  String get settingsClaimMoreDownloads => '获取5次额外下载';

  @override
  String get settingsClaimSuccess => '成功！你有5次额外下载机会。';

  @override
  String get settingsClaimError => '加载广告失败。请稍后重试。';

  @override
  String get settingsPremium => '升级至高级版';

  @override
  String get settingsPremiumDescription => '移除广告并获得无限下载。';

  @override
  String get settingsRestorePurchase => '恢复购买';

  @override
  String get settingsRestoreSuccess => '成功恢复购买！';

  @override
  String get settingsRestoreError => '恢复购买失败。未找到活跃订阅或发生错误。';

  @override
  String get settingsGeneralSection => '常规';

  @override
  String get settingsDownloadsSection => '下载';

  @override
  String get settingsAccountSection => '账户';

  @override
  String get settingsSupportSection => '支持与反馈';

  @override
  String get settingsAbout => '关于';

  @override
  String get settingsContact => '联系我们';

  @override
  String get settingsRateApp => '评价应用';

  @override
  String get settingsShareApp => '分享应用';

  @override
  String get premiumUser => '高级用户';

  @override
  String get aboutTitle => '关于 Threads 下载器';

  @override
  String get aboutContent => '此应用帮助你从 Threads 帖子下载公开照片、视频和语音备忘录。\n\n请尊重版权和隐私。仅下载你有权使用的内容。';

  @override
  String get contactTitle => '联系我们';

  @override
  String get contactNameHint => '你的姓名';

  @override
  String get contactEmailHint => '你的邮箱';

  @override
  String get contactMessageHint => '你的留言';

  @override
  String get contactSendButton => '发送留言';

  @override
  String get contactSending => '正在发送...';

  @override
  String get contactSuccess => '留言发送成功！我们将尽快与你联系。';

  @override
  String get contactError => '发送留言失败。请稍后重试。';

  @override
  String get permissionRequiredTitle => '需要权限';

  @override
  String get permissionStorageDenied => '保存下载文件需要存储权限。请在设置中授予权限。';

  @override
  String get permissionPhotosDenied => '保存下载文件需要照片权限（iOS）。请在设置中授予权限。';

  @override
  String get permissionNotificationDenied => '建议开启通知权限以获取下载进度更新。';

  @override
  String get permissiongoToSettings => '前往设置';

  @override
  String get ok => '确定';

  @override
  String get upgradeNow => '立即升级';

  @override
  String get chooseYourPlan => '选择你的套餐';

  @override
  String get planWeekly => '每周';

  @override
  String get planMonthly => '每月';

  @override
  String get planAnnually => '每年';

  @override
  String get planLifetime => '终身';

  @override
  String get oneTimePurchase => '一次性购买';

  @override
  String savePercent(String percent) {
    return '节省 $percent%';
  }

  @override
  String get bestValue => '最佳价值';

  @override
  String get selectPlanErrorTitle => '加载套餐错误';

  @override
  String get selectPlanErrorMessage => '无法加载订阅套餐。请检查你的网络连接并重试。';

  @override
  String get purchaseFailed => '购买失败';

  @override
  String get purchaseCancelled => '购买已取消';

  @override
  String get purchasePending => '购买处理中';

  @override
  String get purchaseSuccess => '购买成功！';

  @override
  String get alreadyPremium => '你已经是高级用户。';

  @override
  String get getPremium => '获取高级版';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return '剩余下载次数：$currentLimit。观看广告可获得免费下载机会';
  }

  @override
  String get unlockSaveVideoPro => '解锁高级功能';

  @override
  String get noAdsUnlockAllFeatures => '无广告并解锁所有功能';

  @override
  String get removeAds => '移除所有广告';

  @override
  String get threadsDownloads => '无限制高清下载Threads的视频、照片和语音消息';

  @override
  String get instagramDownloads => '无限制高清下载Instagram的视频、照片、短视频、快拍和完整资料';

  @override
  String get lifetimePro => '终身专业版';

  @override
  String get yearlyPro => '年度专业版';

  @override
  String get monthlyPro => '月度专业版';

  @override
  String get weeklyPro => '周度专业版';

  @override
  String get onlyBuyOnce => '只需购买一次';

  @override
  String get perYear => '/年';

  @override
  String get perMonth => '/月';

  @override
  String get perWeek => '/周';

  @override
  String get mostPopular => '最受欢迎';

  @override
  String get buyNow => '立即购买';

  @override
  String get termsOfUse => '使用条款';

  @override
  String get privacyPolicy => '隐私政策';

  @override
  String get loadingPlans => '正在加载套餐...';

  @override
  String get failedToLoadPlans => '套餐加载失败';

  @override
  String get retry => '重试';

  @override
  String freeTrialDays(int days) {
    return '$days天免费试用';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks周免费试用';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months个月免费试用';
  }

  @override
  String get supportedPlatforms => '支持的平台';

  @override
  String get supportThreads => '下载视频、图片和语音消息';

  @override
  String get supportInstagram => '下载视频、图片、Reels、Stories 和个人资料';

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
