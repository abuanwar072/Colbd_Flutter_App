import 'package:colbd_app/constant.dart';
import 'package:flutter/material.dart';

class PackageSmallCard extends StatelessWidget {
  final String speed;
  final String price;
  final Gradient gradientColor;
  final Function press;

  const PackageSmallCard({
    Key key,
    @required this.speed,
    @required this.price,
    @required this.gradientColor,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: EdgeInsets.only(right: 16),
        width: 230,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          gradient: gradientColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              children: <Widget>[
                Text(
                  speed,
                  style: Theme.of(context)
                      .textTheme
                      .display2
                      .copyWith(color: kWhiteColor),
                ),
                Center(
                  child: Text(
                    "Mbps",
                    style: TextStyle(
                        color: kWhiteColor.withOpacity(.5),
                        fontWeight: FontWeight.bold,
                        height: .7),
                  ),
                )
              ],
            ),
            Container(
              height: 60,
              width: 1,
              color: kWhiteColor,
            ),
            Column(
              children: <Widget>[
                Text(
                  "$price TK",
                  style: Theme.of(context).textTheme.display1.copyWith(
                        color: kWhiteColor,
                      ),
                ),
                Text(
                  "Monthaly",
                  style: TextStyle(
                      color: kWhiteColor.withOpacity(.5),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
