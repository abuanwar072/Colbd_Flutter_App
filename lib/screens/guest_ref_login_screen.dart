import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class GuestReferenceLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: kPading,
        child: Column(children: <Widget>[],),
      ),
    );
  }
}
