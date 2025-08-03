part of 'download_limit_cubit.dart';

class DownloadLimitState extends Equatable {
  final int currentLimit;
  final int maxLimit;

  const DownloadLimitState(
      {required this.currentLimit, required this.maxLimit});

  @override
  List<Object> get props => [currentLimit, maxLimit];
}
