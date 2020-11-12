import 'package:flutter/material.dart';

import 'Privacy.dart';

class TwoStep2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _TwoStep2State();
  }
}

class _TwoStep2State extends State<TwoStep2> {
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
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Privacy(),
                  ));
            }),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: 200,
                height: 150,
                child: Image.asset('images/monkey.jpg'),
                margin:
                    EdgeInsets.only(top: 10, bottom: 0, right: 00, left: 00),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 15, right: 20, bottom: 20),
                child: Text(
                  'Enter a password ',
                  style: TextStyle(fontSize: 25, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 80, top: 15, right: 80, bottom: 30),
                child: TextField(
                  autofocus: true,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                      hintText: 'Password',
                      suffixIcon: Icon(
                        Icons.remove_red_eye,
                        color: Colors.grey,
                      )),
                ),
              ),
              FlatButton(
                padding: const EdgeInsets.only(left: 60, top: 0, right: 60),
                color: Colors.lightBlue,
                child: Text(
                  'Continue',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
