import 'package:colbd_app/constant.dart';
import 'package:colbd_app/screens/contact_us_screen.dart';
import 'package:colbd_app/screens/package_list_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/package_small_card.dart';
import 'package:colbd_app/widgets/shortcut_card.dart';
import 'package:flutter/material.dart';

class GuestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Colbd".toUpperCase())),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: ListView(
          children: <Widget>[
            Text(
              "Packages".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    PackageSmallCard(
                      press: () {},
                      speed: "10",
                      price: "650",
                      gradientColor: kGradientButtonColorBlack,
                    ),
                    PackageSmallCard(
                      press: () {},
                      speed: "15",
                      price: "950",
                      gradientColor: kGradientButtonColorPeach,
                    ),
                    PackageSmallCard(
                      press: () {},
                      speed: "20",
                      price: "1250",
                      gradientColor: kGradientButtonColorSkyblue,
                    ),
                    PackageSmallCard(
                      press: () {},
                      speed: "25",
                      price: "1500",
                      gradientColor: kGradientButtonColorBlue,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 16),
              child: Text(
                "Shortcuts".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [
                  kShadow,
                ],
              ),
              child: Wrap(
                direction: Axis.horizontal,
                children: <Widget>[
                  ShortcutCard(
                    press: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return PackageList();
                          },
                        ),
                      );
                    },
                    icon: kNewConnectionSvg,
                    text: "New Connection",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kMapSvg,
                    text: "Coversge",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kChatSvg,
                    text: "Live Chat",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kReferenceSvg,
                    text: "Refer & Earn",
                  ),
                  ShortcutCard(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ContactUsScreen();
                      }));
                    },
                    icon: kContactSvg,
                    text: "Contact Us",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kAboutSvg,
                    text: "About Us",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kOffersSvg,
                    text: "Offers",
                  ),
                  ShortcutCard(
                    press: () {},
                    icon: kConnectionStatusSvg,
                    text: "New Request status",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
