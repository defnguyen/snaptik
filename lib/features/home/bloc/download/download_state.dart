part of 'download_bloc.dart';

abstract class DownloadState extends Equatable {
  const DownloadState();

  @override
  List<Object?> get props => [];
}

// Initial state, before any URL is submitted or after clearing
class DownloadInitial extends DownloadState {}

// State when the URL is being processed (API call in progress)
class DownloadLoading extends DownloadState {}

// State when the media info has been successfully fetched
class DownloadSuccess extends DownloadState {
  final DownloadResult result;
  const DownloadSuccess({required this.result});

  @override
  List<Object?> get props => [result];
}

// State when fetching media info failed (network, API error, invalid URL after validation)
class DownloadFailure extends DownloadState {
  final String error;
  const DownloadFailure({required this.error});

  @override
  List<Object?> get props => [error];
}

// State when the user has reached the download limit
class DownloadLimitExceeded extends DownloadState {
  final int limit; // Pass the limit value for the message
  const DownloadLimitExceeded({required this.limit});

  @override
  List<Object?> get props => [limit];
}
