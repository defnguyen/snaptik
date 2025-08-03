// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Threads 비디오 다운로더';

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
  String get enterThreadsUrl => 'Threads/Instagram URL 입력';

  @override
  String get howToUseTitle => '사용 방법:';

  @override
  String get howToUseStep1 => '1. Threads를 열고 다운로드하려는 게시물을 찾으세요.';

  @override
  String get howToUseStep2 => '2. 게시물 아래의 \'공유\' 아이콘을 탭하세요.';

  @override
  String get howToUseStep3 => '3. \'링크 복사\'를 선택하세요.';

  @override
  String get howToUseStep4 => '4. 위의 입력 필드에 링크를 붙여넣고 \'다운로드\'를 탭하세요.';

  @override
  String get invalidUrlError => '잘못된 Threads URL 형식입니다.';

  @override
  String get fetchingMedia => '미디어 가져오는 중...';

  @override
  String get downloadPhoto => '사진 다운로드';

  @override
  String get downloadVideo => '비디오 다운로드';

  @override
  String get downloadVoice => '음성 다운로드';

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
    return '다운로드 한도($limit회)에 도달했습니다. 짧은 광고를 시청하여 5회 더 다운로드할 수 있습니다.';
  }

  @override
  String get watchAd => '광고 시청';

  @override
  String get cancel => '취소';

  @override
  String get photosTab => '사진';

  @override
  String get videosTab => '비디오';

  @override
  String get voiceTab => '음성';

  @override
  String get view => '보기';

  @override
  String get info => '정보';

  @override
  String get rename => '이름 변경';

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
  String get renameMediaTitle => '미디어 이름 변경';

  @override
  String get enterNewName => '새 이름 입력';

  @override
  String get save => '저장';

  @override
  String get deleteConfirmationTitle => '삭제 확인';

  @override
  String get deleteConfirmationMessage => '이 파일을 삭제하시겠습니까? 이 작업은 취소할 수 없습니다.';

  @override
  String get confirm => '확인';

  @override
  String get settingsLanguage => '언어';

  @override
  String get settingsTheme => '테마';

  @override
  String get settingsThemeLight => '라이트';

  @override
  String get settingsThemeDark => '다크';

  @override
  String get settingsThemeSystem => '시스템';

  @override
  String get settingsClaimMoreDownloads => '5회 더 다운로드 받기';

  @override
  String get settingsClaimSuccess => '성공! 5회 더 다운로드할 수 있습니다.';

  @override
  String get settingsClaimError => '광고 로드에 실패했습니다. 나중에 다시 시도해 주세요.';

  @override
  String get settingsPremium => '프리미엄으로 업그레이드';

  @override
  String get settingsPremiumDescription => '광고 제거 및 무제한 다운로드 이용.';

  @override
  String get settingsRestorePurchase => '구매 복원';

  @override
  String get settingsRestoreSuccess => '구매가 성공적으로 복원되었습니다!';

  @override
  String get settingsRestoreError => '구매 복원에 실패했습니다. 활성 구독을 찾을 수 없거나 오류가 발생했습니다.';

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
  String get settingsRateApp => '앱 평가하기';

  @override
  String get settingsShareApp => '앱 공유하기';

  @override
  String get premiumUser => '프리미엄 사용자';

  @override
  String get aboutTitle => 'Threads 다운로더 정보';

  @override
  String get aboutContent => '이 앱은 Threads 게시물에서 공개 사진, 비디오 및 음성 메모를 다운로드하는 데 도움을 줍니다.\n\n저작권과 개인 정보를 존중해 주세요. 사용 권한이 있는 콘텐츠만 다운로드하세요.';

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
  String get contactSuccess => '메시지가 성공적으로 전송되었습니다! 곧 연락드리겠습니다.';

  @override
  String get contactError => '메시지 전송에 실패했습니다. 나중에 다시 시도해 주세요.';

  @override
  String get permissionRequiredTitle => '권한 필요';

  @override
  String get permissionStorageDenied => '다운로드한 파일을 저장하려면 저장소 권한이 필요합니다. 설정에서 권한을 부여해 주세요.';

  @override
  String get permissionPhotosDenied => '다운로드한 파일을 저장하려면 사진 권한이 필요합니다 (iOS). 설정에서 권한을 부여해 주세요.';

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
    return '$percent% 절약';
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
  String get unlockSaveVideoPro => '프리미엄 기능 잠금 해제';

  @override
  String get noAdsUnlockAllFeatures => '광고 없음 및 모든 기능 잠금 해제';

  @override
  String get removeAds => '모든 광고 제거';

  @override
  String get threadsDownloads => 'Threads에서 동영상, 사진, 음성 메시지 무제한 HD 다운로드';

  @override
  String get instagramDownloads => 'Instagram에서 동영상, 사진, 릴, 스토리, 전체 프로필 무제한 HD 다운로드';

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
  String get loadingPlans => '요금제 로딩 중...';

  @override
  String get failedToLoadPlans => '요금제 로딩 실패';

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
  String get supportThreads => '동영상, 이미지, 음성 메모 다운로드';

  @override
  String get supportInstagram => '동영상, 이미지, Reels, Stories, 프로필 다운로드';

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
