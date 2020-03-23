import 'package:colbd_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';

Container defaultBottonNavBar() {
  return Container(
    padding: EdgeInsets.only(bottom: 16),
    color: kWhiteColor,
    child: FancyBottomNavigation(
      tabs: [
        TabData(iconData: Icons.home, title: "Home"),
        TabData(iconData: Icons.local_play, title: "Offers"),
        TabData(iconData: Icons.done, title: "Explore"),
        TabData(iconData: Icons.perm_identity, title: "Account"),
      ],
      onTabChangedListener: (position) {},
    ),
  );
}
