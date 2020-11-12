import 'package:flutter/material.dart';

import 'Privacy.dart';

class ActiveSessions extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ActiveSessionsState();
  }
}

class _ActiveSessionsState extends State<ActiveSessions> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Devices'),
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
                padding: const EdgeInsets.only(left: 0, top: 40),
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
                child: Text(
                  'NO other active sessions',
                  style: TextStyle(fontSize: 22, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 40, top: 15, right: 30, bottom: 0),
                child: Text(
                  'You can log in Telegram from other mobile, tablet and desktop devices, using the same phone number. All your data will be instantly synchronized.',
                  textAlign: TextAlign.center,
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
