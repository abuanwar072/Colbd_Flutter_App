import 'package:colbd_app/constant.dart';
import 'package:colbd_app/screens/package_offer_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/name_card.dart';
import 'package:flutter/material.dart';

class PackageDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 16, right: 16, top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.only(left: 16, top: 8, right: 16),
              margin: EdgeInsets.only(bottom: 25),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  kShadowLight,
                ],
                color: kWhiteColor,
              ),
              child: Column(
                children: <Widget>[
                  NameCard(
                    name: "Name",
                    value: "Package Name",
                  ),
                  NameCard(
                    name: "Monthaly",
                    value: "950 TK",
                  ),
                  NameCard(
                    name: "Internet",
                    value: "25 Mbps",
                  ),
                  NameCard(
                    name: "BDIX",
                    value: "50 Mbps",
                  ),
                  NameCard(
                    name: "YouTube",
                    value: "50 Mbps",
                  ),
                  NameCard(
                    name: "Facebook",
                    value: "50 Mbps",
                  ),
                  NameCard(
                    name: "FTP",
                    value: "100 Mbps",
                  ),
                ],
              ),
            ),
            DefaultButton(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) {
                      return PackageOfferPage();
                    }),
                  );
                },
                text: "Subscribe"),
            SizedBox(height: 16),
            SecondaryButton(
                press: () {
                  Navigator.pop(context);
                },
                text: "Back to packages"),
          ],
        ),
      ),
    );
  }
}
