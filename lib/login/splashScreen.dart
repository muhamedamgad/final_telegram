import 'package:flutter/material.dart';
import 'dart:async';
import 'package:final_telegram/home/homeScreen1.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 1),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen1())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
            child: Image.asset(
          'images/telegram.jpg',
          width: 300,
          height: 150,
        )),
      ),
    );
  }
}
