import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  final double width;

  const DefaultButton({
    @required this.press,
    @required this.text,
    this.width = 0.6,
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
        width: sizingInformation.localWidgetSize.width * width,
        // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        decoration: BoxDecoration(
          gradient: kDefaultButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Material(
          borderRadius: BorderRadius.circular(10),
          color: Colors.transparent,
          child: InkWell(
            onTap: press,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Center(
                  child: Text(
                text.toUpperCase(),
                style: Theme.of(context).textTheme.button,
              )),
            ),
          ),
        ),
      );
    });
  }
}

// Secondary Button
class SecondaryButton extends StatelessWidget {
  final String text;
  final Function press;
  final double width;

  const SecondaryButton({
    @required this.press,
    @required this.text,
    this.width = .6,
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
        width: sizingInformation.localWidgetSize.width * width,
        child: FlatButton(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          onPressed: press,
          color: kSecondaryButtonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            text.toUpperCase(),
            style:
                Theme.of(context).textTheme.button.copyWith(color: kTextColor),
          ),
        ),
      );
    });
  }
}

// Button with Icon
class GradientIconButton extends StatelessWidget {
  final String text;
  final Function press;
  final IconData icon;
  const GradientIconButton({
    @required this.press,
    @required this.text,
    this.icon = Icons.arrow_forward_ios,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        gradient: kDefaultButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  text.toUpperCase(),
                  style: Theme.of(context).textTheme.button,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  icon,
                  color: kWhiteColor,
                  size: 18,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
