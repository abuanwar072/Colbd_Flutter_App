import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/info_small_card.dart';
import 'package:colbd_app/widgets/shortcut_card.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, right: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              InfoSmallaCard(
                date: "2/5/20",
                id: "Id2456",
                name: "Anwar Abir",
                image:
                    "https://www.atlassian.com/dam/jcr:ba03a215-2f45-40f5-8540-b2015223c918/Max-R_Headshot%20(1).jpg",
              ),
              Text(
                "ShortCuts".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
              SizedBox(height: 8),
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
                      press: () {},
                      icon: kInfoSvg,
                      text: "My Info",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kPaymentSvg,
                      text: "Payment",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kPayOtherSvg,
                      text: "Pay for other",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kHistorySvg,
                      text: "History",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kConnectionShifSvg,
                      text: "Connection Shift",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kMigrationSvg,
                      text: "Migration",
                    ),
                    ShortcutCard(
                      press: () {},
                      icon: kSuspentionSvg,
                      text: "Suspention",
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
                      press: () {},
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
                  ],
                ),
              ),
              SizedBox(height: 50)
            ],
          ),
        ),
      ),
    );
  }
}
