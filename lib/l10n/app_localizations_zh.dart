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
  String get enterTiktokUrl => '输入 TikTok 链接';

  @override
  String get howToUseTitle => '使用方法：';

  @override
  String get howToUseStep1 => '1. 打开 TikTok 找到你想下载的视频。';

  @override
  String get howToUseStep2 => '2. 点击视频右侧的\"分享\"图标。';

  @override
  String get howToUseStep3 => '3. 选择\"复制链接\"。';

  @override
  String get howToUseStep4 => '4. 将链接粘贴到上方输入框，然后点击\"下载\"。';

  @override
  String get invalidUrlError => '无效的 TikTok 链接格式。';

  @override
  String get fetchingMedia => '正在获取媒体...';

  @override
  String get downloadPhoto => '下载图片';

  @override
  String get downloadVideo => '下载视频';

  @override
  String get downloadVoice => '下载音乐';

  @override
  String get downloadMp3 => '下载 MP3';

  @override
  String get downloading => '下载中...';

  @override
  String get downloadSuccess => '下载完成！';

  @override
  String get downloadError => '下载失败，请重试。';

  @override
  String get downloadLimitReachedTitle => '已达下载限制';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return '您已达到下载限制（$limit 次）。观看短广告获得额外 5 次下载机会。';
  }

  @override
  String get watchAd => '观看广告';

  @override
  String get cancel => '取消';

  @override
  String get photosTab => '图片';

  @override
  String get videosTab => '视频';

  @override
  String get musicTab => '音乐';

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
  String get settingsThemeSystem => '跟随系统';

  @override
  String get settingsClaimMoreDownloads => '获得 5 次额外下载';

  @override
  String get settingsClaimSuccess => '成功！您获得了 5 次额外下载。';

  @override
  String get settingsClaimError => '加载广告失败，请稍后重试。';

  @override
  String get settingsPremium => '升级到高级版';

  @override
  String get settingsPremiumDescription => '移除广告并获得无限下载。';

  @override
  String get settingsRestorePurchase => '恢复购买';

  @override
  String get settingsRestoreSuccess => '购买恢复成功！';

  @override
  String get settingsRestoreError => '恢复购买失败。未找到有效订阅或发生错误。';

  @override
  String get settingsGeneralSection => '通用';

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
  String get settingsRateApp => '为此应用评分';

  @override
  String get settingsShareApp => '分享此应用';

  @override
  String get premiumUser => '高级用户';

  @override
  String get aboutTitle => '关于 TikTok 下载器';

  @override
  String get aboutContent => '此应用帮助您下载 TikTok 帖子中的公开视频、图片和音频。\n\n请尊重版权和隐私。仅下载您有权使用的内容。';

  @override
  String get contactTitle => '联系我们';

  @override
  String get contactNameHint => '您的姓名';

  @override
  String get contactEmailHint => '您的邮箱';

  @override
  String get contactMessageHint => '您的消息';

  @override
  String get contactSendButton => '发送消息';

  @override
  String get contactSending => '发送中...';

  @override
  String get contactSuccess => '消息发送成功！我们会尽快回复您。';

  @override
  String get contactError => '消息发送失败，请稍后重试。';

  @override
  String get permissionRequiredTitle => '需要权限';

  @override
  String get permissionStorageDenied => '需要存储权限以保存下载的文件。请在设置中授予权限。';

  @override
  String get permissionPhotosDenied => '需要照片权限以保存下载的文件（iOS）。请在设置中授予权限。';

  @override
  String get permissionNotificationDenied => '建议授予通知权限以接收下载进度更新。';

  @override
  String get permissiongoToSettings => '前往设置';

  @override
  String get ok => '确定';

  @override
  String get upgradeNow => '立即升级';

  @override
  String get chooseYourPlan => '选择您的套餐';

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
  String get bestValue => '最超值';

  @override
  String get selectPlanErrorTitle => '加载套餐出错';

  @override
  String get selectPlanErrorMessage => '无法加载订阅套餐。请检查网络连接后重试。';

  @override
  String get purchaseFailed => '购买失败';

  @override
  String get purchaseCancelled => '购买已取消';

  @override
  String get purchasePending => '购买待处理';

  @override
  String get purchaseSuccess => '购买成功！';

  @override
  String get alreadyPremium => '您已是高级用户。';

  @override
  String get getPremium => '获取高级版';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return '剩余下载次数：$currentLimit。您可通过观看广告获得免费下载';
  }

  @override
  String get unlockSaveVideoPro => '解锁高级功能';

  @override
  String get noAdsUnlockAllFeatures => '无广告并解锁所有功能';

  @override
  String get removeAds => '移除所有广告';

  @override
  String get tiktokDownloads => '无限下载 TikTok 高清视频、图片和音乐';

  @override
  String get instagramDownloads => '高质量无水印下载';

  @override
  String get lifetimePro => '终身高级版';

  @override
  String get yearlyPro => '年度高级版';

  @override
  String get monthlyPro => '月度高级版';

  @override
  String get weeklyPro => '周度高级版';

  @override
  String get onlyBuyOnce => '仅需购买一次';

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
  String get loadingPlans => '加载套餐中...';

  @override
  String get failedToLoadPlans => '加载套餐失败';

  @override
  String get retry => '重试';

  @override
  String freeTrialDays(int days) {
    return '$days 天免费试用';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks 周免费试用';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months 个月免费试用';
  }

  @override
  String get supportedPlatforms => '支持的平台';

  @override
  String get supportTiktok => '下载视频、图片、音乐';

  @override
  String get supportInstagram => '高质量无水印下载';

  @override
  String get playlistTab => '播放列表';

  @override
  String get authorsTab => '作者';

  @override
  String get createPlaylist => '创建播放列表';

  @override
  String get playlistTitle => '播放列表标题';

  @override
  String get playlistDescription => '描述';

  @override
  String get chooseFiles => '选择文件';

  @override
  String get createPlaylistButton => '创建播放列表';

  @override
  String get playlistTitleHint => '输入播放列表标题';

  @override
  String get playlistDescriptionHint => '输入播放列表描述（可选）';

  @override
  String get selectFiles => '选择要添加到播放列表的文件';

  @override
  String get noPlaylistsYet => '暂无播放列表';

  @override
  String get createFirstPlaylist => '创建您的第一个播放列表来整理下载内容';

  @override
  String get noAuthorsYet => '暂无作者';

  @override
  String get downloadSomethingFirst => '先下载一些内容，即可在此查看作者';

  @override
  String authorVideos(Object author) {
    return '$author 的视频';
  }

  @override
  String get noVideosFromAuthor => '此作者暂无视频';
}
