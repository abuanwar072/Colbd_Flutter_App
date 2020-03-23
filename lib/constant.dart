import 'package:flutter/material.dart';

// All Svg files here
const String kAccessAccountSvg = "asstes/images/access_account.svg";
const String kOnlineMessagingSvg = "asstes/images/online_messaging.svg";
const String kOnlinePaymentSvg = "asstes/images/online_payments.svg";
const String kNewConnectionSvg = "asstes/icons/new_connection.svg";
const String kChatSvg = "asstes/icons/chat.svg";
const String kConnectionStatusSvg = "asstes/icons/connection_status.svg";
const String kContactSvg = "asstes/icons/contact.svg";
const String kAboutSvg = "asstes/icons/about.svg";
const String kMapSvg = "asstes/icons/map.svg";
const String kOffersSvg = "asstes/icons/offers.svg";
const String kReferenceSvg = "asstes/icons/reference.svg";
const String kConnectionShifSvg = "asstes/icons/connection_shift.svg";
const String kHistorySvg = "asstes/icons/history.svg";
const String kInfoSvg = "asstes/icons/info.svg";
const String kMigrationSvg = "asstes/icons/migrations.svg";
const String kPayOtherSvg = "asstes/icons/pay_others.svg";
const String kPaymentSvg = "asstes/icons/payment.svg";
const String kSuspentionSvg = "asstes/icons/suspention.svg";
const String kTicketSvg = "asstes/icons/ticket.svg";

// Color Code here
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
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF537895),
    Color(0xFF09203f),
  ],
);
const kGradientButtonColorPeach = LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment.bottomRight,
  colors: [
    Color(0xFF7b4397),
    Color(0xFFdc2430),
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
    iconTheme: IconThemeData(color: kTextColor),
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

// Shadows
final BoxShadow kShadow = BoxShadow(
  offset: Offset(2, 4),
  blurRadius: 10,
  color: kGeayTextColor.withOpacity(.5),
);

final BoxShadow kShadowLight = BoxShadow(
  blurRadius: 10,
  offset: Offset(2, 4),
  color: kGeayTextColor.withOpacity(.3),
);
