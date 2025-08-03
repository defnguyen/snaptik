import 'dart:io';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:snaptik/config/ad_config.dart';

class AdService {
  AppOpenAd? _appOpenAd;
  bool _isShowingAppOpenAd = false;
  DateTime? _appOpenLoadTime;
  final Duration _maxCacheDuration = const Duration(hours: 4); // AdMob policy

  InterstitialAd? _interstitialAd;
  int _interstitialLoadAttempts = 0;
  final int _maxInterstitialLoadAttempts = 3;

  RewardedAd? _rewardedAd;
  int _rewardedLoadAttempts = 0;
  final int _maxRewardedLoadAttempts = 3;

  bool _adsInitialized = false;

  // Call this early, e.g., in main()
  Future<void> initialize() async {
    if (_adsInitialized) return;
    await MobileAds.instance.initialize();
    // Use test IDs during development! Replace before release.
    MobileAds.instance.updateRequestConfiguration(
      RequestConfiguration(testDeviceIds: AdConfig.testDeviceIds),
    );
    _adsInitialized = true;
    print("AdMob Initialized");
  }

  // App Open Ad
  bool get isAppOpenAdAvailable {
    return _appOpenAd != null &&
        _appOpenLoadTime != null &&
        DateTime.now().difference(_appOpenLoadTime!) < _maxCacheDuration;
  }

  void loadAppOpenAd() {
    // Prevent loading if an ad is already loaded and not expired, or if showing
    if (isAppOpenAdAvailable || _isShowingAppOpenAd) {
      print("AppOpenAd: Already available or showing.");
      return;
    }
    print("AppOpenAd: Loading...");

    AppOpenAd.load(
      adUnitId: AdConfig.appOpenAdUnitId,
      request: const AdRequest(),
      // orientation: AppOpenAd.orientationPortrait, // Or landscape if needed
      adLoadCallback: AppOpenAdLoadCallback(
        onAdLoaded: (ad) {
          print('AppOpenAd: Loaded successfully.');
          _appOpenAd = ad;
          _appOpenLoadTime = DateTime.now();
        },
        onAdFailedToLoad: (error) {
          print('AppOpenAd: Failed to load: $error');
          _appOpenAd = null; // Ensure it's null on failure
        },
      ),
    );
  }

