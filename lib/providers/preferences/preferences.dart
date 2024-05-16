import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mess/providers/preferences/state.dart';

class PreferencesNotifier extends Notifier<PreferencesState> {
  @override
  PreferencesState build() {
    return PreferencesState.withDefaults();
  }

  void setThemeMode(ThemeMode mode) {
    state = state.copyWith(themeMode: mode);
  }
}

final preferencesProvider =
    NotifierProvider<PreferencesNotifier, PreferencesState>(
  () => PreferencesNotifier(),
);
