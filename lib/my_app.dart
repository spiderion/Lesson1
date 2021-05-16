import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color backgroundColor = Colors.red;

  @override
  Widget build(BuildContext context) {
    final widget = Scaffold(
        backgroundColor: backgroundColor,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Alice'),
              Text('Ion'),
              Text('Ai',style: TextStyle(color: Colors.white),),
              rowName(),
              button(),
            ],
          ),
        ));
    return widget;
  }

  Widget button() {
    return ElevatedButton(onPressed: onButtonPressed, child: Text('BUTTON'));
  }

  void onButtonPressed() {
    if (backgroundColor == Colors.red) {
      backgroundColor = Colors.blue;
    } else {
      backgroundColor = Colors.red;
    }
    setState(() {});
  }

  Row rowName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Alice'),
        SizedBox(width: 20),
        Text('Ion'),
        SizedBox(width: 20),
        Text('Ion'),
        SizedBox(width: 20),
        Text('Ion'),
      ],
    );
  }
}
