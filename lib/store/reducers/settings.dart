import 'dart:math';

import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/store/models/SettingsData.dart';
import 'package:flutter_redux_mvvm/store/actions/index.dart';

final settingsReducer = combineReducers<SettingsData>([
  TypedReducer<SettingsData, ToggleDarkModeAction>(_toggleDarkMode),
  TypedReducer<SettingsData, GenerateRandomNumberAction>(_generateRandomNumber),
]);

SettingsData _toggleDarkMode(state, ToggleDarkModeAction action) {
  SettingsData data = state;
  // if data was not previously set => false
  bool status = data?.darkModeEnabled == null ? false : data.darkModeEnabled;

  SettingsData stateData = new SettingsData();
  stateData.darkModeEnabled = !status;
  return stateData;
}

SettingsData _generateRandomNumber(state, GenerateRandomNumberAction action) {
  SettingsData stateData = new SettingsData();
  stateData.randomNumber = new Random().nextInt(100);
  return stateData;
}
