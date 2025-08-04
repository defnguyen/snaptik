// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'TikTok 다운로더';

  @override
  String get homeTab => '홈';

  @override
  String get libraryTab => '라이브러리';

  @override
  String get settingsTab => '설정';

  @override
  String get pasteLink => '링크 붙여넣기';

  @override
  String get clear => '지우기';

  @override
  String get download => '다운로드';

  @override
  String get enterTiktokUrl => 'TikTok URL 입력';

  @override
  String get howToUseTitle => '사용 방법:';

  @override
  String get howToUseStep1 => '1. TikTok을 열고 다운로드하고 싶은 동영상을 찾으세요.';

  @override
  String get howToUseStep2 => '2. 동영상 오른쪽의 \'공유\' 아이콘을 탭하세요.';

  @override
  String get howToUseStep3 => '3. \'링크 복사\'를 선택하세요.';

  @override
  String get howToUseStep4 => '4. 위의 입력 필드에 링크를 붙여넣고 \'다운로드\'를 탭하세요.';

  @override
  String get invalidUrlError => '잘못된 TikTok URL 형식입니다.';

  @override
  String get fetchingMedia => '미디어 가져오는 중...';

  @override
  String get downloadPhoto => '사진 다운로드';

  @override
  String get downloadVideo => '동영상 다운로드';

  @override
  String get downloadVoice => '음악 다운로드';

  @override
  String get downloadMp3 => 'MP3 다운로드';

  @override
  String get downloading => '다운로드 중...';

  @override
  String get downloadSuccess => '다운로드 완료!';

  @override
  String get downloadError => '다운로드 실패. 다시 시도해 주세요.';

  @override
  String get downloadLimitReachedTitle => '다운로드 한도 도달';

  @override
  String downloadLimitReachedMessage(Object limit) {
    return '다운로드 한도에 도달했습니다 ($limit회). 짧은 광고를 시청하고 5회 다운로드 기회를 더 얻으세요.';
  }

  @override
  String get watchAd => '광고 시청';

  @override
  String get cancel => '취소';

  @override
  String get photosTab => '사진';

  @override
  String get videosTab => '동영상';

  @override
  String get musicTab => '음악';

  @override
  String get view => '보기';

  @override
  String get info => '정보';

  @override
  String get rename => '이름 바꾸기';

  @override
  String get share => '공유';

  @override
  String get delete => '삭제';

  @override
  String get mediaInfoTitle => '미디어 정보';

  @override
  String get fileName => '이름';

  @override
  String get filePath => '경로';

  @override
  String get dateAdded => '추가 날짜';

  @override
  String get fileSize => '크기';

  @override
  String get renameMediaTitle => '미디어 이름 바꾸기';

  @override
  String get enterNewName => '새 이름 입력';

  @override
  String get save => '저장';

  @override
  String get deleteConfirmationTitle => '삭제 확인';

  @override
  String get deleteConfirmationMessage => '이 파일을 삭제하시겠습니까? 이 작업은 되돌릴 수 없습니다.';

  @override
  String get confirm => '확인';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsTheme => '테마';

  @override
  String get settingsThemeLight => '밝음';

  @override
  String get settingsThemeDark => '어둠';

  @override
  String get settingsThemeSystem => '시스템';

  @override
  String get settingsClaimMoreDownloads => '5회 다운로드 더 받기';

  @override
  String get settingsClaimSuccess => '성공! 5회 다운로드가 더 있습니다.';

  @override
  String get settingsClaimError => '광고를 로드하지 못했습니다. 나중에 다시 시도해 주세요.';

  @override
  String get settingsPremium => '프리미엄으로 업그레이드';

  @override
  String get settingsPremiumDescription => '광고를 제거하고 무제한 다운로드를 받으세요.';

  @override
  String get settingsRestorePurchase => '구매 복원';

  @override
  String get settingsRestoreSuccess => '구매가 성공적으로 복원되었습니다!';

  @override
  String get settingsRestoreError => '구매를 복원하지 못했습니다. 활성 구독을 찾을 수 없거나 오류가 발생했습니다.';

  @override
  String get settingsGeneralSection => '일반';

  @override
  String get settingsDownloadsSection => '다운로드';

  @override
  String get settingsAccountSection => '계정';

  @override
  String get settingsSupportSection => '지원 및 피드백';

  @override
  String get settingsAbout => '정보';

  @override
  String get settingsContact => '문의하기';

  @override
  String get settingsRateApp => '이 앱 평가하기';

  @override
  String get settingsShareApp => '이 앱 공유하기';

  @override
  String get premiumUser => '프리미엄 사용자';

  @override
  String get aboutTitle => 'TikTok 다운로더 정보';

  @override
  String get aboutContent => '이 앱은 TikTok 게시물에서 공개 동영상, 사진, 오디오를 다운로드하는 데 도움을 줍니다.\n\n저작권과 개인정보를 존중해 주세요. 사용 권한이 있는 콘텐츠만 다운로드하세요.';

  @override
  String get contactTitle => '문의하기';

  @override
  String get contactNameHint => '이름';

  @override
  String get contactEmailHint => '이메일';

  @override
  String get contactMessageHint => '메시지';

  @override
  String get contactSendButton => '메시지 보내기';

  @override
  String get contactSending => '전송 중...';

  @override
  String get contactSuccess => '메시지를 성공적으로 보냈습니다! 곧 연락드리겠습니다.';

  @override
  String get contactError => '메시지를 보내지 못했습니다. 나중에 다시 시도해 주세요.';

  @override
  String get permissionRequiredTitle => '권한 필요';

  @override
  String get permissionStorageDenied => '다운로드한 파일을 저장하려면 저장소 권한이 필요합니다. 설정에서 권한을 허용해 주세요.';

  @override
  String get permissionPhotosDenied => '다운로드한 파일을 저장하려면 사진 권한이 필요합니다 (iOS). 설정에서 권한을 허용해 주세요.';

  @override
  String get permissionNotificationDenied => '다운로드 진행 상황 업데이트를 위해 알림 권한을 권장합니다.';

  @override
  String get permissiongoToSettings => '설정으로 이동';

  @override
  String get ok => '확인';

  @override
  String get upgradeNow => '지금 업그레이드';

  @override
  String get chooseYourPlan => '플랜 선택';

  @override
  String get planWeekly => '주간';

  @override
  String get planMonthly => '월간';

  @override
  String get planAnnually => '연간';

  @override
  String get planLifetime => '평생';

  @override
  String get oneTimePurchase => '일회성 구매';

  @override
  String savePercent(String percent) {
    return '$percent% 할인';
  }

  @override
  String get bestValue => '최고 가치';

  @override
  String get selectPlanErrorTitle => '플랜 로드 오류';

  @override
  String get selectPlanErrorMessage => '구독 플랜을 로드할 수 없습니다. 인터넷 연결을 확인하고 다시 시도해 주세요.';

  @override
  String get purchaseFailed => '구매 실패';

  @override
  String get purchaseCancelled => '구매 취소됨';

  @override
  String get purchasePending => '구매 대기 중';

  @override
  String get purchaseSuccess => '구매 성공!';

  @override
  String get alreadyPremium => '이미 프리미엄 사용자입니다.';

  @override
  String get getPremium => '프리미엄 받기';

  @override
  String downloadsRemainingMessage(Object currentLimit) {
    return '남은 다운로드: $currentLimit. 광고를 시청하여 무료 다운로드를 받을 수 있습니다';
  }

  @override
  String get unlockSaveVideoPro => '프리미엄 기능 잠금해제';

  @override
  String get noAdsUnlockAllFeatures => '광고 없음 및 모든 기능 잠금해제';

  @override
  String get removeAds => '모든 광고 제거';

  @override
  String get tiktokDownloads => 'TikTok에서 동영상, 사진, 음악의 무제한 HD 다운로드';

  @override
  String get instagramDownloads => '워터마크 없는 고품질 다운로드';

  @override
  String get lifetimePro => '평생 프로';

  @override
  String get yearlyPro => '연간 프로';

  @override
  String get monthlyPro => '월간 프로';

  @override
  String get weeklyPro => '주간 프로';

  @override
  String get onlyBuyOnce => '한 번만 구매';

  @override
  String get perYear => '/년';

  @override
  String get perMonth => '/월';

  @override
  String get perWeek => '/주';

  @override
  String get mostPopular => '가장 인기';

  @override
  String get buyNow => '지금 구매';

  @override
  String get termsOfUse => '이용 약관';

  @override
  String get privacyPolicy => '개인정보 처리방침';

  @override
  String get loadingPlans => '플랜 로딩 중...';

  @override
  String get failedToLoadPlans => '플랜 로드 실패';

  @override
  String get retry => '다시 시도';

  @override
  String freeTrialDays(int days) {
    return '$days일 무료 체험';
  }

  @override
  String freeTrialWeeks(int weeks) {
    return '$weeks주 무료 체험';
  }

  @override
  String freeTrialMonths(int months) {
    return '$months개월 무료 체험';
  }

  @override
  String get supportedPlatforms => '지원 플랫폼';

  @override
  String get supportTiktok => '동영상, 이미지, 음악 다운로드';

  @override
  String get supportInstagram => '워터마크 없는 고품질 다운로드';

  @override
  String get playlistTab => '재생목록';

  @override
  String get authorsTab => '작성자';

  @override
  String get createPlaylist => '재생목록 만들기';

  @override
  String get playlistTitle => '재생목록 제목';

  @override
  String get playlistDescription => '설명';

  @override
  String get chooseFiles => '파일 선택';

  @override
  String get createPlaylistButton => '재생목록 만들기';

  @override
  String get playlistTitleHint => '재생목록 제목 입력';

  @override
  String get playlistDescriptionHint => '재생목록 설명 입력 (선택사항)';

  @override
  String get selectFiles => '재생목록에 추가할 파일 선택';

  @override
  String get noPlaylistsYet => '재생목록이 아직 없습니다';

  @override
  String get createFirstPlaylist => '다운로드를 정리하기 위해 첫 번째 재생목록을 만드세요';

  @override
  String get noAuthorsYet => '작성자가 아직 없습니다';

  @override
  String get downloadSomethingFirst => '여기서 작성자를 보려면 먼저 콘텐츠를 다운로드하세요';

  @override
  String authorVideos(Object author) {
    return '$author의 동영상';
  }

  @override
  String get noVideosFromAuthor => '이 작성자의 동영상이 아직 없습니다';
}
