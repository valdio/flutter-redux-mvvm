import 'package:flutter/material.dart';

class ImagePreviewScreen extends StatelessWidget {
  String identifier;
  ImagePreviewScreen(this.identifier);

  @override
  Widget build(BuildContext context) {
    debugPrint('test image');
    debugPrint(identifier);

    return Container(
      child: Center(
        child: Text(
          'Not ImagePreviewScreen',
          style: TextStyle(color: Colors.lightBlueAccent),
        ),
      ),
    );
  }
}
