import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/helpers/url_validator.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:flutter/services.dart';

class AppLifecycleReactor extends StatefulWidget {
  final Widget child;
  const AppLifecycleReactor({super.key, required this.child});

  @override
  State<AppLifecycleReactor> createState() => _AppLifecycleReactorState();
}

class _AppLifecycleReactorState extends State<AppLifecycleReactor>
    with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    print("AppLifecycleReactor: Initialized and observing lifecycle changes.");
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    print("AppLifecycleReactor: Disposed.");
    super.dispose();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print("AppLifecycleReactor: App lifecycle state changed to $state");

    // Check clipboard and handle ads on RESUME
    if (state == AppLifecycleState.resumed) {
      _handleAppResume();
    }
  }

  Future<void> _handleAppResume() async {
    // Check clipboard for valid URLs
    await _checkAndFillClipboard();
    
    // Handle ads
    final adService = context.read<AdService>();
    final isPremium = context.read<PremiumCubit>().state.isPremium;

    if (!isPremium) {
      print("AppLifecycleReactor: App resumed. Attempting to show AppOpenAd.");
      if (adService.isAppOpenAdAvailable) {
        adService.showAppOpenAd(onAdDismissed: () {
          print("AppLifecycleReactor: AppOpenAd (on resume) dismissed.");
        });
      } else {
        print("AppLifecycleReactor: AppOpenAd not available on resume. Loading one for next time.");
        adService.loadAppOpenAd();
      }
    } else {
      print("AppLifecycleReactor: App resumed. User is premium, not showing AppOpenAd.");
    }
  }

  Future<void> _checkAndFillClipboard() async {
    try {
      final clipboardData = await Clipboard.getData(Clipboard.kTextPlain);
      if (clipboardData?.text != null) {
        final clipboardText = clipboardData!.text!.trim();
        
        // Check if it's a valid Threads or Instagram URL
        if (_isValidUrl(clipboardText)) {
          // Notify the download tab to fill the URL
          _notifyUrlFound(clipboardText);
        }
      }
    } catch (e) {
      print("Error reading clipboard: $e");
    }
  }

  bool _isValidUrl(String url) {
    // Check for TikTok URLs
    if (url.contains('tiktok.com')) {
      return UrlValidator.validateTikTokUrl(url, true) == null; // Allow all for premium check
    }

    return false;
  }

  void _notifyUrlFound(String url) {
    // Use a global event or callback to notify the download tab
    ClipboardUrlNotifier.instance.notifyUrlFound(url);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}

// Singleton to handle clipboard URL notifications
class ClipboardUrlNotifier {
  static final ClipboardUrlNotifier _instance = ClipboardUrlNotifier._internal();
  static ClipboardUrlNotifier get instance => _instance;
  ClipboardUrlNotifier._internal();

  Function(String)? _onUrlFound;

  void setListener(Function(String) onUrlFound) {
    _onUrlFound = onUrlFound;
  }

  void notifyUrlFound(String url) {
    _onUrlFound?.call(url);
  }

  void removeListener() {
    _onUrlFound = null;
  }
}
