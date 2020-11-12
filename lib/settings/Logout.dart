import 'package:final_telegram/login/loginScreen1.dart';

import 'package:final_telegram/settings/Account.dart';
import 'package:final_telegram/settings/PassCode.dart';
import 'package:final_telegram/settings/AskVolanteer.dart';
import 'package:final_telegram/settings/datausages.dart';
import 'package:final_telegram/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/settings/Addanotheraccount.dart';

class Logout extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _LogoutState();
  }
}

class _LogoutState extends State<Logout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: (){Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Settings(),
                ));},

            child: Icon(Icons.arrow_back)),
        title: Text('Log Out'),
      ),
      body: ListView(children: [
        Container(
          // height: 405,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                child: Text(
                  'Alternative options',
                  style: TextStyle(
                      fontSize: 17,
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold),
                ),
                margin: EdgeInsets.only(left: 20, top: 15, bottom: 10),
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10),
                title: Text(
                  'Add another account',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                    'Contact other Telegram accounts and easily switch between them.'),
                leading: Icon(
                  Icons.person_add,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => AddAnother()));
                },
              ),
              Divider(
                height: .2,
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10),
                title: Text(
                  'Set a Passcode',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                    'Lock the app with a passcode so that others can`t open it.'),
                leading: Icon(
                  Icons.vpn_key,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PassCode()));
                },
              ),
              Divider(
                height: .2,
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10),
                title: Text(
                  'Clear Cache',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                subtitle: Text(
                    'Free up disk space on your devices; your media will stay in the cloud.'),
                leading: Icon(
                  Icons.delete_outline,
                  color: Colors.grey,
                ),
                onTap: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DataUsage(),
                    ));},
              ),
              Divider(
                height: .2,
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10),
                title: Text(
                  'Change Phone Number',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.black,
                  ),
                ),
                subtitle:
                    Text('Move your account chats and media to a new number.'),
                leading: Icon(
                  Icons.phonelink_lock,
                  color: Colors.grey,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Account()));
                },
              ),
              Divider(
                height: .2,
              ),
              ListTile(
                contentPadding:
                    EdgeInsets.only(bottom: 10, left: 10, right: 10),
                title: Text('Contact Support'),
                subtitle: Text(
                    'Tell us about any issues; logging out doesn`t usually help.'),
                leading: Icon(
                  Icons.help_outline,
                  color: Colors.grey,
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('Ask a Question'),
                          content: Container(
                            height: 180,
                            child: Column(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, right: 0, top: 0, bottom: 10),
                                  child: Text(
                                    'Please note that Telegram Support is done by volunteers. We try to respond as quickly as possible, but it may take a while',
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0, right: 0, top: 10, bottom: 0),
                                  child: Text(
                                      'Please take a lock at the Telegram FAQ: it has answers to most Questions and important tips for troubleshooting.'),
                                ),
                              ],
                            ),
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
                                'AsK A VOLUNTEER',
                              ),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) => AskAVolunteer()));
                              },
                            ),
                          ],
                        );
                      });
                },
              ),
              Divider(
                thickness: 15,
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(
//                  color: Colors.white,
                    // border: Border.all(color: Colors.grey, w),
                    ),
                child: RaisedButton(
                  elevation: 0,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 0, right: 30),
                        child: ListTile(
                          title: Text(
                            'Log Out',
                            style: TextStyle(color: Colors.red),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Text('Log out'),
                            content: Container(
                              height: 145,
                              child: Column(
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 0, bottom: 10),
                                    child: Text(
                                      'Are you sure you want to log out?',
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: Text(
                                        'Note that you can seamlessly use Telegram on all your devices at once.'),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 0, right: 0, top: 10, bottom: 10),
                                    child: Text(
                                        'Remember, logging out kills all your Secret Chats.'),
                                  ),
                                ],
                              ),
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
                                  'LOG OUT',
                                  style: TextStyle(color: Colors.red),
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              LoginScreen1()));
                                },
                              ),
                            ],
                          );
                        });
                  },
                ),
              ),
              Container(
                margin:
                    EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                child: Text(
                  'Logging out deactivates all Secret Chats.',
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
