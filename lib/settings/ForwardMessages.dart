import 'package:flutter/material.dart';

class ForwardMessages extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _ForwardMessages();
  }
}

class _ForwardMessages extends State<ForwardMessages> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Phone Number'),
      ),
      body: ListView(children: [
        Container(
          // height: 90,

          decoration: BoxDecoration(color: Colors.white),

          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 10),
              child: Text(
                ' Who can add a link to my account when forwarding my messages?',
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
            'Messages you send will not link back to your account when forwarded by other users.',
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
                  title: Text('Never Allow'),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 10),
          child: Text(
            'You can add users or entire groups as exceptions that will override the settings above',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
