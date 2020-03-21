import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:flutter/widgets.dart';

class MyProgressIndicator extends StatelessWidget {
  final double done;

  const MyProgressIndicator({Key key, this.done = 1.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return LayoutBuilder(
      builder: (context, boxSizing) {
        var sizingInformation = SizingInformation(
          orientation: mediaQuery.orientation,
          deviceType: getDeviceType(mediaQuery),
          screenSize: mediaQuery.size,
          localWidgetSize: Size(boxSizing.maxWidth, boxSizing.maxHeight),
        );
        return Container(
          height: 10,
          width: sizingInformation.localWidgetSize.width * done,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: kBlueColor),
        );
      },
    );
  }
}
