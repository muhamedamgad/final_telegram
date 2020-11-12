import 'package:flutter/material.dart';

class RespondWithText extends StatefulWidget {
  @override
  _RespondWithTextState createState() => _RespondWithTextState();
}

class _RespondWithTextState extends State<RespondWithText> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
              )),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 190),
            child: Center(
                child: Text(
              'Respond with Text',
              style: TextStyle(
                fontSize: 18,
              ),
            )),
          ),
        ],
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              decoration:
                  InputDecoration(hintText: '   Can’t talk now. What’s up?',),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              decoration:
                  InputDecoration(hintText: '   I ’ll call you right back.'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              decoration: InputDecoration(hintText: '   I ’ll call you later.'),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                hintText: '   Can’t talk now. Call me later?',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'These quick responses will be available when you '
              'respond to an incoming call with a Telegram message '
              'Change them to say anything you like.',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          )
        ],
      ),
    );
  }
}
