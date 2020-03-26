//Create the Global State reducer by combining many smaller reducers into one!
import '../models/AppState.dart';
import './gallery.dart';

AppState appReducer(AppState state, action) {
  return AppState(galleryData: galleryReducer(state.galleryData, action));
}
