import 'package:flutter/material.dart';

import 'Privacy.dart';
import 'TwoSteps.dart';

class Twostep extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TwostepState();
  }
}

class _TwostepState extends State<Twostep> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.grey,
            ),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Privacy(),
                  ));
            }),
      ),
      body: ListView(children: [
        Column(
          children: [
            Container(
              // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              width: 200,
              height: 150,
              child: Image.asset(
                'images/lock2.jpg',
              ),
              margin: EdgeInsets.only(top: 120, bottom: 0, right: 00, left: 00),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 0, top: 40),
              // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
              child: Text(
                'Two-Step Verification',
                style: TextStyle(fontSize: 22, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 40, top: 15, right: 30, bottom: 100),
              child: Text(
                'you can set a password that will be required when you log in on a new device in addition to the code you get in the SMS',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ),
            FlatButton(
              padding: const EdgeInsets.only(
                  left: 50, top: 10, bottom: 10, right: 50),
              color: Colors.lightBlue,
              child: Text(
                'Set Password',
                style: TextStyle(fontSize: 14, color: Colors.white),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TwoStep2()));
              },
            ),
          ],
        ),
      ]),
    );
  }
}
