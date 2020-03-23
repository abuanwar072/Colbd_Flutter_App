import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:flutter/material.dart';

class PackageInfoCard extends StatelessWidget {
  final String packageName;
  final int price;
  final int speed;
  final Function press;

  const PackageInfoCard({
    @required this.packageName,
    @required this.press,
    @required this.price,
    @required this.speed,
    Key key,
  }) : super(key: key);

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
        height: sizingInformation.localWidgetSize.width * .26,
        margin: EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(2, 5),
              blurRadius: 10,
              color: kGeayTextColor.withOpacity(0.3),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                // height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      packageName,
                      style: Theme.of(context).textTheme.title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      "$price TK Monthly",
                      style: Theme.of(context).textTheme.body1.copyWith(
                            color: kGeayTextColor,
                          ),
                    ),
                    // SecondaryButton(press: press, text: "Details")
                    Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: press,
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: kSecondaryButtonColor,
                          ),
                          child: Text("Details".toUpperCase()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: sizingInformation.localWidgetSize.width * .3,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                gradient: kDefaultButtonColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "$speed",
                    style: Theme.of(context).textTheme.display3.copyWith(
                        color: kWhiteColor,
                        fontWeight: FontWeight.bold,
                        height: 1),
                  ),
                  Text(
                    "Mpbs",
                    style: Theme.of(context).textTheme.subhead.copyWith(
                          fontWeight: FontWeight.bold,
                          height: .8,
                          color: kWhiteColor.withOpacity(0.6),
                        ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
