import 'package:colbd_app/constant.dart';
import 'package:flutter/material.dart';

class NameCard extends StatelessWidget {
  final String name;
  final String value;

  const NameCard({
    Key key,
    @required this.name,
    @required this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: kBackgroundColor,
            width: 2,
          ),
        ),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Text(
              name,
              style: Theme.of(context).textTheme.subhead.copyWith(
                    fontWeight: FontWeight.bold,
                    color: kGeayTextColor,
                  ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Text(
              value,
              style: Theme.of(context).textTheme.subhead,
            ),
          ),
        ],
      ),
    );
  }
}
