import 'dart:convert';
import 'package:redux/redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import '../models/AppState.dart';
import '../../assets/mocks.dart' as mocks;

class GalleryViewModel {
  final List<ImageItem> galleryImages;
  final Function(/*add type of parameters here as arguments of this method*/)
      getImagesList;

  GalleryViewModel(
      {@required this.galleryImages, @required this.getImagesList});

  factory GalleryViewModel.create(Store<AppState> store) {
    _onGetImagesList() async {
      // Map response = await Api.get('/gallery');
      Map response = json.decode(mocks.imagesMock);
      // TODO in progress
      // List<ImageItem> items = List<ImageItem>.fromJson(response);
      // store.dispatch(GalleryImagesAction(items));
    }

    return GalleryViewModel(
      //map several parts of state to this feature view-holder
      galleryImages: store.state.galleryData?.galleryImages,
      //map actions to per performed from and to the state.
      //only create actions related to this feature.
      getImagesList: _onGetImagesList,
    );
  }
}
