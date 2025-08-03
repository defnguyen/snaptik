import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:snaptik/config/ad_config.dart';

class AppNativeAd extends StatefulWidget {
  const AppNativeAd({super.key});

  @override
  State<AppNativeAd> createState() => _AppNativeAdState();
}

class _AppNativeAdState extends State<AppNativeAd> {
  NativeAd? _nativeAd;
  bool _nativeAdIsLoaded = false;
  static const platform = MethodChannel('native_ad_channel');

  @override
  void initState() {
    super.initState();
    loadAd();
  }

  @override
  void dispose() {
    _nativeAd?.dispose();
    super.dispose();
  }

  void loadAd() {
    if (_nativeAdIsLoaded && _nativeAd != null) return;

    _nativeAd = NativeAd(
      adUnitId: AdConfig.nativeAdUnitId,
      factoryId: 'customNativeAd', // Custom factory ID
      listener: NativeAdListener(
        onAdLoaded: (ad) {
          print('Custom NativeAd loaded.');
          setState(() {
            _nativeAdIsLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          print('Custom NativeAd failed to load: $error');
          ad.dispose();
          _nativeAd = null;
          setState(() {
            _nativeAdIsLoaded = false;
          });
        },
        onAdClicked: (ad) => print('Custom NativeAd clicked.'),
        onAdImpression: (ad) => print('Custom NativeAd impression.'),
        onAdClosed: (ad) => print('Custom NativeAd closed.'),
        onAdOpened: (ad) => print('Custom NativeAd opened.'),
        onAdWillDismissScreen: (ad) => print('Custom NativeAd will dismiss screen.'),
        onPaidEvent: (ad, valueMicros, precision, currencyCode) {},
      ),
      request: const AdRequest(),
    )..load();
  }

  @override
  Widget build(BuildContext context) {
    if (_nativeAdIsLoaded && _nativeAd != null) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
        height: 220,
        child: AdWidget(ad: _nativeAd!),
      );
    } else {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 6.0),
        height: 100,
        decoration: BoxDecoration(
          color: Colors.grey[100],
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(strokeWidth: 2),
          ),
        ),
      );
    }
  }
}
