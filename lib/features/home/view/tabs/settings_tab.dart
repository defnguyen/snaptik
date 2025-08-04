import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:package_info_plus/package_info_plus.dart'; // Add package_info_plus: ^4.0.0
import 'package:purchases_flutter/purchases_flutter.dart';
import 'package:share_plus/share_plus.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/config/app_themes.dart';
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
        : 'https://play.google.com/store/apps/details?id=com.snapvids.threads.video.downloader'; // TODO: Replace package name
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

  void _launchUrl(String url) async {
    if (await canLaunchUrl(Uri.parse(url))) {
      await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication);
    } else {
      print("Could not launch URL: $url");
    }
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
        }
      },
      child: Scaffold(
        appBar: null,
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            // Account Section
            _buildSectionTitle(l10n.settingsAccountSection),
            _buildInfoCard(context, l10n, l10n.settingsRestorePurchase, Icons.restore, AppThemes.primaryColor, _restorePremium),
            
            const SizedBox(height: 20),
            
            // Language Section
            _buildSectionTitle(l10n.settingsLanguage),
            _buildLanguageCard(context, l10n, currentLocale),
            
            const SizedBox(height: 20),
            
            // Theme Section
            _buildSectionTitle(l10n.settingsTheme),
            _buildThemeCard(context, l10n, currentTheme),
            
            const SizedBox(height: 20),
            
            // Information Section
            _buildSectionTitle(l10n.settingsSupportSection),
            _buildInfoCard(context, l10n, l10n.aboutTitle, Icons.help_outline, AppThemes.primaryColor, _navigateToAbout),
            _buildInfoCard(context, l10n, l10n.settingsContact, Icons.contact_support_outlined, AppThemes.primaryColor, _navigateToContact),
            _buildInfoCard(context, l10n, l10n.privacyPolicy, Icons.shield_outlined, AppThemes.primaryColor, () => _launchUrl(AppConstants.privacyPolicyUrl)),
            _buildInfoCard(context, l10n, l10n.termsOfUse, Icons.description_outlined, AppThemes.primaryColor, () => _launchUrl(AppConstants.termsOfServiceUrl)),
            
            const SizedBox(height: 20),
            
            // Rate us Section
            _buildSectionTitle(l10n.settingsRateApp),
            _buildInfoCard(context, l10n, l10n.settingsShareApp, Icons.share_outlined, AppThemes.primaryColor, _shareApp),
            
            const SizedBox(height: 100), // Bottom padding for navigation
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12, top: 8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.grey[600],
        ),
      ),
    );
  }

  Widget _buildTrendsCard(BuildContext context, AppLocalizations l10n) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppThemes.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(Icons.trending_up, color: AppThemes.primaryColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              'Trends',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Icon(Icons.chevron_right, color: Colors.grey[400]),
        ],
      ),
    );
  }

  Widget _buildLanguageCard(BuildContext context, AppLocalizations l10n, Locale currentLocale) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: () => _showLanguageBottomSheet(context, l10n, currentLocale),
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: AppThemes.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(Icons.language, color: AppThemes.primaryColor, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                _getLanguageName(currentLocale),
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey[400]),
          ],
        ),
      ),
    );
  }

  Widget _buildThemeCard(BuildContext context, AppLocalizations l10n, ThemeMode currentTheme) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: AppThemes.primaryColor.withOpacity(0.1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(_getThemeIcon(currentTheme), color: AppThemes.primaryColor, size: 20),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              _getThemeName(currentTheme, l10n),
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
            ),
          ),
          Row(
            children: [
              _buildThemeToggle(Icons.light_mode, currentTheme == ThemeMode.light, () => _changeTheme(ThemeMode.light)),
              const SizedBox(width: 8),
              _buildThemeToggle(Icons.dark_mode, currentTheme == ThemeMode.dark, () => _changeTheme(ThemeMode.dark)),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildThemeToggle(IconData icon, bool isSelected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: isSelected ? AppThemes.primaryColor : Colors.grey.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(
          icon,
          color: isSelected ? Colors.white : Colors.grey[600],
          size: 18,
        ),
      ),
    );
  }

  Widget _buildInfoCard(BuildContext context, AppLocalizations l10n, String title, IconData icon, Color color, VoidCallback onTap) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: color.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(icon, color: color, size: 20),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
              ),
            ),
            Icon(Icons.chevron_right, color: Colors.grey[400]),
          ],
        ),
      ),
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
