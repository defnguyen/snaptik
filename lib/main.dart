import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:snaptik/app.dart';
import 'package:snaptik/config/revenuecat_config.dart';
import 'package:snaptik/core/blocs/download_limit/download_limit_cubit.dart';
import 'package:snaptik/core/blocs/locale/locale_cubit.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/blocs/theme/theme_cubit.dart';
import 'package:snaptik/core/network/api_client.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:snaptik/core/services/local_storage_service.dart';
import 'package:snaptik/features/database/services/tiktok_results_service.dart';
import 'package:snaptik/features/playlist/services/playlist_service.dart';
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:snaptik/core/services/permission_service.dart';
import 'package:snaptik/core/services/purchase_service.dart';
import 'package:snaptik/core/widgets/app_lifecycle_reactor.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize SharedPreferences
  final prefs = await SharedPreferences.getInstance();
  final localStorageService = LocalStorageService(prefs);

  // Initialize Services (Order can matter)
  final apiClient = ApiClient(
      localStorageService: localStorageService);
  final permissionService = PermissionService();
  final mediaStorageService = MediaStorageService(prefs); // Uses prefs
  final tikTokResultsService = TikTokResultsService(prefs); // Uses prefs
  final playlistService = PlaylistService(prefs); // Uses prefs

  // Initialize AdMob
  final adService = AdService();
  await adService.initialize(); // Initialize AdMob SDK

  // Initialize RevenueCat
  final purchaseService = PurchaseService();
  await _configureRevenueCat(); // Configure RC

  // Initialize Core Cubits / Blocs
  final themeCubit = ThemeCubit(localStorageService)..loadTheme();
  final localeCubit = LocaleCubit(localStorageService)..loadLocale();
  final downloadLimitCubit = DownloadLimitCubit(localStorageService)
    ..loadLimit();
  final premiumCubit = PremiumCubit(purchaseService, localStorageService)
    ..checkPremiumStatus(); // Check initial status
  // Start listening for background purchase updates
  premiumCubit.listenToPurchaseUpdates();

  // Preload Ads
  // Load App Open Ad early if user is likely not premium yet
  if (!await purchaseService.isUserPremium()) {
    adService.loadAppOpenAd();
    adService.loadInterstitialAd(); // Preload other ads too
    adService.loadRewardedAd();
  } else {
    print("Main: User is premium. Skipping ad preloading.");
  }

  runApp(
    // Provide all essential services and blocs/cubits at the root
    MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: localStorageService),
        RepositoryProvider.value(value: apiClient),
        RepositoryProvider.value(value: permissionService),
        RepositoryProvider.value(value: mediaStorageService),
        RepositoryProvider.value(value: tikTokResultsService),
        RepositoryProvider.value(value: playlistService),
        RepositoryProvider.value(value: adService),
        RepositoryProvider.value(value: purchaseService),
        // DownloadService is often instantiated closer to where it's used (FileDownloadCubit)
        // or provided here if needed globally. It depends on Permission/MediaStorage.
        // RepositoryProvider(create: (_) => DownloadService(permissionService, mediaStorageService)),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(value: themeCubit),
          BlocProvider.value(value: localeCubit),
          BlocProvider.value(value: downloadLimitCubit),
          BlocProvider.value(value: premiumCubit),
          // Other Blocs specific to features will be provided lower down
          // e.g., DownloadBloc in DownloadTab, LibraryBloc in LibraryTab
        ],
        child: const AppLifecycleReactor(
          child: TikTokDownloaderApp(),
        ),
      ),
    ),
  );
}

Future<void> _configureRevenueCat() async {
  try {
    await Purchases.setLogLevel(LogLevel.debug); // Use debug only in dev
    // Ensure API keys are set correctly in RevenueCatConfig
    PurchasesConfiguration configuration = PurchasesConfiguration(
        (Platform.isIOS)
            ? RevenueCatConfig.appleApiKey
            : RevenueCatConfig.googleApiKey);
    await Purchases.configure(configuration);
    print("RevenueCat Configured Successfully.");
  } catch (e) {
    print("!!!!!!!!!! RevenueCat Configuration Failed !!!!!!!!!!");
    print(e);
  }
}
