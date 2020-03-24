import 'package:colbd_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:fancy_bottom_navigation/fancy_bottom_navigation.dart';
import 'dart:io' show Platform;

Container defaultBottonNavBar() {
  return Container(
    padding: EdgeInsets.only(bottom: Platform.isIOS ? 16 : 0),
    color: kWhiteColor,
    child: FancyBottomNavigation(
      circleColor: kBlueColor,
      inactiveIconColor: kBlueColor,
      inactiveIconSize: 30,
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
