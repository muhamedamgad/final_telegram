import 'package:flutter/material.dart';

class Calls extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Calls();
  }
}

class _Calls extends State<Calls> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Calls'),
      ),
      body: ListView(children: [
        Container(
          // height: 90,

          decoration: BoxDecoration(color: Colors.white),

          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 250),
              child: Text(
                ' Who can call me?',
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 30),
              child: ListTile(
                title: Text('Every Body'),
                leading: Radio(
                  value: 1,
                  groupValue: group,
                  onChanged: (T) {
                    print(T);

                    setState(() {
                      group = T;
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 30),
              child: ListTile(
                title: Text(
                  'My Contacts',
                ),
                leading: Radio(
                  value: 2,
                  groupValue: group,
                  onChanged: (T) {
                    print(T);

                    setState(() {
                      group = T;
                    });
                  },
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 30),
              child: ListTile(
                title: Text(
                  'Nobody ',
                ),
                leading: Radio(
                  value: 3,
                  groupValue: group,
                  onChanged: (T) {
                    print(T);

                    setState(() {
                      group = T;
                    });
                  },
                ),
              ),
            ),
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 10),
          child: Text(
            'You can restrict who can call you',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        RaisedButton(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 250, top: 15),
                child: Text(
                  ' Add Exceptions',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 0,),
                child: ListTile(
                  title: Text('Always Allow'),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        RaisedButton(
          elevation: 0,
          color: Colors.white,
          child: Container(
            // margin: EdgeInsets.only(left: 0, ),
            child: ListTile(
              title: Text('Never Allow'),
            ),
          ),
          onPressed: () {},
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 20),
          child: Text(
            'These users will or will not be able to call you regardless of the settings above',
            style: TextStyle(color: Colors.grey),
          ),
        ),
        RaisedButton(
          elevation: 0,
          color: Colors.white,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(right: 250, top: 15),
                child: Text(
                  ' Peer-to-Peer',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                // margin: EdgeInsets.only(left: 0,),
                child: ListTile(
                  title: Text('Use Peer-to-Peer with '),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
      ]),
    );
  }
}
