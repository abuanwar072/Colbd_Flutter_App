import 'package:flutter/material.dart';

AppBar defaultAppBar(BuildContext context) {
  return AppBar(
    title: Text("Colbd".toUpperCase()),
    leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.pop(context);
        }),
  );
}
