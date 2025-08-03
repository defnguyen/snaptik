part of 'library_bloc.dart';

abstract class LibraryEvent extends Equatable {
  const LibraryEvent();

  @override
  List<Object> get props => [];
}

// Event to load all media items from storage
class LoadLibraryItems extends LibraryEvent {}

// Event to delete a specific media item
class DeleteLibraryItem extends LibraryEvent {
  final String itemId;
  const DeleteLibraryItem({required this.itemId});

  @override
  List<Object> get props => [itemId];
}

// Event to rename a specific media item
class RenameLibraryItem extends LibraryEvent {
  final String itemId;
  final String newName;
  const RenameLibraryItem({required this.itemId, required this.newName});

  @override
  List<Object> get props => [itemId, newName];
}
