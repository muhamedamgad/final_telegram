import 'package:final_telegram/home/homeScreen1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:final_telegram/login/loginScreen1.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen1(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color.fromRGBO(188, 188, 188, 1),
        primaryColor: Color.fromRGBO(67, 163, 220, 1),
        canvasColor: Color.fromRGBO(249, 253, 255, 1),
        errorColor: Color.fromRGBO(81, 125, 162, 1),
        cardColor: Color.fromRGBO(240, 240, 240, 1),
        cursorColor: Color.fromRGBO(105, 105, 105, 1),
        hoverColor: Color.fromRGBO(169, 121, 130, 1),
        disabledColor: Color.fromRGBO(150, 150, 150, 1),
        dividerColor: Color.fromRGBO(240, 240, 240, 1),
        focusColor: Color.fromRGBO(245, 245, 245, 1),
        hintColor: Color.fromRGBO(165, 177, 186, 1),
      ),
    );
  }
}
