// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_1/dabbe.dart';
import 'package:flutter_application_1/homepage.dart';

import 'grid_image.dart';

/*void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    ));*/
void main(List<String> args) {
  runApp(Home());
}

class Home extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: (Scaffold(
          appBar: AppBar(
            title: Text(
              'My Movie App',
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.amberAccent,
          ),
          backgroundColor: Colors.cyan,
          body: MyHomePage())),
    );
  }
}
