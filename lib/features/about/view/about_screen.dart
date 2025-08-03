import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  String _version = '';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    try {
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      if (mounted) {
        setState(() {
          _version = packageInfo.version;
        });
      }
    } catch (e) {
      print("Error loading package info: $e");
      if (mounted) {
        setState(() {
          _version = 'N/A';
        }); // Indicate error loading version
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.aboutTitle),
      ),
      body: Padding(
        padding: const EdgeInsets.all(AppConstants.defaultPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/images/app_icon.png', // Use your actual app icon asset
                height: 80,
                width: 80,
              ),
            ),
            const SizedBox(height: 16),
            Center(
              child: Text(
                AppConstants.appName,
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            Center(
              child: Text(
                'Version $_version',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 24),
            Text(
              l10n.aboutContent, // Pass version if needed in string
              style: Theme.of(context).textTheme.bodyMedium,
            ),
            const Spacer(), // Pushes content below to the bottom
            Center(
              child: Text(
                "© ${DateTime.now().year} snapvn.com",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
