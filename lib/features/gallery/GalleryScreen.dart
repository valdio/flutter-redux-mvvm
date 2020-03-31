import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_mvvm/components/ImageCard.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import 'package:flutter_redux_mvvm/redux/models/AppState.dart';
import 'package:flutter_redux_mvvm/redux/view_models/GalleryViewModel.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/config/Routes.dart' as Routing;

class GalleryScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GalleryViewModel>(
      converter: (Store<AppState> store) => GalleryViewModel.create(store),
      onInitialBuild: (vm) {
        // perform actions on initial build of the widget.
        vm.loadImagesList();
      },
      builder: (context, vm) {
        List<ImageItem> images = vm.galleryImages;

        return Scaffold(
          appBar: AppBar(
            title: Text('Gallery'),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () =>
                    Navigator.pushNamed(context, Routing.SETTINGS),
              )
            ],
          ),
          backgroundColor: Colors.white,
          body: Container(
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (BuildContext context, int index) {
                  return ImageCard(images.elementAt(index));
                }),
          ),
        );
      },
    );
  }
}
