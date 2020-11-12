import 'package:flutter/material.dart';

import 'package:final_telegram/settings/Blocked.dart';
import 'package:final_telegram/settings/LastSeen.dart';
import 'package:final_telegram/settings/ProfilePhoto.dart';
import 'package:final_telegram/settings/ForwardMessages.dart';
import 'package:final_telegram/settings/Calls.dart';
import 'package:final_telegram/settings/Groups.dart';
import 'package:final_telegram/settings/PassCode.dart';
import 'package:final_telegram/settings/TwoStep.dart';
import 'package:final_telegram/settings/ActiveSessions.dart';
import 'package:final_telegram/settings/Loggedinwithtelegram.dart';
import 'phonenumber.dart';
import 'settings.dart';

class Privacy extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Privacy();
  }
}

class _Privacy extends State<Privacy> {
  bool sync = true;
  bool suggest = true;
  bool link = false;
  int group = 1;

  bool shippinginfo = true;
  bool paymentinfo = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            }),
        title: Text('Privacy and Security'),
      ),
      body: ListView(
        children: [
          Container(
            // height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 290, top: 15),
                  child: Text(
                    ' Privacy',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('Blocked Users'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Blocked()));
            },
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Phone Number'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Phonenumber()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('LastSeen & Online'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LastSeen()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Profile Photo'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProfilePhoto()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Forward Messages'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ForwardMessages()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Calls'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Calls()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
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
                      title: Text('Groups'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Groups()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'Change who can add you to groups and channels.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 280, top: 15),
                  child: Text(
                    ' Security',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('Passcode lock'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => PassCode()));
            },
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.grey, w),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Two-Step Verification'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Twostep()));
              },
            ),
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
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
                      title: Text('Active Sessions'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ActiveSessions()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'Control your sessions on other devices.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            elevation: 0,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 220, top: 15),
                  child: Text(
                    ' Delete my account',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('If away for'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Account self-destructs'),
                      content: Container(
                        height: 230,
                        child: Column(
                          children: [
                            Container(
                              child: ListTile(
                                title: Text('1 month'),
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
                              child: ListTile(
                                title: Text(
                                  '3 months',
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
                              child: ListTile(
                                title: Text(
                                  '6 months ',
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
                            Container(
                              child: ListTile(
                                title: Text(
                                  '1 year ',
                                ),
                                leading: Radio(
                                  value: 4,
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
                      ],
                    );
                  });
            },
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'If you do not come online at least once with in this period , your account will be deleted along with all messages and contacts.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 220, top: 15),
                  child: Text(
                    'Bots and websites',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('Clear Payment and Shipping info'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Clear payment info'),
                      content: Container(
                        height: 140,
                        child: Column(
                          children: [
                            Text(
                                'Are you sure you want to clear your payment and shipping info?'),
                            Row(
                              children: [
                                Checkbox(
                                  value: shippinginfo,
                                  onChanged: (bool value) {
                                    setState(() {
                                      shippinginfo = value;
                                    });
                                  },
                                ),
                                Text('Shipping info'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: paymentinfo,
                                  onChanged: (bool value) {
                                    setState(() {
                                      paymentinfo = value;
                                    });
                                  },
                                ),
                                Text('Payment info'),
                              ],
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
                            'CLEAR',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
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
                      title: Text('Logged in with Telegram'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Loggedinwith()));
              },
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'Websites where you used Telegram to log in.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 280, top: 15),
                  child: Text(
                    'Contacts',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('Delete Synced Contacts'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Delete contacts'),
                      content: Container(
                        height: 100,
                        child: Column(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, top: 0, bottom: 10),
                              child: Text(
                                'This will remove your contacts from the Telegram servers.',
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                  left: 0, right: 0, top: 10, bottom: 0),
                              child: Text(
                                  'If "Sync Contacts" is enabled, contacts will be re-synced'),
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
                            'DELETE',
                            style: TextStyle(color: Colors.red),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    );
                  });
            },
          ),
          Container(
            height: 75,
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
                      value: sync,
                      onChanged: (bool S) {
                        setState(() {
                          sync = S;
                          print(sync);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 75,
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
                    title: Text('Suggest Frequent Contacts '),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: suggest,
                      onChanged: (bool U) {
                        setState(() {
                          suggest = U;
                          print(suggest);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'Display people you message frequently at the top of the search sections for quick access.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 260, top: 15),
                  child: Text(
                    'Secret chats',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 30),
                  child: ListTile(
                    title: Text('Map Perview Provider'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Map preview provider'),
                      content: Container(
                        height: 170,
                        child: Column(
                          children: [
                            Container(
                              child: ListTile(
                                title: Text('Telegram'),
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
                              child: ListTile(
                                title: Text(
                                  'Google',
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
                              child: ListTile(
                                title: Text(
                                  'No previews ',
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
                      ],
                    );
                  });
            },
          ),
          Container(
            height: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 20,
                  ),
                  child: ListTile(
                    title: Text('Link Previews'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: link,
                      onChanged: (bool L) {
                        setState(() {
                          link = L;
                          print(link);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, right: 15, top: 10, bottom: 10),
            child: Text(
              'Link previews will be generated on Telegram servers We do not store data about the links you send.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Divider(
            thickness: 10,
          ),
        ],
      ),
    );
  }
}
