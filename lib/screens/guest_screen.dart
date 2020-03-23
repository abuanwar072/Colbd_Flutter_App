import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:colbd_app/widgets/package_small_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GuestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Colbd".toUpperCase())),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                      gradientColor: kGradientButtonColorBlue,
                    ),
                    PackageSmallCard(
                      press: () {},
                      speed: "20",
                      price: "1250",
                      gradientColor: kGradientButtonColorSkyblue,
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
              // height: 385,
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
                    icon: kNewConnectionSvg,
                    text: "New Connection",
                  ),
                  ShortcutCard(
                    icon: kMapSvg,
                    text: "Coversge",
                  ),
                  ShortcutCard(
                    icon: kChatSvg,
                    text: "Live Chat",
                  ),
                  ShortcutCard(
                    icon: kReferenceSvg,
                    text: "Refer & Earn",
                  ),
                  ShortcutCard(
                    icon: kContactSvg,
                    text: "Contact Us",
                  ),
                  ShortcutCard(
                    icon: kAboutSvg,
                    text: "About Us",
                  ),
                  ShortcutCard(
                    icon: kOffersSvg,
                    text: "Offers",
                  ),
                  ShortcutCard(
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

class ShortcutCard extends StatelessWidget {
  final String icon;
  final String text;

  const ShortcutCard({Key key, this.icon, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(builder: (context, boxSizing) {
      var sizingInformation = SizingInformation(
        orientation: mediaQuery.orientation,
        deviceType: getDeviceType(mediaQuery),
        screenSize: mediaQuery.size,
        localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
      );
      return Container(
        width: sizingInformation.localWidgetSize.width * .33,
        height: sizingInformation.localWidgetSize.width * .38,
        padding: const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 8),
        decoration: BoxDecoration(
          border: Border(
              right: BorderSide(
                color: kSecondaryButtonColor,
              ),
              bottom: BorderSide(
                color: kSecondaryButtonColor,
              )),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SvgPicture.asset(
              icon,
              width: sizingInformation.localWidgetSize.width * .18,
            ),
            SizedBox(height: sizingInformation.localWidgetSize.width * .03),
            Text(
              text.toUpperCase(),
              maxLines: 2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      );
    });
  }
}
