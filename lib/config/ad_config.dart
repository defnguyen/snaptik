import 'dart:io' show Platform;

class AdConfig {
  static const String _androidAppOpenAdId =
      'ca-app-pub-3940256099942544/9257395921'; // Test ID
  static const String _iosAppOpenAdId =
      ''; // Test ID

  static const String _androidBannerAdId =
      'ca-app-pub-3940256099942544/9214589741'; // Test ID
  static const String _iosBannerAdId =
      ''; // Test ID

  static const String _androidInterstitialAdId =
      'ca-app-pub-3940256099942544/1033173712'; // Test ID
  static const String _iosInterstitialAdId =
      ''; // Test ID

  static const String _androidNativeAdId =
      'ca-app-pub-3940256099942544/2247696110'; // Test ID
  static const String _iosNativeAdId =
      ''; // Test ID

  static const String _androidRewardedAdId =
      'ca-app-pub-3940256099942544/5224354917'; // Test ID
  static const String _iosRewardedAdId =
      ''; // Test ID

  // static const String _androidAppOpenAdId =
  //     'ca-app-pub-5525634935377815/8634706904';
  // static const String _iosAppOpenAdId = '';

  // static const String _androidBannerAdId =
  //     'ca-app-pub-5525634935377815/7581288766';
  // static const String _iosBannerAdId = '';

  // static const String _androidInterstitialAdId =
  //     'ca-app-pub-5525634935377815/3717231229';
  // static const String _iosInterstitialAdId = '';

  // static const String _androidNativeAdId =
  //     'ca-app-pub-5525634935377815/8770939282';
  // static const String _iosNativeAdId = '';

  // static const String _androidRewardedAdId =
  //     'ca-app-pub-5525634935377815/8107902373';
  // static const String _iosRewardedAdId = '';

  // --- Test Device IDs ---
  static const List<String> testDeviceIds = [
    '50D7A744C54639B6279A21452FAEF15D',
    '434C49E993E74DDCA28D1931B25E7671',
    '6D1A34D3E33FC9412CFCFA381C7010A7',
    '4173AE5C847D4E496572BFC4C4E8D52B',
  ];

  static String get appOpenAdUnitId {
    if (Platform.isAndroid) {
      return _androidAppOpenAdId;
    } else if (Platform.isIOS) {
      return _iosAppOpenAdId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return _androidBannerAdId;
    } else if (Platform.isIOS) {
      return _iosBannerAdId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get interstitialAdUnitId {
    if (Platform.isAndroid) {
      return _androidInterstitialAdId;
    } else if (Platform.isIOS) {
      return _iosInterstitialAdId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get nativeAdUnitId {
    if (Platform.isAndroid) {
      return _androidNativeAdId;
    } else if (Platform.isIOS) {
      return _iosNativeAdId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }

  static String get rewardedAdUnitId {
    if (Platform.isAndroid) {
      return _androidRewardedAdId;
    } else if (Platform.isIOS) {
      return _iosRewardedAdId;
    } else {
      throw UnsupportedError('Unsupported platform');
    }
  }
}
