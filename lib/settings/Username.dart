import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

class Username extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _UsernameState();
  }
}

class _UsernameState extends State<Username> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Username'),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              }),
        ],
      ),
      body: Container(
        child: Column(
          children: [
//           Container(
//             height: 50,
//             margin: EdgeInsets.only(left: 10,),
//            // width: MediaQuery.of(context).size.width / 5 - 40,
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: TextField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Your Username'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, right: 20, bottom: 20),
              child: Text(
                'You can choose a username on Telegram. if you do, other people will be able to find you by this username and contact you without knowing your phone number. ',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                top: 0,
                right: 20,
              ),
              child: Text(
                'You can use a-z, 0-9 and underscores. Minimum length is 5 characters. ',
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
