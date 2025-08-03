import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/services/local_storage_service.dart';

part 'download_limit_state.dart';

class DownloadLimitCubit extends Cubit<DownloadLimitState> {
  final LocalStorageService _localStorageService;
  final int _maxLimit =
      AppConstants.freeDownloadLimitPerCycle; // Or fetch from config

  DownloadLimitCubit(this._localStorageService)
      : super(DownloadLimitState(
            currentLimit: _localStorageService.loadDownloadLimit(),
            maxLimit: AppConstants.freeDownloadLimitPerCycle));

  void loadLimit() {
    final savedLimit = _localStorageService.loadDownloadLimit();
    emit(DownloadLimitState(currentLimit: savedLimit, maxLimit: _maxLimit));
  }

  Future<void> decrementLimit() async {
    if (state.currentLimit > 0) {
      final newLimit = state.currentLimit - 1;
      await _localStorageService.saveDownloadLimit(newLimit);
      emit(DownloadLimitState(currentLimit: newLimit, maxLimit: _maxLimit));
    }
  }

  Future<void> addDownloads(int amount) async {
    //final newLimit = state.currentLimit + amount;
    final newLimit = amount;
    await _localStorageService.saveDownloadLimit(newLimit);
    emit(DownloadLimitState(currentLimit: newLimit, maxLimit: _maxLimit));
  }

  // Called after successful rewarded ad view
  Future<void> grantReward() async {
    await addDownloads(AppConstants.rewardedDownloadIncrease);
  }

  // Could be used for testing or special promotions
  Future<void> setUnlimited() async {
    final unlimitedValue = 99999; // Or a specific flag
    await _localStorageService.saveDownloadLimit(unlimitedValue);
    emit(DownloadLimitState(currentLimit: unlimitedValue, maxLimit: _maxLimit));
  }
}
