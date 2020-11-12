import 'package:final_telegram/settings/Logout.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/settings/PIN.dart';

class PassCode extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _PassCode();
  }
}

class _PassCode extends State<PassCode> {
  bool lock = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Passcode Lock'),
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              //  color: Colors.grey,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Logout(),
                  ));
            }),
      ),
      body: ListView(children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            // border: Border.all(color: Colors.black26, width: .5),
          ),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 20,
                ),
                child: ListTile(
                  title: Text('Sync Contacts'),
                  trailing: Switch(
                    activeColor: Colors.white,
                    activeTrackColor: Colors.lightBlueAccent,
                    value: lock,
                    onChanged: (bool L) {

                      setState(() {
                        lock = L;
                        print(lock);
                      });
                    },
                  ),
                onTap: (){ Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => PIN(),
                    ));},
                ),
              ),
              RaisedButton(
                color: Colors.white,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 0, right: 30),
                      child: ListTile(
                        title: Text(
                          'Change Passcode',
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                  ],
                ),
                onPressed: () {},
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'When you set up an additional passcode, a lock icon wil appear on the chats page. Tap and unlock your Telegram app. ',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, top: 10),
                child: Text(
                  'Note if you forget the passcode, you`ll need to delete and reinstall the app. All secret chats will be lost.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
