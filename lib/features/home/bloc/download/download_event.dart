part of 'download_bloc.dart';

abstract class DownloadEvent extends Equatable {
  const DownloadEvent();

  @override
  List<Object> get props => [];
}

// Event triggered when user submits a URL
class DownloadUrlSubmitted extends DownloadEvent {
  final String url;
  const DownloadUrlSubmitted({required this.url});

  @override
  List<Object> get props => [url];
}

// Event to clear the current download state and results
class ClearDownload extends DownloadEvent {}
