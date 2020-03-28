import 'dart:convert';
import 'package:flutter_redux_mvvm/redux/actions/gallery.dart';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import '../models/AppState.dart';
import '../../assets/mocks.dart' as mocks;

class GalleryViewModel {
  final List<ImageItem> galleryImages;

  /*add type of parameters here as arguments of this method*/
  final Function() loadImagesList;
  final Function(String) loadImageById;

  GalleryViewModel(
      {@required this.galleryImages,
      @required this.loadImagesList,
      @required this.loadImageById});

  factory GalleryViewModel.create(Store<AppState> store) {
    _onLoadImagesList() async {
      // Map response = await Api.get('/gallery');

      List<ImageItem> items = (json.decode(mocks.imagesMock)['images'] as List)
          .map((item) => ImageItem.fromJson(item))
          .toList();
      store.dispatch(GalleryImagesListAction(items));
    }

    _onLoadImageById(String imageUUID) async {
      // Map response = await Api.get('/image?id=$imageUUID');
      Map response = json.decode(mocks.imageItem);
      ImageItem item = ImageItem.fromJson(response);
      // TODO perform operation on #item
    }

    return GalleryViewModel(
      //map several parts of state to this feature view-holder
      galleryImages: store.state.galleryData?.galleryImages,
      //map actions to per performed from and to the state.
      //only create actions related to this feature.
      loadImagesList: _onLoadImagesList,
      loadImageById: _onLoadImageById,
    );
  }
}
