import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PeopleNearby extends StatefulWidget {
  @override
  _PeopleNearbyState createState() => _PeopleNearbyState();
}

class _PeopleNearbyState extends State<PeopleNearby> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(252, 255, 254, 1),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Padding(
              padding: EdgeInsets.only(top: 40, left: 10),
              child: Icon(
                Icons.arrow_back,
                color: Theme.of(context).disabledColor,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Center(
              child: Container(
                  width: 200,
                  height: 200,
                  child: Image.network(
                      'https://image.freepik.com/free-vector/illustration-human-avatar-using-technology_53876-17455.jpg')),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
              child: Text(
            'People Nearby',
            style: TextStyle(
              fontSize: 20,
            ),
          )),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: Text(
                'Quickly add people nearby who are viewing this'
                ' section and discover local group chats.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).disabledColor),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: EdgeInsets.only(right: 30, left: 30),
            child: Center(
              child: Text(
                'Please switch on location access to enable this '
                'feature.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).disabledColor),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Center(
            child: Container(
              width: 120,
              height: 40,
              child: Center(
                  child: Text(
                'Allow Access',
                style: TextStyle(color: Theme.of(context).canvasColor),
              )),
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          )
        ],
      ),
    );
  }
}
