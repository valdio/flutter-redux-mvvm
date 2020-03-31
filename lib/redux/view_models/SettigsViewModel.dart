import 'dart:convert';
import 'package:flutter_redux_mvvm/redux/actions/gallery.dart';
import 'package:flutter_redux_mvvm/redux/actions/index.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import '../models/AppState.dart';
import '../../assets/mocks.dart' as mocks;

class SettingsViewModel {
  final bool darkModeOn;
  final int randomNumber;

  final Function() toggleDarkMode;
  final Function() generateRandomNumber;

  SettingsViewModel({
    @required this.darkModeOn,
    @required this.randomNumber,
    @required this.toggleDarkMode,
    @required this.generateRandomNumber,
  });

  factory SettingsViewModel.create(Store<AppState> store) {
    _onToggleDarkMode() {
      store.dispatch(ToggleDarkModeAction());
    }

    _onGenerateRandomNumber() {
      store.dispatch(GenerateRandomNumberAction());
    }

    return SettingsViewModel(
      darkModeOn: store.state.settingsData?.darkModeEnabled,
      randomNumber: store.state.settingsData?.randomNumber,
      toggleDarkMode: _onToggleDarkMode,
      generateRandomNumber: _onGenerateRandomNumber,
    );
  }
}
