import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:flutter/material.dart';

class InfoSmallaCard extends StatelessWidget {
  final String name;
  final String date;
  final String id;
  final String image;

  const InfoSmallaCard({
    Key key,
    this.name,
    this.date,
    this.id,
    this.image,
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
        margin: EdgeInsets.only(bottom: 16),
        height: sizingInformation.localWidgetSize.width * .21,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(40),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 3),
              blurRadius: 10,
              color: kGeayTextColor.withOpacity(.3),
            ),
          ],
        ),
        child: Row(
          children: <Widget>[
            Container(
              width: sizingInformation.localWidgetSize.width * .2,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    image,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      "Hi, $name",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.title,
                    ),
                    Text(
                      "Expired On: $date",
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              width: sizingInformation.localWidgetSize.width * .38,
              decoration: BoxDecoration(
                gradient: kDefaultButtonColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Center(
                child: Text(
                  id,
                  style: Theme.of(context)
                      .textTheme
                      .display1
                      .copyWith(color: kWhiteColor),
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
