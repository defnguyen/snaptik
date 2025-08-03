import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart'; // Add package_info_plus: ^4.0.0
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/blocs/download_limit/download_limit_cubit.dart';
import 'package:snaptik/core/blocs/locale/locale_cubit.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/blocs/theme/theme_cubit.dart';
import 'package:snaptik/core/services/ad_service.dart';
import 'package:snaptik/core/services/purchase_service.dart';
import 'package:snaptik/features/about/view/about_screen.dart';
import 'package:snaptik/features/contact/view/contact_screen.dart';
import 'package:snaptik/features/settings/widgets/subscription_options_modal.dart';
import 'package:snaptik/l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:snaptik/features/subscription/view/subscription_screen.dart';

class SettingsTab extends StatefulWidget {
  const SettingsTab({super.key});

  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  bool _isRewardLoading = false; // For reward ad button state
  String _appVersion = '';

  @override
  void initState() {
    super.initState();
    _loadAppVersion();
    // Load ads/offerings if needed when settings tab is entered
    context.read<AdService>().loadRewardedAd();
    // Optional: Pre-fetch offerings when settings are opened
    // context.read<PurchaseService>().fetchOfferings();
  }

  Future<void> _loadAppVersion() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      if (mounted) setState(() => _appVersion = packageInfo.version);
    } catch (e) {
      print("Error getting app version: $e");
      if (mounted) setState(() => _appVersion = 'N/A');
    }
  }

  // --- Actions ---

  void _changeLanguage(Locale locale) {
    context.read<LocaleCubit>().changeLocale(locale);
  }

  void _changeTheme(ThemeMode themeMode) {
    context.read<ThemeCubit>().changeTheme(themeMode);
  }

  // Helper method to get language name
  String _getLanguageName(Locale locale) {
    switch (locale.languageCode) {
      case 'ar':
        return 'العربية';
      case 'cs':
        return 'Čeština';
      case 'de':
        return 'Deutsch';
      case 'en':
        return 'English';
      case 'es':
        return 'Español';
      case 'fil':
        return 'Filipino';
      case 'fr':
        return 'Français';
      case 'hi':
        return 'हिन्दी';
      case 'id':
        return 'Bahasa Indonesia';
      case 'it':
        return 'Italiano';
      case 'ja':
        return '日本語';
      case 'ko':
        return '한국어';
      case 'nl':
        return 'Nederlands';
      case 'pt':
        return 'Português';
      case 'ru':
        return 'Русский';
      case 'sv':
        return 'Svenska';
      case 'th':
        return 'ไทย';
      case 'tr':
        return 'Türkçe';
      case 'uk':
        return 'Українська';
      case 'vi':
        return 'Tiếng Việt';
      case 'zh':
        return '中文';
      default:
        return locale.languageCode;
    }
  }

  // Helper method to get theme name
  String _getThemeName(ThemeMode themeMode, AppLocalizations l10n) {
    switch (themeMode) {
      case ThemeMode.light:
        return l10n.settingsThemeLight;
      case ThemeMode.dark:
        return l10n.settingsThemeDark;
      case ThemeMode.system:
        return l10n.settingsThemeSystem;
    }
  }



  void _showUpgradeModal() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (_) => const SubscriptionOptionsModal(),
    );
  }

  void _showSubscriptionScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const SubscriptionScreen(showCloseButton: true),
      ),
    );
  }

  void _restorePremium() {
    // Show loading indicator briefly? Or rely on Cubit state listener
    context.read<PremiumCubit>().restorePurchases();
    // Listen globally or here for feedback
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
          content: Text("Attempting to restore purchases..."),
          duration: Duration(seconds: 2)), // Localize
    );
  }

  void _rateApp() async {
    final url =
        Platform.isIOS ? AppConstants.appStoreUrl : AppConstants.playStoreUrl;
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      // Handle error - e.g., show snackbar
      print("Could not launch store URL: $url");
    }
  }

  void _shareApp() {
    final l10n = AppLocalizations.of(context)!;
    final String appUrl = Platform.isIOS
        ? AppConstants.appStoreUrl
        : 'https://play.google.com/store/apps/details?id=com.snaptik.tiktok.downloader'; // TODO: Replace package name
    final String shareText =
        "Check out ${AppConstants.appName} to download Threads media!\n$appUrl"; // Localize
    Share.share(shareText);
  }

  void _navigateToAbout() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const AboutScreen()));
  }

  void _navigateToContact() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const ContactScreen()));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final currentLocale = context.watch<LocaleCubit>().state.locale;
    final currentTheme = context.watch<ThemeCubit>().state.themeMode;

    return BlocListener<PremiumCubit, PremiumState>(
      listener: (context, state) {
        if (state is PremiumOperationSuccess &&
            state.message != null &&
            state.message!.contains("restored")) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
                content: Text(l10n.settingsRestoreSuccess),
                backgroundColor: Colors.green),
          );
        } else if (state is PremiumOperationFailure) {
          // If a failure occurs *after* the user likely tapped restore, show restore error.
          // This is heuristic. A dedicated RestoreFailedState would be better.
          // Let's check if the error message contains 'restore' as a hint.
          if (state.error.toLowerCase().contains("restore")) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(l10n.settingsRestoreError),
                  backgroundColor: Colors.orange),
            );
          }
          // Note: Purchase failures are handled primarily by the modal listener now.
          // This listener might still catch general purchase errors if they happen outside the modal flow.
        }
        // Purchase success/failure is handled by the modal's listener now
      },
      child: Scaffold(
        // Use Scaffold only if SettingsTab needs its own AppBar, otherwise remove
        // appBar: AppBar(title: Text(l10n.settingsTab)), // Example if needed
        body: ListView(
          padding: const EdgeInsets.symmetric(
              vertical: AppConstants.defaultPadding /
                  2), // Reduced top/bottom padding
          children: [
            // --- Premium Section (Shows status or upgrade button) ---
            BlocBuilder<PremiumCubit, PremiumState>(
              builder: (context, premiumState) {
                if (premiumState.isPremium) {
                  return ListTile(
                    leading: const Icon(Icons.workspace_premium,
                        color: Colors.amber),
                    title: Text(l10n.premiumUser),
                    subtitle: const Text(
                        "Ads removed, unlimited downloads."), // Localize
                  );
                } else {
                  // Show simplified Upgrade Button/Tile here
                  return _buildPremiumSection(
                      context, l10n); // Use new button method
                }
              },
            ),

            const Divider(),

            // --- General Settings ---
            _buildSectionHeader(context, l10n.settingsGeneralSection),
            _buildLanguageSetting(context, l10n, currentLocale),
            _buildThemeSetting(context, l10n, currentTheme),



            const Divider(),

            // --- Account/Purchase Section ---
            _buildSectionHeader(context, l10n.settingsAccountSection),
            // Restore button is always relevant if using RC
            _buildRestoreSetting(context, l10n),

            const Divider(),

            // --- Support & Feedback ---
            _buildSectionHeader(context, l10n.settingsSupportSection),
            ListTile(
              leading: const Icon(Icons.info_outline),
              title: Text(l10n.settingsAbout),
              subtitle:
                  _appVersion.isNotEmpty ? Text("Version $_appVersion") : null,
              onTap: _navigateToAbout,
            ),
            ListTile(
              leading: const Icon(Icons.contact_mail_outlined),
              title: Text(l10n.settingsContact),
              onTap: _navigateToContact,
            ),
            ListTile(
              leading: const Icon(Icons.star_outline),
              title: Text(l10n.settingsRateApp),
              onTap: _rateApp,
            ),
            ListTile(
              leading: const Icon(Icons.share_outlined),
              title: Text(l10n.settingsShareApp),
              onTap: _shareApp,
            ),
            const SizedBox(height: 20), // Add padding at the bottom
          ],
        ),
      ),
    );
  }

  Widget _buildPremiumSection(BuildContext context, AppLocalizations l10n) {
    return Container(
      // Add some vertical margin if needed, adjust horizontal as well
      margin: const EdgeInsets.symmetric(
          horizontal: AppConstants.defaultPadding / 2, vertical: 8),
      padding: const EdgeInsets.all(AppConstants.defaultPadding),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.deepPurple.shade400,
              Colors.purple.shade500
            ], // Adjust colors as desired
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(AppConstants.defaultRadius),
          boxShadow: [
            // Optional subtle shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.15),
              blurRadius: 6,
              offset: const Offset(0, 3),
            )
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.settingsPremium, // "Upgrade to Premium"
            style: const TextStyle(
                fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(height: 8),
          Text(
            l10n.settingsPremiumDescription, // "Remove ads..."
            style: TextStyle(color: Colors.white.withOpacity(0.9)),
          ),
          const SizedBox(height: 16), // More space before button
          // --- This Button now opens the modal ---
          ElevatedButton.icon(
            icon: const Icon(Icons
                .workspace_premium_outlined), // Keep icon color default or customize
            // Use a specific text like "View Plans" or keep "Upgrade Now"
            label: Text(l10n.upgradeNow),
            //onPressed: _showUpgradeModal,
            onPressed: _showSubscriptionScreen,
            style: ElevatedButton.styleFrom(
              backgroundColor:
                  Colors.white, // White button stands out on gradient
              foregroundColor: Colors
                  .deepPurple.shade700, // Text color matching theme accent
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                    AppConstants.defaultRadius * 3), // Pill shape
              ),
            ),
          ),
          // REMOVE any loading indicator logic that might have been here previously
        ],
      ),
    );
  }

  Widget _buildSectionHeader(BuildContext context, String title) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 16.0, right: 16.0, top: 16.0, bottom: 8.0),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          color: Theme.of(context).colorScheme.primary,
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
    );
  }

  // Premium Button/Tile for non-premium users
  Widget _buildPremiumSectionButton(
      BuildContext context, AppLocalizations l10n) {
    return ListTile(
      leading:
          const Icon(Icons.workspace_premium_outlined, color: Colors.amber),
      title: Text(l10n.settingsPremium),
      subtitle: Text(l10n.settingsPremiumDescription),
      trailing: const Icon(Icons.chevron_right),
      onTap: _showSubscriptionScreen, // Opens the subscription screen
      // Optional: Add some visual distinction (e.g., background color)
      // tileColor: Theme.of(context).colorScheme.secondaryContainer.withOpacity(0.3),
    );
  }

  Widget _buildLanguageSetting(
      BuildContext context, AppLocalizations l10n, Locale currentLocale) {
    return ListTile(
      leading: const Icon(Icons.language),
      title: Text(l10n.settingsLanguage),
      subtitle: Text(_getLanguageName(currentLocale)),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => _showLanguageBottomSheet(context, l10n, currentLocale),
    );
  }

  Widget _buildThemeSetting(
      BuildContext context, AppLocalizations l10n, ThemeMode currentTheme) {
    return ListTile(
      leading: const Icon(Icons.brightness_6_outlined),
      title: Text(l10n.settingsTheme),
      subtitle: Text(_getThemeName(currentTheme, l10n)),
      trailing: const Icon(Icons.chevron_right),
      onTap: () => _showThemeBottomSheet(context, l10n, currentTheme),
    );
  }



  Widget _buildRestoreSetting(BuildContext context, AppLocalizations l10n) {
    // Removed local loading state, rely on global listener or brief message
    return ListTile(
      leading: const Icon(Icons.restore),
      title: Text(l10n.settingsRestorePurchase),
      trailing: const Icon(Icons.chevron_right),
      onTap: _restorePremium,
    );
  }

  Widget _buildAboutTile(BuildContext context, AppLocalizations l10n) {
    return ListTile(
      leading: const Icon(Icons.info_outline),
      title: Text(l10n.settingsAbout),
      subtitle: _appVersion.isNotEmpty ? Text("Version $_appVersion") : null,
      trailing: const Icon(Icons.chevron_right),
      onTap: _navigateToAbout,
    );
  }

  Widget _buildContactTile(BuildContext context, AppLocalizations l10n) {
    return ListTile(
      leading: const Icon(Icons.contact_mail_outlined),
      title: Text(l10n.settingsContact),
      trailing: const Icon(Icons.chevron_right),
      onTap: _navigateToContact,
    );
  }

  Widget _buildRateTile(BuildContext context, AppLocalizations l10n) {
    return ListTile(
      leading: const Icon(Icons.star_outline),
      title: Text(l10n.settingsRateApp),
      trailing: const Icon(Icons.chevron_right),
      onTap: _rateApp,
    );
  }

  Widget _buildShareTile(BuildContext context, AppLocalizations l10n) {
    return ListTile(
      leading: const Icon(Icons.share_outlined),
      title: Text(l10n.settingsShareApp),
      trailing: const Icon(Icons.chevron_right),
      onTap: _shareApp,
    );
  }

  // Bottom sheet for language selection
  void _showLanguageBottomSheet(BuildContext context, AppLocalizations l10n, Locale currentLocale) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        height: MediaQuery.of(context).size.height * 0.7, // 70% of screen height (30% from top)
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              l10n.settingsLanguage,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // Scrollable language options
            Expanded(
              child: ListView.builder(
                itemCount: AppLocalizations.supportedLocales.length,
                itemBuilder: (context, index) {
                  final locale = AppLocalizations.supportedLocales[index];
                  final isSelected = locale == currentLocale;
                  return ListTile(
                    title: Text(_getLanguageName(locale)),
                    trailing: isSelected ? const Icon(Icons.check, color: Colors.green) : null,
                    onTap: () {
                      _changeLanguage(locale);
                      Navigator.pop(context);
                    },
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  // Bottom sheet for theme selection
  void _showThemeBottomSheet(BuildContext context, AppLocalizations l10n, ThemeMode currentTheme) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      builder: (context) => Container(
        padding: const EdgeInsets.all(24),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Drag handle
            Center(
              child: Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Theme.of(context).dividerColor,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ),
            Text(
              l10n.settingsTheme,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            // Theme options
            ...[ThemeMode.light, ThemeMode.dark, ThemeMode.system].map((themeMode) {
              final isSelected = themeMode == currentTheme;
              return ListTile(
                leading: Icon(_getThemeIcon(themeMode)),
                title: Text(_getThemeName(themeMode, l10n)),
                trailing: isSelected ? const Icon(Icons.check, color: Colors.green) : null,
                onTap: () {
                  _changeTheme(themeMode);
                  Navigator.pop(context);
                },
              );
            }),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }

  // Helper method to get theme icon
  IconData _getThemeIcon(ThemeMode themeMode) {
    switch (themeMode) {
      case ThemeMode.light:
        return Icons.light_mode;
      case ThemeMode.dark:
        return Icons.dark_mode;
      case ThemeMode.system:
        return Icons.brightness_auto;
    }
  }
}
