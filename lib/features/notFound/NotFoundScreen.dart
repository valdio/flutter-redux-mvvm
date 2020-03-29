import 'package:flutter/material.dart';
import 'package:flutter_redux_mvvm/template/index.dart' as template;

class NotFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Not Found')),
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Text('Not Found', style: template.Typography.title),
        ),
      ),
    );
  }
}
