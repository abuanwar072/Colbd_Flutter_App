import 'package:flutter/material.dart';

const kSecondaryButtonColor = Color(0xFFE0E2E9);
const kDefaultButtonColor = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF427DFB),
    Color(0xFF3E58F7),
  ],
);
const kGradientButtonColorBlack = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF868F96),
    Color(0xFF596164),
  ],
);
const kGradientButtonColorBlue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF667EEA),
    Color(0xFF764BA2),
  ],
);
const kGradientButtonColorSkyblue = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFA1C4FD),
    Color(0xFFC2E9FB),
  ],
);
const kGradientButtonColorPeach = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFFFF9A9E),
    Color(0xFFFAD0C4),
  ],
);
const Color kBackgroundColor = Color(0xFFF3F6FD);
const Color kTextColor = Color(0xFF313862);
const Color kWhiteColor = Color(0xFFFFFFFF);
const Color kBlueColor = Color(0xFF427DFB);
const Color kGeayTextColor = Color(0xFF70757B);

// My themeData

final ThemeData whiteTheme = ThemeData(
  scaffoldBackgroundColor: kBackgroundColor,
  accentColor: kBlueColor,
  textTheme: TextTheme(
    button: TextStyle(
      fontWeight: FontWeight.bold,
      color: kWhiteColor,
    ),
  ),
  appBarTheme: AppBarTheme(
    color: kBackgroundColor,
    brightness: Brightness.light,
    textTheme: TextTheme(
      title: TextStyle(
        color: kTextColor,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  fontFamily: "Nunito",
  // primarySwatch: Colors.blue,
);
