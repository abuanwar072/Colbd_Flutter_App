import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/package_small_card.dart';
import 'package:flutter/material.dart';

class GuestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Colbd".toUpperCase())),
      body: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16),
        child: SingleChildScrollView(
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
            ],
          ),
        ),
      ),
    );
  }
}
