import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ShortcutCard extends StatelessWidget {
  final String icon;
  final String text;
  final Function press;

  const ShortcutCard(
      {Key key, @required this.icon, @required this.text, @required this.press})
      : super(key: key);

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
      return Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Container(
            width: sizingInformation.localWidgetSize.width * (1 / 3),
            height: sizingInformation.localWidgetSize.width * .38,
            padding:
                const EdgeInsets.only(left: 8, top: 16, right: 8, bottom: 8),
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
                  width: sizingInformation.localWidgetSize.width * .16,
                ),
                SizedBox(height: sizingInformation.localWidgetSize.width * .03),
                Text(
                  text.toUpperCase(),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
