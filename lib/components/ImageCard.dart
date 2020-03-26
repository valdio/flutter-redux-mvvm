import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/models/ImageItem.dart';

class ImageCard extends StatelessWidget {
  final ImageItem imageItem;

  const ImageCard(this.imageItem);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(),
      decoration: BoxDecoration(
        color: Colors.red,
      ),
    );
  }
}