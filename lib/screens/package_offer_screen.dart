import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class PackageOfferPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: EdgeInsets.only(left: 16, top: 16, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Offers for you".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            SizedBox(height: 16),
            Expanded(
              child: ListView(
                children: <Widget>[
                  OfferCard(
                    month: 2,
                    price: 1000,
                    press: () {},
                  ),
                  OfferCard(
                    month: 3,
                    price: 800,
                    press: () {},
                  ),
                  OfferCard(
                    month: 4,
                    price: 500,
                    press: () {},
                  ),
                  OfferCard(
                    month: 6,
                    price: 0,
                    press: () {},
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

class OfferCard extends StatelessWidget {
  final int month;
  final int price;
  final Function press;
  const OfferCard({
    Key key,
    @required this.month,
    @required this.price,
    @required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, left: 16, bottom: 16),
      margin: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kWhiteColor,
        boxShadow: [kShadowLight],
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Text(
              "Pay $month month bill and installation charge will be $price TK",
              style: Theme.of(context).textTheme.subhead,
              maxLines: 2,
            ),
          ),
          InkWell(
            onTap: press,
            child: Container(
              margin: EdgeInsets.only(left: 8),
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              width: 100,
              decoration: BoxDecoration(
                color: kSecondaryButtonColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  bottomLeft: Radius.circular(25),
                ),
              ),
              child: Center(
                  child: Text(
                "Select".toUpperCase(),
                style: Theme.of(context)
                    .textTheme
                    .button
                    .copyWith(color: kTextColor),
              )),
            ),
          ),
        ],
      ),
    );
  }
}
