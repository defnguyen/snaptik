import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:snaptik/config/app_constants.dart';
import 'package:snaptik/core/services/local_storage_service.dart';
import 'package:snaptik/l10n/app_localizations.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  final LocalStorageService _localStorageService;

  LocaleCubit(this._localStorageService)
      : super(LocaleState(_getInitialLocale(_localStorageService)));

  static Locale _getInitialLocale(LocalStorageService service) {
    final savedLocaleCode = service.loadLocale();
    return _localeFromCode(savedLocaleCode);
  }

  void loadLocale() {
    final savedLocaleCode = _localStorageService.loadLocale();
    emit(LocaleState(_localeFromCode(savedLocaleCode)));
  }

  Future<void> changeLocale(Locale newLocale) async {
    if (!AppLocalizations.supportedLocales.contains(newLocale))
      return; // Ensure supported
    await _localStorageService.saveLocale(newLocale.languageCode);
    emit(LocaleState(newLocale));
  }

  static Locale _localeFromCode(String code) {
    return AppLocalizations.supportedLocales.firstWhere(
        (locale) => locale.languageCode == code,
        orElse: () => const Locale(AppConstants.defaultLocale)); // Fallback
  }
}
