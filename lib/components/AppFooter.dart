import 'package:flutter/material.dart';

//import 'package:dotodayApp/template/colors.dart' as Colors;
import 'package:flutter_redux_mvvm/template/index.dart';

class AppFooter extends StatelessWidget {
  final List<FooterItem> items;
  final Function(int) onItemPress;

  AppFooter(this.items, {this.onItemPress});

  Widget build(BuildContext context) {

    Iterable<BottomNavigationBarItem> footerItems = items.map((item) =>
        BottomNavigationBarItem(
            icon: Icon(item.icon, size: 25),
            title: item.title != null
                ? Text(item.title)
                : Container(height: 0.0)));

    return BottomNavigationBar(
      onTap: onItemPress,
      iconSize: 30.0,
      elevation: 12.0,
      items: <BottomNavigationBarItem>[...footerItems],
      currentIndex: 0,
      fixedColor: AppColors.darkText,
      unselectedItemColor: AppColors.lightText,
    );
  }
}

class FooterItem {
  IconData icon;
  String title;

  FooterItem({this.icon, this.title});
}