  void showAppOpenAd({required VoidCallback onAdDismissed}) {
    if (!isAppOpenAdAvailable) {
      print('AppOpenAd: Not available or expired. Cannot show.');
      onAdDismissed(); // Proceed without showing ad
      loadAppOpenAd(); // Try to load next one
      return;
    }
    if (_isShowingAppOpenAd) {
      print('AppOpenAd: Already showing.');
      return;
    }

    _appOpenAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) {
        print('AppOpenAd: Displayed.');
        _isShowingAppOpenAd = true;
      },
      onAdFailedToShowFullScreenContent: (ad, error) {
        print('AppOpenAd: Failed to show: $error');
        _isShowingAppOpenAd = false;
        ad.dispose();
        _appOpenAd = null;
        onAdDismissed(); // Proceed
        loadAppOpenAd(); // Try to load next one
      },
      onAdDismissedFullScreenContent: (ad) {
        print('AppOpenAd: Dismissed.');
        _isShowingAppOpenAd = false;
        ad.dispose();
        _appOpenAd = null;
        onAdDismissed(); // Callback to continue app flow
        loadAppOpenAd(); // Load the next ad
      },
    );

    _appOpenAd!.show();
  }

  // Banner Ad

  // Interstitial Ad
  void loadInterstitialAd() {
    if (_interstitialAd != null ||
        _interstitialLoadAttempts >= _maxInterstitialLoadAttempts) {
      print("InterstitialAd: Already loaded or max attempts reached.");
      return;
    }
    print("InterstitialAd: Loading...");
    _interstitialLoadAttempts++;

    InterstitialAd.load(
      adUnitId: AdConfig.interstitialAdUnitId,
      request: const AdRequest(),
      adLoadCallback: InterstitialAdLoadCallback(
        onAdLoaded: (ad) {
          print('InterstitialAd: Loaded successfully.');
          _interstitialAd = ad;
          _interstitialLoadAttempts = 0; // Reset attempts on success
        },
        onAdFailedToLoad: (error) {
          print(
              'InterstitialAd: Failed to load (attempt $_interstitialLoadAttempts): $error');
          _interstitialAd = null;
          // Optionally retry after a delay, but be careful not to spam requests
          // if (_interstitialLoadAttempts < _maxInterstitialLoadAttempts) {
          //   Future.delayed(Duration(seconds: 30), () => loadInterstitialAd());
          // }
        },
      ),
    );
  }

  void showInterstitialAd(
      {VoidCallback? onAdDismissed, VoidCallback? onAdFailedToShow}) {
    if (_interstitialAd == null) {
      print('InterstitialAd: Not ready. Trying to load.');
      loadInterstitialAd(); // Attempt to load for next time
      onAdFailedToShow?.call();
      return;
    }

    _interstitialAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) => print('InterstitialAd: Displayed.'),
      onAdFailedToShowFullScreenContent: (ad, error) {
        print('InterstitialAd: Failed to show: $error');
        ad.dispose();
        _interstitialAd = null;
        onAdFailedToShow?.call();
        loadInterstitialAd(); // Try to load next one
      },
      onAdDismissedFullScreenContent: (ad) {
        print('InterstitialAd: Dismissed.');
        ad.dispose();
        _interstitialAd = null;
        onAdDismissed?.call(); // Callback after dismissal
        loadInterstitialAd(); // Load the next ad
      },
    );

    _interstitialAd!.show();
  }

  // Native Ad

  // Rewarded Ad
  void loadRewardedAd() {
    if (_rewardedAd != null ||
        _rewardedLoadAttempts >= _maxRewardedLoadAttempts) {
      print("RewardedAd: Already loaded or max attempts reached.");
      return;
    }
    print("RewardedAd: Loading...");
    _rewardedLoadAttempts++;

    RewardedAd.load(
      adUnitId: AdConfig.rewardedAdUnitId,
      request: const AdRequest(),
      rewardedAdLoadCallback: RewardedAdLoadCallback(
        onAdLoaded: (ad) {
          print('RewardedAd: Loaded successfully.');
          _rewardedAd = ad;
          _rewardedLoadAttempts = 0; // Reset on success
        },
        onAdFailedToLoad: (error) {
          print(
              'RewardedAd: Failed to load (attempt $_rewardedLoadAttempts): $error');
          _rewardedAd = null;
          // Optionally retry
        },
      ),
    );
  }

  void showRewardedAd({
    required Function(RewardItem) onUserEarnedReward,
    VoidCallback? onAdDismissed,
    VoidCallback? onAdFailedToShow,
  }) {
    if (_rewardedAd == null) {
      print('RewardedAd: Not ready. Trying to load.');
      loadRewardedAd(); // Attempt load for next time
      onAdFailedToShow?.call(); // Indicate failure to show
      return;
    }

    _rewardedAd!.fullScreenContentCallback = FullScreenContentCallback(
      onAdShowedFullScreenContent: (ad) => print('RewardedAd: Displayed.'),
      onAdFailedToShowFullScreenContent: (ad, error) {
        print('RewardedAd: Failed to show: $error');
        ad.dispose();
        _rewardedAd = null;
        onAdFailedToShow?.call();
        loadRewardedAd(); // Try to load next one
      },
      onAdDismissedFullScreenContent: (ad) {
        print('RewardedAd: Dismissed.');
        ad.dispose();
        _rewardedAd = null;
        onAdDismissed?.call(); // Callback after dismissal (reward or not)
        loadRewardedAd(); // Load the next ad
      },
    );

    // Set the Server-Side Verification options if needed before showing
    // _rewardedAd?.setServerSideVerificationOptions(...);

    _rewardedAd!.show(
      onUserEarnedReward: (AdWithoutView ad, RewardItem reward) {
        print(
            'RewardedAd: User earned reward: ${reward.amount} ${reward.type}');
        onUserEarnedReward(reward); // Crucial callback for granting reward
      },
    );
  }

  // Dispose Ads (Optional but good practice)
  void disposeAllAds() {
    print("Disposing Ads");
    _appOpenAd?.dispose();
    _appOpenAd = null;
    _interstitialAd?.dispose();
    _interstitialAd = null;
    _rewardedAd?.dispose();
    _rewardedAd = null;
    // Native and Banner ads are usually disposed by their widgets
  }
}
