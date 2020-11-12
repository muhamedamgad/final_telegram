import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:final_telegram/settings/newnumber.dart';

import 'settings.dart';

class Account extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _AccountState();
  }
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Settings(),
                  ));
            }),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                width: 200,
                height: 150,
                child: Image.asset('images/telegram.jpg'),
                margin:
                    EdgeInsets.only(top: 150, bottom: 0, right: 00, left: 00),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 40),
                // padding: EdgeInsets.symmetric(horizontal: 15, vertical: 200),
                child: Text(
                  'Change Number',
                  style: TextStyle(fontSize: 22, color: Colors.black),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 0, top: 15),
                child: Text(
                  '+20 106 6010293',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 60, top: 30, right: 60, bottom: 150),
                child: Text(
                  'You can change your Telegram number here. Your account and all your cloud data- messages, media, contacts, etc. will be moved to the new number. ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
              ),
              FlatButton(
                // padding:const EdgeInsets.only(left: 00, top: 30, right: 00),
                color: Colors.lightBlue,
                child: Text(
                  'Change Number',
                  style: TextStyle(fontSize: 14, color: Colors.white),
                ),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(
                            'Change number',
                          ),
                          content: Text(
                            'Users will see your new number if they have it in their address book or your privay settings allow them to see it.'
                            'You can modify this in Settings > Privacy and Security > Phone number.',
                            style: TextStyle(fontSize: 15),
                          ),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('CANCEL'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text(
                                'CHANGE',
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Newnumber(),
                                    ));
                              },
                            ),
                          ],
                        );
                      });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
