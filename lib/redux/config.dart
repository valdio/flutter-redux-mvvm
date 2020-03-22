import 'package:flutter_redux_mvvm/redux/reducers/index.dart';
import 'package:redux/redux.dart';
import 'package:redux_persist/redux_persist.dart';
import 'package:redux_persist_flutter/redux_persist_flutter.dart';

import 'models/AppState.dart';

class ReduxConfig {
  Future<Store> getStore() async {
    Map<String, dynamic> storeEnhancer = await _getStoreConfig();

    return Store<AppState>(
      appReducer,
      initialState: storeEnhancer['initialState'],
      middleware: storeEnhancer['middlewares'],
    );
  }

  Future<Map<String, dynamic>> _getStoreConfig() async {
    final persistor = Persistor<AppState>(
      storage: FlutterStorage(location: FlutterSaveLocation.sharedPreferences),
      serializer: JsonSerializer<AppState>(AppState.fromJson),
    );

    final initialState = await persistor.load();

    return {
      'initialState': initialState ?? AppState.loading(),
      'middlewares': [persistor.createMiddleware()]
    };
  }
}