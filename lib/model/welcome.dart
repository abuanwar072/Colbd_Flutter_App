import 'package:colbd_app/constant.dart';

class Welcome {
  final String title;
  final String discription;
  final String image;

  Welcome({this.title, this.discription, this.image});
}

List<Welcome> welcomeList = [
  Welcome(
    title: "Access Your Info through app",
    image: kAccessAccountSvg,
    discription:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters",
  ),
  Welcome(
    title: "Chat With us anytime",
    image: kOnlineMessagingSvg,
    discription:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters",
  ),
  Welcome(
    title: "Make payment through the app",
    image: kOnlinePaymentSvg,
    discription:
        "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters",
  ),
];
