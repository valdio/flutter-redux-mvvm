import 'package:flutter/cupertino.dart';
import 'package:flutter_redux_mvvm/features/gallery/GalleryScreen.dart';
import 'package:flutter_redux_mvvm/features/notFound/NotFoundScreen.dart';

//Routes
const String INDEX = '/';
const String GALLERY = '/gallery';

Widget makeRoute(
    {@required BuildContext context,
    @required String routeName,
    Object arguments}) {
  final Widget child =
      _buildRoute(context: context, routeName: routeName, arguments: arguments);
  return child;
}

Widget _buildRoute(
    {@required BuildContext context,
    @required String routeName,
    Object arguments}) {
  switch (routeName) {
    case INDEX:
      return NotFoundScreen();
    case GALLERY:
      return GalleryScreen();

    //    case EVENT:
//      String id = 'some-random-id'; //temp id
//      String eventID = arguments ?? id;
//
//      return EventScreen(eventID);
//    case PLACE:
//      String id = '3e0de3e0-c-766a2c54bb77'; //temp id
//      String placeID = arguments ?? id;
//      return PlaceScreen(placeID);
//    case SEARCH_RESULT:
//      String searchQuery = arguments;
//      return SearchResultScreen(searchString: searchQuery);
    default:
      return NotFoundScreen();
  }
}
