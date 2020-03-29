import 'package:colbd_app/screens/guest_ref_login_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:colbd_app/constant.dart';

class CreateReference extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _fullNameFocus = FocusNode();
  final _pnNumberFocus = FocusNode();
  final _bkashNumberFocus = FocusNode();
  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: kPading,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "Refer your friend".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
              kHightSmall,
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: kTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: "Note that: ",
                      style: TextStyle(color: Colors.redAccent),
                    ),
                    TextSpan(
                      text:
                          "When your friend active his/her connection by using your refer id. Then you will get your payment through bKash or mobile recharge that you selected.",
                    ),
                  ],
                ),
              ),
              kHight,
              Text(
                "How much you can earn".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
              kHightSmall,
              Container(
                height: 65,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    ReferEarnCard(
                      money: "100",
                      number: '1',
                      gradientColor: kGradientButtonColorSkyblue,
                    ),
                    ReferEarnCard(
                      money: "200",
                      number: '2',
                      gradientColor: kGradientButtonColorBlue,
                    ),
                    ReferEarnCard(
                      money: "300",
                      number: '3',
                    ),
                    ReferEarnCard(
                      money: "500",
                      number: '4',
                      gradientColor: kGradientButtonColorPeach,
                    ),
                  ],
                ),
              ),
              kHight,
              Text(
                "Get your refer id".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
              kHightSmall,
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onChanged: (value) {
                        // _firstName = value;
                      },
                      focusNode: _fullNameFocus,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _fullNameFocus, _pnNumberFocus);
                      },
                      autofocus: true,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Full Name".toUpperCase(),
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        // _firstName = value;
                      },
                      focusNode: _pnNumberFocus,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _pnNumberFocus, _bkashNumberFocus);
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "Phone Number".toUpperCase(),
                          helperText: "11 digit number (01718.....)"),
                    ),
                    kHightSmall,
                    Row(
                      children: <Widget>[
                        Text("Pay with bKash"),
                        Switch(
                            activeColor: kBlueColor,
                            value: true,
                            onChanged: (value) {
                              value = !value;
                            }),
                      ],
                    ),
                    kHightSmall,
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        // _firstName = value;
                      },
                      focusNode: _bkashNumberFocus,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          hintText: "bKash Number".toUpperCase(),
                          helperText: "11 digit number (01718.....)"),
                    ),
                  ],
                ),
              ),
              kHight,
              kHightSmall,
              Center(child: DefaultButton(press: () {}, text: "Create New ID")),
              kHightSmall,
              Center(
                  child: SecondaryButton(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return GuestReferenceLogin();
                        }));
                      },
                      text: "Already have an ID"))
            ],
          ),
        ),
      ),
    );
  }
}

class ReferEarnCard extends StatelessWidget {
  final String number;
  final String money;
  final LinearGradient gradientColor;
  const ReferEarnCard({
    Key key,
    @required this.number,
    @required this.money,
    this.gradientColor = kGradientButtonColorBlack,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      margin: EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
        gradient: gradientColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            number,
            style: Theme.of(context)
                .textTheme
                .display1
                .copyWith(color: kWhiteColor),
          ),
          Container(
            height: 40,
            width: 1,
            color: kWhiteColor,
          ),
          Text(
            "$money TK",
            style: Theme.of(context)
                .textTheme
                .headline
                .copyWith(color: kWhiteColor),
          )
        ],
      ),
    );
  }
}
