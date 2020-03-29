import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_mvvm/redux/models/AppState.dart';
import 'package:flutter_redux_mvvm/redux/view_model/SettigsViewModel.dart';
import 'package:flutter_redux_mvvm/template/index.dart' as template;
import 'package:redux/redux.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, SettingsViewModel>(
        converter: (Store<AppState> store) => SettingsViewModel.create(store),
        onInitialBuild: (vm) {},
        builder: (context, vm) {
          bool darkModeEnabled =
              (vm.darkModeOn == null) ? false : vm.darkModeOn;
          String randomNumber =
              (vm.randomNumber == null) ? ' _ ' : vm.randomNumber.toString();

          return Scaffold(
            appBar: AppBar(title: Text('Settings')),
            backgroundColor: darkModeEnabled ? Colors.black54 : Colors.white,
            body: Container(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: <Widget>[
                      Text('DarkMode:',
                          style: darkModeEnabled
                              ? template.Typography.sectionTitleWhite
                              : template.Typography.sectionTitle),
                      Switch(
                        value: darkModeEnabled,
                        onChanged: (value) {
                          vm.toggleDarkMode();
                        },
                        activeTrackColor: Colors.lightBlueAccent,
                        activeColor: Colors.blue,
                      )
                    ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Row(children: <Widget>[
                      Text('Random Number:',
                          style: darkModeEnabled
                              ? template.Typography.sectionTitleWhite
                              : template.Typography.sectionTitle),
                      Text(randomNumber,
                          style: darkModeEnabled
                              ? template.Typography.sectionTitleWhite
                              : template.Typography.sectionTitle),
                    ]),
                  ),
                ],
              ),
            ),
            floatingActionButton: FloatingActionButton(
                child: Icon(Icons.bubble_chart),
                backgroundColor: Colors.green,
                onPressed: () {
                  vm.generateRandomNumber();
                }),
          );
        });
  }
}
