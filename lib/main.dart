import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_mvvm/App.dart';
import 'package:flutter_redux_mvvm/store/config.dart';
import 'store/models/AppState.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final store = await ReduxConfig().getStore();
  runApp(StoreProvider<AppState>(store: store, child: App()));
}
