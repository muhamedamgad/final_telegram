import 'package:flutter/material.dart';

class Groups extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Groups();
  }
}

class _Groups extends State<Groups> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Groups'),
      ),
      body: ListView(children: [
        Container(
          // height: 90,

          decoration: BoxDecoration(color: Colors.white),

          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 150),
              child: Text(
                ' Who can add me to group chats?',
                style: TextStyle(
                  color: Colors.blue,
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
          ]),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 10),
          child: Text(
            'You can restrict who can add you to groups and channels with granularprecision.',
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
            'These users will or will not be able to add you to groups and channels regardless of the settings above. ',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
