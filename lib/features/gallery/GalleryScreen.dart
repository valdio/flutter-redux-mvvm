import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_mvvm/redux/models/AppState.dart';
import 'package:flutter_redux_mvvm/redux/view_model/GalleryViewModel.dart';
import 'package:redux/redux.dart';

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GalleryViewModel>(
      converter: (Store<AppState> store) => GalleryViewModel.create(store),
      onInitialBuild: (vm) {
        // perform actions on initial build of the widget.
        vm.getImagesList();
      },
      builder: (context, vm) {
        return Text('Gallery');
      },
    );
  }
}
