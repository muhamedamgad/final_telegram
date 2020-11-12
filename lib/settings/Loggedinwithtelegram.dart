import 'package:flutter/material.dart';

import 'Privacy.dart';

class Loggedinwith extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LoggedinwithState();
  }
}

class _LoggedinwithState extends State<Loggedinwith> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Logged in with Telegram'),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Privacy(),
                  ));
            }),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: 200,
                height: 150,
                child: Icon(
                  Icons.devices,
                  size: 150,
                  color: Colors.grey,
                ),
                margin:
                    EdgeInsets.only(top: 150, bottom: 0, right: 00, left: 00),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 20),
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
                child: Text(
                  'NO active logins.',
                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 30, top: 15, right: 30, bottom: 0),
                child: Text(
                  'You can log in on websites that support signing in with Telegram.',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
