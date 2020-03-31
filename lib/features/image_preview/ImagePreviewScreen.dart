import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:flutter_redux_mvvm/config/Device.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import 'package:flutter_redux_mvvm/models/Tag.dart';
import 'package:flutter_redux_mvvm/redux/models/AppState.dart';
import 'package:flutter_redux_mvvm/redux/view_models/GalleryViewModel.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux_mvvm/template/index.dart' as template;

class ImagePreviewScreen extends StatelessWidget {
  String identifier;

  ImagePreviewScreen(this.identifier);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, GalleryViewModel>(
      converter: (Store<AppState> store) => GalleryViewModel.create(store),
      onInitialBuild: (vm) {},
      builder: (context, vm) {
        ImageItem image = vm.getImageById(identifier);
        Device device = new Device(context);
        return Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            child: Column(
              children: <Widget>[
                Image.network(
                  image.imageUrl,
                  width: device.width,
                  height: device.height * 0.8,
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: <Widget>[
                    Text('ID:', style: template.Typography.sectionTitle),
                    Text(
                      image.id.toString(),
                      style: template.Typography.defaultText,
                    ),
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: <Widget>[
                    Text('Category:', style: template.Typography.sectionTitle),
                    Text(image.category.name,
                        style: template.Typography.defaultText)
                  ]),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(children: <Widget>[
                    Text('Tags:', style: template.Typography.sectionTitle),
                    for (Tag item in image.tags)
                      Text(
                        ' ${item.name},',
                        style: template.Typography.defaultText,
                      )
                  ]),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
