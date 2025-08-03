import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:snaptik/core/services/local_storage_service.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final LocalStorageService _localStorageService;

  ThemeCubit(this._localStorageService)
      : super(ThemeState(_localStorageService.loadThemeMode()));

  void loadTheme() {
    final savedMode = _localStorageService.loadThemeMode();
    emit(ThemeState(savedMode));
  }

  Future<void> changeTheme(ThemeMode newMode) async {
    await _localStorageService.saveThemeMode(newMode);
    emit(ThemeState(newMode));
  }
}
