import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class ReferScreen extends StatelessWidget {
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
              "Your Reffer ID".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .08),
            Center(
              child: FittedBox(
                child: Container(
                  alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * .6,
                  // height: 100,
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: kWhiteColor,
                    boxShadow: [kShadowLight],
                  ),
                  child: Text(
                    "ref_004",
                    style: Theme.of(context).textTheme.display1,
                  ),
                ),
              ),
            ),
            kHight,
            kHight,
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: kWhiteColor,
                boxShadow: [kShadowLight],
              ),
              child: Text(
                "You refer: 0 friends",
                style: Theme.of(context).textTheme.title,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
