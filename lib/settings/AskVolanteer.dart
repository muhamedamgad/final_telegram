import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AskAVolunteer extends StatefulWidget {
  @override
  _AskAVolunteerState createState() => _AskAVolunteerState();
}

class _AskAVolunteerState extends State<AskAVolunteer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).errorColor,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 20),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              Container(
                width: 45,
                height: 45,
                child: Image.asset('assets/telegram.png'),
              ),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.only(right: 150, top: 5, bottom: 5),
                child: Column(
                  children: <Widget>[
                    Text(
                      'دعم المتطوعين',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 40),
                      child: Text(
                        'Support',
                        style: TextStyle(fontSize: 13),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_vert),
              )
            ],
          )
        ],
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Image.asset(
              'assets/chat-background.jpg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Container(
              width: 130,
              height: 50,
              decoration: BoxDecoration(
                  color: Theme.of(context).hintColor,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                  child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text(
                  'Got a question about Telegram?',
                  style: TextStyle(
                      color: Theme.of(context).canvasColor, fontSize: 15),
                ),
              )),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 670),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Theme.of(context).canvasColor,
              child: Center(
                child: Text(
                  'START',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
