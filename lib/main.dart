import 'package:demo/Dice.dart';
import 'package:demo/Home.dart';
import 'package:demo/Videos.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'DemoPage.dart';
import 'Form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"My Demo App",
      home: Home(),
      routes: {
        'home':(context)=>Home(),
        'videos':(context)=>Videos(),
        'demo':(context)=>MyHomePage(),
      },
    );
  }
}

