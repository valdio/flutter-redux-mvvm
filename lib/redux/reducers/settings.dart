import 'package:flutter/cupertino.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/redux/models/SettingsData.dart';
import 'package:flutter_redux_mvvm/redux/actions/index.dart';

final settingsReducer = combineReducers<SettingsData>([
  TypedReducer<SettingsData, ToggleDarkModeAction>(_toggleDarkMode),
]);

SettingsData _toggleDarkMode(state, ToggleDarkModeAction action) {
  SettingsData data = state;
  // if data was not previously set => false
  bool status = data?.darkModeEnabled == null ? false : data.darkModeEnabled;

  return SettingsData(
    darkModeEnabled: !status,
  );
}
