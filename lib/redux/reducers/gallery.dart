import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/redux/models/GalleryData.dart';
import 'package:flutter_redux_mvvm/redux/actions/index.dart';

final galleryReducer = combineReducers<GalleryData>([
  TypedReducer<GalleryData, GalleryImagesAction>(_getGalleryData),
]);

GalleryData _getGalleryData(state, GalleryImagesAction action) {
  return GalleryData(
    galleryImages: action.items,
  );
}
