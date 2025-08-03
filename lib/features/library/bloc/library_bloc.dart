import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:snaptik/core/enums/media_type.dart';
import 'package:snaptik/core/services/media_storage_service.dart';
import 'package:snaptik/features/library/models/library_item.dart';
import 'package:snaptik/l10n/app_localizations.dart'; // For localized errors

part 'library_event.dart';
part 'library_state.dart';

class LibraryBloc extends Bloc<LibraryEvent, LibraryState> {
  final MediaStorageService _mediaStorageService;
  // final AppLocalizations l10n; // Pass or get context for localization

  LibraryBloc({
    required MediaStorageService mediaStorageService,
    // required this.l10n,
  })  : _mediaStorageService = mediaStorageService,
        super(LibraryInitial()) {
    on<LoadLibraryItems>(_onLoadLibraryItems);
    on<DeleteLibraryItem>(_onDeleteLibraryItem);
    on<RenameLibraryItem>(_onRenameLibraryItem);
  }

  Future<void> _onLoadLibraryItems(
      LoadLibraryItems event, Emitter<LibraryState> emit) async {
    emit(LibraryLoading());
    try {
      final items = await _mediaStorageService.loadMediaItems();
      // Sort items by date added, newest first
      items.sort((a, b) => b.dateAdded.compareTo(a.dateAdded));
      emit(LibraryLoaded(allItems: items));
    } catch (e) {
      print("Error loading library items: $e");
      emit(LibraryError(message: "Failed to load library.")); // Localize
    }
  }

  Future<void> _onDeleteLibraryItem(
      DeleteLibraryItem event, Emitter<LibraryState> emit) async {
    // Optionally emit a loading/processing state specific to deletion
    // emit(LibraryDeleting(currentItemState...));

    try {
      final success = await _mediaStorageService.deleteMediaItem(event.itemId);
      if (success) {
        // Reload the library to reflect the change
        add(LoadLibraryItems());
        // Or, if state holds the list, remove item manually and emit new LibraryLoaded state
        // if (state is LibraryLoaded) {
        //   final updatedItems = List<LibraryItem>.from((state as LibraryLoaded).allItems)
        //     ..removeWhere((item) => item.id == event.itemId);
        //   emit(LibraryLoaded(allItems: updatedItems));
        // }
      } else {
        // Deletion failed (e.g., item not found)
        emit(LibraryError(message: "Failed to delete item.")); // Localize
        // Optionally reload to ensure consistency if delete failed unexpectedly
        add(LoadLibraryItems());
      }
    } catch (e) {
      print("Error deleting library item: $e");
      emit(LibraryError(
          message: "An error occurred while deleting.")); // Localize
      // Reload to ensure consistency
      add(LoadLibraryItems());
    }
  }

  Future<void> _onRenameLibraryItem(
      RenameLibraryItem event, Emitter<LibraryState> emit) async {
    // Optionally emit a loading/processing state specific to renaming

    try {
      final success = await _mediaStorageService.renameMediaItem(
          event.itemId, event.newName);
      if (success) {
        // Reload the library to reflect the change
        add(LoadLibraryItems());
        // Or, update the item manually in the state if state holds the list
      } else {
        // Renaming failed (e.g., item not found, name collision)
        // The service might print specific reasons
        emit(LibraryError(
            message:
                "Failed to rename item. Name might already exist.")); // Localize
        // Reload to ensure consistency
        add(LoadLibraryItems());
      }
    } catch (e) {
      print("Error renaming library item: $e");
      emit(LibraryError(
          message: "An error occurred while renaming.")); // Localize
      // Reload to ensure consistency
      add(LoadLibraryItems());
    }
  }
}
