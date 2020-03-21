import 'package:colbd_app/constant.dart';
import 'package:flutter/material.dart';

class DefaultButton extends StatelessWidget {
  final String text;
  final Function press;
  const DefaultButton({
    @required this.press,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        gradient: kDefaultButtonColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        color: Colors.transparent,
        child: InkWell(
          onTap: press,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            child: Center(
                child: Text(
              text.toUpperCase(),
              style: Theme.of(context).textTheme.button,
            )),
          ),
        ),
      ),
    );
  }
}

// Secondary Button
class SecondaryButton extends StatelessWidget {
  final String text;
  final Function press;

  const SecondaryButton({
    @required this.press,
    @required this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .6,
      child: FlatButton(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
        onPressed: press,
        color: kSecondaryButtonColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          text.toUpperCase(),
          style: Theme.of(context).textTheme.button.copyWith(color: kTextColor),
        ),
      ),
    );
  }
}
