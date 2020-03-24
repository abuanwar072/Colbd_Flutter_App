import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class ContactUsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: kPading,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Corporate Office".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            kHightSmall,
            Text(
              "IIUC TOWER, 14TH FLOOR. 1700/A, SK. MUJIB ROAD, AGRABAD, CHITTAGONG, BANGLADESH",
            ),
            kHight,
            Text(
              "24X7 CUSTOMER SUPPPORT",
              style: Theme.of(context).textTheme.headline,
            ),
            kHightSmall,
            infoCardWithIcon(context, Icons.phone, "09619 265 265"),
            infoCardWithIcon(context, Icons.email, "info@colbd.com"),
            kHight,
            Text("OR", style: Theme.of(context).textTheme.headline),
            Center(
              child: GradientIconButton(
                press: () {},
                text: "Chat With Us",
                icon: Icons.message,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container infoCardWithIcon(BuildContext context, IconData icon, String text) {
    return Container(
      margin: EdgeInsets.only(bottom: 8),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
        boxShadow: [kShadowLight],
      ),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 16),
          Text(
            text,
            style: Theme.of(context).textTheme.title,
          ),
        ],
      ),
    );
  }
}
