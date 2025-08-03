part of 'library_bloc.dart';

abstract class LibraryState extends Equatable {
  // Add a getter for items, default to empty list
  List<LibraryItem> get allItems => [];
  const LibraryState();

  @override
  List<Object> get props => [allItems]; // Include allItems in props
}

// Initial state, before loading
class LibraryInitial extends LibraryState {}

// State while loading items from storage
class LibraryLoading extends LibraryState {
  @override
  final List<LibraryItem> allItems; // Store items being loaded over
  const LibraryLoading({this.allItems = const []}); // Default to empty

  @override
  List<Object> get props => [allItems];
}

// State when items are loaded successfully
class LibraryLoaded extends LibraryState {
  final List<LibraryItem> allItems;
  // Pre-filter lists for convenience in UI tabs
  final List<LibraryItem> photos;
  final List<LibraryItem> videos;
  final List<LibraryItem> voices; // Includes MP3 and Voice types

  LibraryLoaded({required this.allItems})
      : photos =
            allItems.where((item) => item.type == MediaType.photo).toList(),
        videos =
            allItems.where((item) => item.type == MediaType.video).toList(),
        voices = allItems
            .where((item) =>
                item.type == MediaType.voice || item.type == MediaType.mp3)
            .toList();

  // Check if library is empty overall or per category
  bool get isEmpty => allItems.isEmpty;
  bool get photosEmpty => photos.isEmpty;
  bool get videosEmpty => videos.isEmpty;
  bool get voicesEmpty => voices.isEmpty;

  @override
  List<Object> get props => [allItems, photos, videos, voices];
}

// State when an error occurs during loading or modification
class LibraryError extends LibraryState {
  final String message;
  @override
  final List<LibraryItem> allItems; // Keep previous items on error if desired

  const LibraryError({required this.message, this.allItems = const []});

  @override
  List<Object> get props => [message, allItems];
}
// Optional: Specific states for delete/rename success if needed for UI feedback
// class LibraryDeleteSuccess extends LibraryLoaded { ... }
// class LibraryRenameSuccess extends LibraryLoaded { ... }
