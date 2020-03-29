import 'package:colbd_app/screens/otp_screen.dart';
import 'package:colbd_app/widgets/botton_navigation.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:colbd_app/widgets/default_appbar.dart';
import 'package:flutter/material.dart';
import 'package:colbd_app/constant.dart';

class NewConncetionFormScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  final FocusNode _firstNameFocusNode = FocusNode();
  final FocusNode _lastNameFocusNode = FocusNode();
  final FocusNode _pnFocusNode = FocusNode();
  final FocusNode _emailFocusNode = FocusNode();
  final FocusNode _disticFocusNode = FocusNode();
  final FocusNode _thanaFocusNode = FocusNode();
  final FocusNode _addressFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    // String _firstName;
    // String _lastName;
    // String _email;
    // int _pnNumber;
    // String _distic;
    // String _thana;
    // String _address;

    _fieldFocusChange(
        BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
      currentFocus.unfocus();
      FocusScope.of(context).requestFocus(nextFocus);
    }

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
                "About You".toUpperCase(),
                style: Theme.of(context).textTheme.headline,
              ),
              kHight,
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      onChanged: (value) {
                        // _firstName = value;
                      },
                      focusNode: _firstNameFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _firstNameFocusNode, _lastNameFocusNode);
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
                        hintText: "FIrst Name".toUpperCase(),
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      onChanged: (value) {
                        // _lastName = value;
                      },
                      focusNode: _lastNameFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _lastNameFocusNode, _pnFocusNode);
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Last Name".toUpperCase(),
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      keyboardType: TextInputType.phone,
                      onChanged: (value) {
                        // _firstName = value;
                      },
                      focusNode: _pnFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _pnFocusNode, _emailFocusNode);
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
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (value) {
                        // _email = value;
                      },
                      focusNode: _emailFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _emailFocusNode, _disticFocusNode);
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "EMAIL (optional)",
                        // labelText: "Email",
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      onChanged: (value) {
                        // _lastName = value;
                      },
                      focusNode: _disticFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _disticFocusNode, _thanaFocusNode);
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your distic";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Distic".toUpperCase(),
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      onChanged: (value) {
                        // _lastName = value;
                      },
                      focusNode: _thanaFocusNode,
                      onFieldSubmitted: (term) {
                        _fieldFocusChange(
                            context, _thanaFocusNode, _addressFocusNode);
                      },
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your thna";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Thana".toUpperCase(),
                      ),
                    ),
                    kHightSmall,
                    TextFormField(
                      onChanged: (value) {
                        // _lastName = value;
                      },
                      focusNode: _addressFocusNode,
                      textInputAction: TextInputAction.done,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter your address";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Address".toUpperCase(),
                        helperText: "Indetails need to add sample",
                      ),
                    ),
                    kHight,
                    kHightSmall,
                    GradientIconButton(
                      press: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return OtpScreen();
                          }),
                        );
                      },
                      text: "Next",
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
