import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/progress_Indicator.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
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
          ],
        ),
      ),
    );
  }
}
