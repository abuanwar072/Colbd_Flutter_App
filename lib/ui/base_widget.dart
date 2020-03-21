import 'package:colbd_app/ui/sizing_information.dart';
import 'package:flutter/material.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(
      BuildContext context, SizingInformation sizingInformation) builder;
  const BaseWidget({Key key, this.builder}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var sizingInformation = SizingInformation();
    return builder(context, sizingInformation);
  }
}
