import 'dart:async';

import 'package:colbd_app/model/welcome.dart';
import 'package:colbd_app/screens/login_screen.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  int _currentPage = 0;
  final _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 2) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: _onPageChanged,
                itemCount: welcomeList.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SvgPicture.asset(
                        welcomeList[index].image,
                        height: MediaQuery.of(context).size.height * .5,
                      ),
                      Text(
                        welcomeList[index].title,
                        style: Theme.of(context).textTheme.headline,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(welcomeList[index].discription),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, bottom: 20),
              child: Column(
                children: <Widget>[
                  DefaultButton(
                      press: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreenGetId();
                        }));
                      },
                      text: "Sign Up with colid"),
                  SizedBox(
                    height: 10,
                  ),
                  SecondaryButton(press: () {}, text: "Continue as guest"),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
