import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:snaptik/config/app_themes.dart';
import 'package:snaptik/core/blocs/locale/locale_cubit.dart';
import 'package:snaptik/core/blocs/theme/theme_cubit.dart';
import 'package:snaptik/features/splash/view/splash_screen.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:snaptik/navigation/app_router.dart';

class TikTokDownloaderApp extends StatelessWidget {
  const TikTokDownloaderApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Listen to locale changes
    final locale = context.watch<LocaleCubit>().state.locale;

    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, themeState) {
        return MaterialApp(
          title:
              'Instagram Threads Video Downloader',
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeState.themeMode,
          locale: locale,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales:
              AppLocalizations.supportedLocales,
          onGenerateRoute: AppRouter.onGenerateRoute,
          home: const SplashScreen(), // Start with Splash Screen
          debugShowCheckedModeBanner:
              false, // Remove debug banner for production
          // Use onGenerateTitle to ensure title updates with locale changes
          onGenerateTitle: (context) => AppLocalizations.of(context)!.appTitle,
        );
      },
    );
  }
}
