import 'package:colbd_app/constant.dart';
import 'package:colbd_app/ui/sizing_information.dart';
import 'package:colbd_app/ui/ui_utils.dart';
import 'package:colbd_app/widgets/buttons.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'COLBD',
      debugShowCheckedModeBanner: false,
      theme: whiteTheme,
      home: MyHomePage(title: 'Colbd'.toUpperCase()),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              DefaultButton(
                press: () {},
                text: "Sign Up",
              ),
              SizedBox(
                height: 10,
              ),
              SecondaryButton(
                press: () {},
                text: "Sign In",
              ),
              GradientIconButton(
                press: () {},
                text: "Next",
              ),
              SizedBox(
                height: 10,
              ),
              ProgressIndicator(),
              SizedBox(
                height: 10,
              ),
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.display1,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final double done;

  const ProgressIndicator({Key key, this.done = 1.0}) : super(key: key);
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
