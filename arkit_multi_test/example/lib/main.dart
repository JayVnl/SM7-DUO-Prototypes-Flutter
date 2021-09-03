import 'package:flutter/material.dart';
import 'helloWorldScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ARKit Flutter App',
      home: HelloWorldScreen(),
    );
  }
}


