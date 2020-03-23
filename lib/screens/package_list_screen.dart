import 'package:colbd_app/screens/package_detail_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/package_info_car.dart';
import 'package:flutter/material.dart';

class PackageList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Packages".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(height: 16),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return PackageDetails();
                  }),
                );
              },
              price: 600,
              speed: 10,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 950,
              speed: 15,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 1250,
              speed: 20,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 1500,
              speed: 25,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 1800,
              speed: 30,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 2200,
              speed: 40,
            ),
            PackageInfoCard(
              packageName: "Package Name",
              press: () {},
              price: 2500,
              speed: 45,
            ),
            SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
