import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/progress_Indicator.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatefulWidget {
  @override
  _OtpScreenState createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  String pin1;
  String pin2;
  String pin3;
  String pin4;
  final FocusNode pin1Focous = FocusNode();
  final FocusNode pin2Focous = FocusNode();
  final FocusNode pin3Focous = FocusNode();
  final FocusNode pin4Focous = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      body: Padding(
        padding: EdgeInsets.only(
            left: 16, top: MediaQuery.of(context).size.height * .1, right: 16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Verify Yourself".toUpperCase(),
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 16),
            Text("Pin that sent to your number ....467"),
            SizedBox(height: 10),
            MyProgressIndicator(done: .66),
            kHight,
            kHight,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    gradient: pin1 == null
                        ? LinearGradient(colors: [Colors.white, Colors.white])
                        : kDefaultButtonColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      kShadowLight,
                    ],
                  ),
                  child: TextField(
                    focusNode: pin1Focous,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        pin1 = value;
                      });
                      pin1Focous.unfocus();
                      pin2Focous.requestFocus();
                      // FocusScope.of(context).requestFocus(pin2Focous);
                    },
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pin1 == null ? kTextColor : kWhiteColor,
                    ),
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    gradient: pin2 == null
                        ? LinearGradient(colors: [Colors.white, Colors.white])
                        : kDefaultButtonColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      kShadowLight,
                    ],
                  ),
                  child: TextField(
                    focusNode: pin2Focous,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        pin2 = value;
                      });
                      pin2Focous.unfocus();
                      pin3Focous.requestFocus();
                    },
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pin2 == null ? kTextColor : kWhiteColor,
                    ),
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    gradient: pin3 == null
                        ? LinearGradient(colors: [Colors.white, Colors.white])
                        : kDefaultButtonColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      kShadowLight,
                    ],
                  ),
                  child: TextField(
                    focusNode: pin3Focous,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        pin3 = value;
                      });
                      pin3Focous.unfocus();
                      pin4Focous.requestFocus();
                    },
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pin3 == null ? kTextColor : kWhiteColor,
                    ),
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    // color: kWhiteColor,
                    gradient: pin4 == null
                        ? LinearGradient(colors: [Colors.white, Colors.white])
                        : kDefaultButtonColor,
                    shape: BoxShape.circle,
                    boxShadow: [
                      kShadowLight,
                    ],
                  ),
                  child: TextField(
                    textInputAction: TextInputAction.done,
                    focusNode: pin4Focous,
                    autofocus: true,
                    onChanged: (value) {
                      setState(() {
                        pin4 = value;
                      });
                    },
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: pin4 == null ? kTextColor : kWhiteColor,
                    ),
                    maxLength: 1,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      counterText: "",
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
