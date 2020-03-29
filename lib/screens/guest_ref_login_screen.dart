import 'package:colbd_app/constant.dart';
import 'package:colbd_app/screens/refer_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';

class GuestReferenceLogin extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: defaultAppBar(context),
      bottomNavigationBar: defaultBottonNavBar(),
      body: Padding(
        padding: kPading,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Enter your number".toUpperCase(),
              style: Theme.of(context).textTheme.headline,
            ),
            Text("Number that you privide us, while creating your refer id"),
            // kHight,
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Form(
              key: _formKey,
              child: TextFormField(
                keyboardType: TextInputType.phone,
                onChanged: (value) {
                  // _firstName = value;
                },
                textInputAction: TextInputAction.done,
                validator: (value) {
                  if (value.isEmpty) {
                    return "Please enter your Number";
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: "Phone Number".toUpperCase(),
                    helperText: "11 digit number (01718.....)"),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .1),
            Center(
                child: GradientIconButton(
                    press: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return ReferScreen();
                      }));
                    },
                    text: "Next"))
          ],
        ),
      ),
    );
  }
}
