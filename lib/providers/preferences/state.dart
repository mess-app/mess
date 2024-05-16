import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'state.freezed.dart';
part 'state.g.dart';

@freezed
class PreferencesState with _$PreferencesState {
  factory PreferencesState({
    @Default(ThemeMode.system) ThemeMode themeMode,
  }) = _PreferencesState;

  factory PreferencesState.fromJson(Map<String, dynamic> json) =>
      _$PreferencesStateFromJson(json);

  factory PreferencesState.withDefaults() => PreferencesState.fromJson({});
}
