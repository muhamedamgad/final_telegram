import 'package:flutter/material.dart';
import 'package:final_telegram/settings/BlockUser.dart';

class Blocked extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _BlockedState();
  }
}

class _BlockedState extends State<Blocked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Blocked Users'),
      ),
      body: Container(
//      color: Colors.grey,
        child: Column(
          children: [
            RaisedButton(
              color: Colors.white,
              child: Container(
                // margin: EdgeInsets.only(left: 0, ),
                child: ListTile(
                  title:
                      Text('Block User', style: TextStyle(color: Colors.blue)),
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.blue,
                  ),
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BlockUser()));
              },
            ),
            Container(
              margin: EdgeInsets.only(left: 10, right: 10, top: 10),
              child: Text(
                'Blocked users wil not be able to contact you and wil not see your Last Seen time',
                style: TextStyle(color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}
