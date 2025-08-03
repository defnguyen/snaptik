import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:snaptik/core/widgets/loading_indicator.dart';
import 'package:snaptik/features/library/bloc/library_bloc.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/features/library/widgets/library_grid_item.dart';
import 'package:snaptik/l10n/app_localizations.dart';

class LibraryTab extends StatefulWidget {
  const LibraryTab({super.key});

  @override
  LibraryTabState createState() => LibraryTabState();
}

// Use SingleTickerProviderStateMixin for TabController
class LibraryTabState extends State<LibraryTab>
    with SingleTickerProviderStateMixin, AutomaticKeepAliveClientMixin {
  late TabController _tabController;
  late LibraryBloc _libraryBloc;

  final List<Tab> _tabs = []; // Tabs will be populated based on localization
  static const int libraryTabIndex = 1;

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    // BlocProvider should wrap this widget or be accessible via context.read
    _libraryBloc = LibraryBloc(
      mediaStorageService: context.read<MediaStorageService>(), // Get service
      // l10n: AppLocalizations.of(context)!, // Pass l10n if needed in bloc
    )..add(LoadLibraryItems()); // Load items initially

    // TabController length depends on the number of media types we show
    // We initialize tabs in didChangeDependencies because we need AppLocalizations
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // Initialize tabs here where AppLocalizations is available
    if (_tabs.isEmpty) {
      final l10n = AppLocalizations.of(context)!;
      _tabs.addAll([
        Tab(text: l10n.photosTab), // Use localized strings
        Tab(text: l10n.videosTab),
        Tab(text: l10n.voiceTab), // Combined Voice/MP3
      ]);
      _tabController = TabController(length: _tabs.length, vsync: this);
      _tabController.addListener(_handleTabSelection);
      
      // Remove this problematic code that's looking for a non-existent DefaultTabController
      // final parentTabController = DefaultTabController.of(context);
      // if (_tabController != null) {
      //   _tabController!.addListener(_handleTabSelection);
      // } else if (parentTabController != null) {
      //   // If HomeScreen's BottomNavBar drives the IndexedStack directly without
      //   // a TabController shared down here, we need a different approach.
      //   // Let's assume the current structure where LibraryTab has its own controller.
      // }
    }
  }

  void _handleTabSelection() {
    // Check if the tab controller's index is now pointing to the Library Tab index
    // AND that the animation is finished (to avoid multiple loads during swipe)
    // Note: This listener might be too simple if the TabBar/BottomNav interaction is complex.
    // A more robust way might involve checking visibility or using a different state management approach.

    // Simple Reload: If the Library tab's internal TabController index changes, reload.
    // This assumes the user is interacting *within* the Library tab's own tabs.
    // *** A BETTER APPROACH: Reload when the MAIN BottomNav selects the Library Tab ***
    // This requires modifying HomeScreen to inform LibraryTab or using a shared state/event.

    // --- Let's try a pragmatic approach: Reload if the Bloc state is NOT loading ---
    // This listener inside LibraryTab is for its *internal* tabs (Photo/Video/Voice).
    // The real trigger needs to come when the *main* Library tab (BottomNav index 1) is selected.

    // **REVISED STRATEGY:** Use `didChangeDependencies` and `ModalRoute.of(context)?.isCurrent`
    // This isn't reliable for IndexedStack.

    // **BEST SIMPLE STRATEGY:** Add a listener to the `HomeScreen`'s `BottomNavigationBar` `onTap`
    // or modify the `_HomeScreenState` to call a reload method on the `LibraryTab`'s state or Bloc.

    // Let's modify HomeScreen to trigger the reload.
  }

  // --- Add a method to be called externally to trigger reload ---
  void reloadLibrary() {
    print("Reloading Library requested...");
    // Avoid reloading if already loading to prevent spamming
    if (_libraryBloc.state is! LibraryLoading) {
      _libraryBloc.add(LoadLibraryItems());
    }
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabSelection);
    _tabController.dispose();
    // Bloc is usually disposed by BlocProvider if provided above this widget
    // If created here, dispose it: _libraryBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    // Remove the null check since _tabController is always initialized in didChangeDependencies
    // if (_tabController == null) {
    //   return const Center(child: CircularProgressIndicator());
    // }

    return BlocProvider.value(
      // Provide bloc to children if needed (e.g., context menu actions)
      value: _libraryBloc,
      child: Scaffold(
        appBar: PreferredSize(
          // Use PreferredSize to put TabBar in AppBar area
          preferredSize: const Size.fromHeight(kToolbarHeight),
          child: AppBar(
            automaticallyImplyLeading:
                false, // No back button if it's a main tab
            elevation: 1.0, // Subtle shadow for tab bar
            backgroundColor:
                Theme.of(context).colorScheme.surface, // Use surface color
            title: TabBar(
              controller: _tabController,
              tabs: _tabs,
              labelColor: Theme.of(context)
                  .colorScheme
                  .primary, // Color for selected tab text
              unselectedLabelColor: Theme.of(context)
                  .colorScheme
                  .onSurface
                  .withOpacity(0.7), // Color for unselected tab text
              indicatorColor: Theme.of(context)
                  .colorScheme
                  .primary, // Color of the indicator line
            ),
          ),
        ),
        body: BlocBuilder<LibraryBloc, LibraryState>(
          // buildWhen: (previous, current) => previous != current, // Optional optimization
          builder: (context, state) {
            if (state is LibraryLoading && state.allItems.isEmpty) {
              return const LoadingIndicator();
            }
            if (state is LibraryError) {
              return Center(
                  child: Padding(
                padding: const EdgeInsets.all(AppConstants.defaultPadding),
                child: Text("Error loading library: ${state.message}",
                    textAlign: TextAlign.center), // Localize
              ));
            }
            if (state is LibraryLoaded ||
                (state is LibraryLoading && state.allItems.isNotEmpty)) {
              // Show grid even while reloading
              final itemsToShow = (state is LibraryLoaded)
                  ? state.allItems
                  : (state as LibraryLoading)
                      .allItems; // Get items from current state

              if (itemsToShow.isEmpty && state is LibraryLoaded) {
                // Only show empty message if loaded and empty
                return const Center(
                    child: Text("Your downloaded media will appear here."));
              }

              // Separate items for tabs based on the current state's items
              final photos = itemsToShow
                  .where((item) => item.type == MediaType.photo)
                  .toList();
              final videos = itemsToShow
                  .where((item) => item.type == MediaType.video)
                  .toList();
              final voices = itemsToShow
                  .where((item) =>
                      item.type == MediaType.voice ||
                      item.type == MediaType.mp3)
                  .toList();

              return TabBarView(
                controller: _tabController!,
                children: [
                  _buildMediaGrid(context, photos, MediaType.photo),
                  _buildMediaGrid(context, videos, MediaType.video),
                  _buildMediaGrid(context, voices, MediaType.voice),
                ],
              );
            }
            return const Center(
                child: Text("Something went wrong.")); // Fallback, Localize
          },
        ),
      ),
    );
  }

  Widget _buildMediaGrid(BuildContext context, List<LibraryItem> items,
      MediaType typeForEmptyMessage) {
    final l10n = AppLocalizations.of(context)!;

    if (items.isEmpty) {
      String emptyMessage;
      switch (typeForEmptyMessage) {
        case MediaType.photo:
          emptyMessage = "No photos downloaded yet.";
          break; // Localize all these
        case MediaType.video:
          emptyMessage = "No videos downloaded yet.";
          break;
        case MediaType.voice:
        case MediaType.mp3:
          emptyMessage = "No audio downloaded yet.";
          break;
      }
      return Center(child: Text(emptyMessage));
    }

    // Add RefreshIndicator for manual refresh
    return RefreshIndicator(
      onRefresh: () async {
        _libraryBloc.add(LoadLibraryItems());
        // Wait for the state to potentially change, or add a delay
        // A better way is to await a completion future from the bloc if implemented
        await Future.delayed(const Duration(milliseconds: 500));
      },
      child: GridView.builder(
        // Key helps preserve scroll position better with dynamic lists
        key: PageStorageKey<String>('grid_${typeForEmptyMessage.name}'),
        physics:
            const AlwaysScrollableScrollPhysics(), // Ensure scrolling enabled for RefreshIndicator
        padding: const EdgeInsets.all(AppConstants.gridSpacing),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: AppConstants.gridSpacing,
          mainAxisSpacing: AppConstants.gridSpacing,
          childAspectRatio: AppConstants.libraryGridAspectRatio,
        ),
        itemCount: items.length,
        itemBuilder: (context, index) {
          return LibraryGridItem(item: items[index]);
        },
      ),
    );
  }
}
