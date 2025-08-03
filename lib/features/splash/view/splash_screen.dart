import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:snaptik/core/widgets/app_lifecycle_reactor.dart';
import 'package:snaptik/features/home/view/home_screen.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:snaptik/features/subscription/view/subscription_screen.dart';
import 'package:flutter/services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initializeApp();
  }

  Future<void> _initializeAppAndNavigate() async {
    // Simulate essential app initialization or just wait for splash duration
    await Future.delayed(AppConstants.splashScreenDuration);

    if (!mounted) return;

    // Check clipboard for valid URLs on app startup
    await _checkInitialClipboard();

    final adService = context.read<AdService>();
    final isPremium = context.read<PremiumCubit>().state.isPremium;

    if (!isPremium && adService.isAppOpenAdAvailable) {
      print("SplashScreen: AppOpenAd is available, showing now.");
      adService.showAppOpenAd(onAdDismissed: _navigateToHome);
    } else {
      if (!isPremium) {
        print("SplashScreen: AppOpenAd not available or user is premium. Trying to load one for next time.");
        adService.loadAppOpenAd();
      }
      _navigateToHome();
    }
  }

  Future<void> _checkInitialClipboard() async {
    try {
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      if (clipboardData?.text != null) {
        final clipboardText = clipboardData!.text!.trim();
        if (_isValidUrl(clipboardText)) {
          ClipboardUrlNotifier.instance.notifyUrlFound(clipboardText);
        }
      }
    } catch (e) {
      print("Error checking clipboard on startup: $e");
    }
  }

  bool _isValidUrl(String url) {
    if (url.contains('threads.net') || url.contains('threads.com')) {
      return true; // Basic check for startup
    }
    if (url.contains('instagram.com')) {
      return url.contains('/p/') || url.contains('/reel/') || url.contains('/tv/');
    }
    return false;
  }

  Future<void> _initializeApp() async {
    // Simulate loading time or load essential data
    await Future.delayed(const Duration(seconds: 3)); // Simulate loading

    // Check premium status and try to show App Open Ad if applicable
    final adService = context.read<AdService>();
    final isPremium = context.read<PremiumCubit>().state.isPremium;

    if (!isPremium && adService.isAppOpenAdAvailable) {
      adService.showAppOpenAd(onAdDismissed: _navigateToHome);
    } else {
      _navigateToHome(); // Navigate directly if premium or ad not ready/failed
    }
  }

  void _navigateToHome() {
    if (mounted) {
      final isPremium = context.read<PremiumCubit>().state.isPremium;
      
      if (!isPremium) {
        // Show subscription screen first for non-premium users
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => const SubscriptionScreen(showCloseButton: true),
          ),
        );
      } else {
        // Go directly to home for premium users
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const HomeScreen()),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // This Flutter widget is mainly for the delay and ad logic.
    // The actual initial splash (logo appearing instantly) is handled
    // by flutter_native_splash.
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash_logo.png', height: 120),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)?.appTitle ?? AppConstants.appName,
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 30),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
