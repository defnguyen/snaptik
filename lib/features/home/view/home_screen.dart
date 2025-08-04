import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/core/blocs/premium/premium_cubit.dart';
import 'package:snaptik/core/widgets/app_banner_ad.dart';
import 'package:snaptik/features/home/view/tabs/download_tab.dart';
import 'package:snaptik/features/home/view/tabs/library_tab.dart';
import 'package:snaptik/features/home/view/tabs/playlist_tab.dart';
import 'package:snaptik/features/home/view/tabs/authors_tab.dart';
import 'package:snaptik/features/home/view/tabs/settings_tab.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  
  @override
  void initState() {
    super.initState();
  }
  
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  // Get only the active widget
  Widget _getSelectedWidget() {
    switch (_selectedIndex) {
      case 0:
        return const DownloadTab();
      case 1:
        return const LibraryTab();
      case 2:
        return const PlaylistTab();
      case 3:
        return const AuthorsTab();
      case 4:
        return const SettingsTab();
      default:
        return const DownloadTab();
    }
  }

  String _getAppBarTitle(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    switch (_selectedIndex) {
      case 0:
        return l10n.appTitle;
      case 1:
        return l10n.libraryTab;
      case 2:
        return l10n.playlistTab;
      case 3:
        return l10n.authorsTab;
      case 4:
        return l10n.settingsTab;
      default:
        return l10n.appTitle;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(_getAppBarTitle(context)),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            // Only include the active widget in the tree
            child: _getSelectedWidget(),
          ),
          BlocBuilder<PremiumCubit, PremiumState>(
            builder: (context, premiumState) {
              if (!premiumState.isPremium) {
                return AppBannerAd();
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Required for 4+ tabs
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined),
            activeIcon: const Icon(Icons.home),
            label: l10n.homeTab,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.folder_outlined),
            activeIcon: const Icon(Icons.folder),
            label: l10n.libraryTab,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.playlist_play_outlined),
            activeIcon: const Icon(Icons.playlist_play),
            label: l10n.playlistTab,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline),
            activeIcon: const Icon(Icons.person),
            label: l10n.authorsTab,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.settings_outlined),
            activeIcon: const Icon(Icons.settings),
            label: l10n.settingsTab,
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}