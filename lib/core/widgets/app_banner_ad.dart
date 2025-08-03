import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:snaptik/config/ad_config.dart';
import 'package:snaptik/core/services/ad_service.dart'; // Only needed if passing service, not needed if only ID used

class AppBannerAd extends StatefulWidget {
  // Pass the service if you manage loading state centrally,
  // otherwise, just use the AdConfig ID directly here.
  // final AdService adService;
  const AppBannerAd({super.key /*, required this.adService */});

  @override
  State<AppBannerAd> createState() => _AppBannerAdState();
}

class _AppBannerAdState extends State<AppBannerAd> {
  BannerAd? _bannerAd;
  bool _isLoaded = false;
  final AdSize _adSize = AdSize.banner; // Or AdSize.largeBanner, etc.

  @override
  void initState() {
    super.initState();
    _loadAd();
  }

  void _loadAd() {
    // Prevent loading if already loaded
    if (_isLoaded && _bannerAd != null) return;

    _bannerAd = BannerAd(
      adUnitId: AdConfig.bannerAdUnitId,
      request: const AdRequest(),
      size: _adSize,
      listener: BannerAdListener(
        onAdLoaded: (ad) {
          print('$BannerAd loaded.');
          setState(() {
            _isLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, err) {
          print('$BannerAd failed to load: $err');
          ad.dispose();
          _bannerAd = null; // Ensure bannerAd is null on failure
          setState(() {
            _isLoaded = false; // Ensure isLoaded is false
          });
          // Optional: Retry loading after a delay
          // Future.delayed(const Duration(seconds: 30), () {
          //   if (mounted) { // Check if widget is still in the tree
          //     _loadAd();
          //   }
          // });
        },
        onAdOpened: (ad) => print('$BannerAd opened.'),
        onAdClosed: (ad) => print('$BannerAd closed.'),
        onAdImpression: (ad) => print('$BannerAd impression.'),
      ),
    )..load();
  }

  @override
  void dispose() {
    _bannerAd?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // Use a Container as a placeholder for the ad's dimensions
    // Only display the AdWidget if the ad is loaded successfully
    if (_bannerAd != null && _isLoaded) {
      return Container(
        alignment: Alignment.center,
        width: _bannerAd!.size.width.toDouble(),
        height: _bannerAd!.size.height.toDouble(),
        child: AdWidget(ad: _bannerAd!),
      );
    } else {
      // Return an empty container or a placeholder if the ad isn't loaded
      // This prevents layout shifts if the ad fails to load.
      return SizedBox(
        width: _adSize.width.toDouble(),
        height: _adSize.height.toDouble(),
        // Optional: Show a placeholder color or text
        // child: Container(color: Colors.grey[300], child: Center(child: Text("Ad Loading..."))),
      );
    }
  }
}
