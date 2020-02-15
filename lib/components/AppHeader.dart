import 'package:flutter/material.dart';

class AppHeader extends StatefulWidget implements PreferredSizeWidget {

  @override
  _HeaderState createState() {
    return _HeaderState();
  }

  @override
  Size get preferredSize => Size.fromHeight(60.0);
}

class _HeaderState extends State<AppHeader> {
  Widget build(BuildContext context) {
    return AppBar();
  }
}
