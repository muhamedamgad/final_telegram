import 'package:final_telegram/settings/PassCode.dart';
import 'package:flutter/material.dart';

class PIN extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PINState();
  }
}

class _PINState extends State<PIN> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('PIN'),
        elevation: 0,
        // backgroundColor: Colors.white,
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PassCode(),
                    ));
              }),
        ],
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              //  color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PassCode(),
                  ));
            }),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, top: 50, right: 20, bottom: 20),
                child: Text(
                  'Enter a passcode ',
                  style: TextStyle(fontSize: 20, color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, top: 15, right: 60, bottom: 30),
                child: TextField(
                  keyboardType: TextInputType.number,
                  autofocus: true,

                  cursorColor: Colors.black,

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
