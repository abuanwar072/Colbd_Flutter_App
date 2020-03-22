import 'package:colbd_app/screens/password_screen.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:colbd_app/widgets/progress_Indicator.dart';
import 'package:flutter/material.dart';

class LoginScreenGetId extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String _userId;
    return Scaffold(
      appBar: defaultAppBar(context),
      body: Padding(
        padding: EdgeInsets.only(
            left: 16, top: MediaQuery.of(context).size.height * .1, right: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Login".toUpperCase(),
              style: Theme.of(context).textTheme.display1,
            ),
            SizedBox(height: 16),
            Text("Please follow the easy 3 steps for login"),
            SizedBox(height: 10),
            MyProgressIndicator(done: .33),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Form(
              key: _formKey,
              child: TextFormField(
                onChanged: (value) {
                  _userId = value;
                },
                validator: (value) {
                  Pattern pattern = r'^[A-Za-z0-9]+(?:[_-][A-Za-z0-9]+)*$';
                  RegExp regex = new RegExp(pattern);
                  if (value.isEmpty) {
                    return "Please enter your COLID";
                  } else if (!regex.hasMatch(value)) {
                    return "Invalid COLID, Please check your id again";
                  }
                  return null;
                },
                decoration: InputDecoration(
                  hintText: "User Id".toUpperCase(),
                ),
              ),
            ),
            SizedBox(height: 16),
            Center(
              child: GradientIconButton(
                  press: () {
                    if (_formKey.currentState.validate()) {
                      print(_userId);
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return PaswordScreen();
                      }));
                    }
                  },
                  text: "Next"),
            )
          ],
        ),
      ),
    );
  }
}
