import 'package:flutter/material.dart';
import 'config/Routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Demo App')),
      body: MaterialApp(
        debugShowCheckedModeBanner: false,
        onGenerateRoute: (RouteSettings settings) {
          return MaterialPageRoute(
            builder: (BuildContext context) => makeRoute(
              context: context,
              routeName: settings.name,
              arguments: settings.arguments,
            ),
            maintainState: true,
            fullscreenDialog: false,
          );
        },
      ),
    );
  }
}
