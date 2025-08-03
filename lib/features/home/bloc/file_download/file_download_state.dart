part of 'file_download_cubit.dart';

abstract class FileDownloadState extends Equatable {
  const FileDownloadState();

  @override
  List<Object?> get props => [];
}

class FileDownloadInitial extends FileDownloadState {}

class FileDownloadInProgress extends FileDownloadState {
  final double progress; // 0.0 to 1.0

  const FileDownloadInProgress(this.progress);

  @override
  List<Object?> get props => [progress];
}

class FileDownloadSuccess extends FileDownloadState {
  final String filePath;
  final MediaType mediaType; // Pass type for snackbar message

  const FileDownloadSuccess(this.filePath, this.mediaType);

  @override
  List<Object?> get props => [filePath, mediaType];
}

class FileDownloadFailure extends FileDownloadState {
  final String error;

  const FileDownloadFailure(this.error);

  @override
  List<Object?> get props => [error];
}

// MP3 conversion in progress
class FileMp3ConversionInProgress extends FileDownloadState {
  const FileMp3ConversionInProgress();
}

// If conversion itself can fail separately before download
class FileMp3ConversionFailure extends FileDownloadState {
  final String error;
  const FileMp3ConversionFailure(this.error);
  @override
  List<Object?> get props => [error];
}