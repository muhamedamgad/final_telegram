import 'package:flutter/material.dart';

class LastSeen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LastSeen();
  }
}

class _LastSeen extends State<LastSeen> {
  int group = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('last Seen & Online'),
      ),
      body: ListView(children: [
        Container(
          // height: 90,

          decoration: BoxDecoration(color: Colors.white),

          child: Column(children: [
            Container(
              margin: EdgeInsets.only(top: 15, right: 150),
              child: Text(
                ' Who can see your last seen time?',
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
            'You won`t see last seen and online statuses for people with whom you don`t share yours . Approximate last seen will be shown instead (recently, within a week , within a month).',
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
                  title: Text('Always Share With'),
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        Container(
          margin: EdgeInsets.only(left: 10, right: 15, top: 10, bottom: 10),
          child: Text(
            'You can add users or entire groups as exceptions that will override the settings above.',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ]),
    );
  }
}
