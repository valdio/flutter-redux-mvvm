import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/config/Routes.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';
import 'package:flutter_redux_mvvm/template/index.dart' as template;
import 'package:flutter_redux_mvvm/config/Routes.dart' as Routing;

class ImageCard extends StatelessWidget {
  final ImageItem imageItem;

  const ImageCard(this.imageItem);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, Routing.IMAGE_PREVIEW,
          arguments: ScreenArguments(identifier: imageItem.id.toString())),
      child: Container(
        padding: const EdgeInsets.only(top: 10.0, bottom: 5.0),
        child: Column(
          children: <Widget>[
            Image.network(
              imageItem.imageUrl,
            ),
            Text('Category: ${imageItem.category?.name}',
                style: template.Typography.defaultText),
            Text('ID: ${imageItem.id.toString()}',
                style: template.Typography.sectionTitle),
          ],
        ),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black12,
            width: 1,
          ),
        ),
      ),
    );
  }
}
