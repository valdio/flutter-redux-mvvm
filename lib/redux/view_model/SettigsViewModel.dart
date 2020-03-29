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

  final Function() toggleDarkMode;

  SettingsViewModel({
    @required this.darkModeOn,
    @required this.toggleDarkMode,
  });

  factory SettingsViewModel.create(Store<AppState> store) {
    _onToggleDarkMode() {
      store.dispatch(ToggleDarkModeAction());
    }

    return SettingsViewModel(
      darkModeOn: store.state.settingsData?.darkModeEnabled,
      toggleDarkMode: _onToggleDarkMode,
    );
  }
}
