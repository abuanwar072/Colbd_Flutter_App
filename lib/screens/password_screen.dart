import 'package:colbd_app/constant.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/progress_Indicator.dart';
import 'package:flutter/material.dart';

class PaswordScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
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
              "Enter your pin".toUpperCase(),
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 16),
            Text("5 digit pin that you set for your account"),
            SizedBox(height: 10),
            MyProgressIndicator(done: 1),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Form(
              key: _formKey,
              child: TextFormField(
                validator: (value) {
                  Pattern pattern = r'^[0-9]+(?:[0-9]+)*$';
                  RegExp regex = new RegExp(pattern);
                  if (value.isEmpty) {
                    return "Please enter your PIN";
                  } else if (!regex.hasMatch(value)) {
                    return "Invalid PIN, Number only";
                  }
                  return null;
                },
                autofocus: true,
                keyboardType: TextInputType.number,
                obscureText: true,
                maxLength: 5,
                decoration: InputDecoration(
                  fillColor: kWhiteColor,
                  hintText: "Enter Your PIN",
                ),
              ),
            ),
            SizedBox(height: 10),
            Center(
                child: DefaultButton(
                    press: () {
                      if (_formKey.currentState.validate()) {
                        // print(_userId);
                        // Navigator.push(context,
                        //     MaterialPageRoute(builder: (context) {
                        //   return PaswordScreen();
                        // }));
                      }
                    },
                    text: "login")),
            SizedBox(height: 10),
            Center(
              child: FlatButton(
                onPressed: () {},
                child: Text(
                  "Forgot your PIN?",
                  style: Theme.of(context).textTheme.body2,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
