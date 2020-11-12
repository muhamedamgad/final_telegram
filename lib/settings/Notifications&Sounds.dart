import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/settings/Notifications.dart';

import 'settings.dart';

class Notifications extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Notifications();
  }
}

class _Notifications extends State<Notifications> {
  int group = 1;
  bool all = true;
  bool private = true;
  bool groups = false;
  bool channels = true;
  bool enabled = true;
  bool include = false;
  bool count = true;
  bool sounds = true;
  bool vibrate = true;
  bool preview = true;
  bool chat = true;
  bool importance = false;
  bool contact = true;
  bool pinned = true;
  bool keep = true;
  bool backgroung = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.grey,
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings()));
            }),
        title: Text('Notifications and Sounds'),
      ),
      body: ListView(
        children: [
          Container(
            height: 90,
            decoration: BoxDecoration(
              color: Colors.white,
              //border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 230, top: 15),
                  child: Text(
                    'Show Notification For',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('All Accounts'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: all,
                      onChanged: (bool A) {
                        setState(() {
                          all = A;
                          print(all);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10, right: 20, bottom: 15),
            child: Text(
                'Turn this of if you want to receive notification only from the account you are currently using.',
                style: TextStyle(
                  color: Colors.grey,
                )),
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 230, top: 20),
                  child: Text(
                    ' Notification For chats',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Private Chats'),
                    subtitle: Text('Tap to change'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications2()));
                    },
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: private,
                      onChanged: (bool P) {
                        setState(() {
                          private = P;
                          print(private);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Groups'),
                    subtitle: Text('Tap to change'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications2()));
                    },
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: groups,
                      onChanged: (bool G) {
                        setState(() {
                          groups = G;
                          print(groups);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Channels'),
                    subtitle: Text('Tap to change'),
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => Notifications2()));
                    },
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: channels,
                      onChanged: (bool C) {
                        setState(() {
                          channels = C;
                          print(channels);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          RaisedButton(
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 320, top: 15),
                  child: Text(
                    ' Calls',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 0, right: 50),
                  child: ListTile(
                    title: Text('vibrate'),
                  ),
                ),
              ],
            ),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Vibrate'),
                      content: SingleChildScrollView(
                        child: Container(
                          height: 280,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Disabled'),
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
                              ListTile(
                                title: Text(
                                  'Defult',
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
                              ListTile(
                                title: Text(
                                  'Short ',
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
                              ListTile(
                                title: Text(
                                  'Long ',
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
                              ListTile(
                                title: Text(
                                  'Only if silent ',
                                ),
                                leading: Radio(
                                  value: 5,
                                  groupValue: group,
                                  onChanged: (T) {
                                    print(T);

                                    setState(() {
                                      group = T;
                                    });
                                  },
                                ),
                              ),
                            ],
                          ),
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
          Divider(
            height: .0,
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
                    margin: EdgeInsets.only(left: 0, right: 50),
                    child: ListTile(
                      title: Text('Ringtone'),
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 270, top: 20),
                  child: Text(
                    ' Badge Counter ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Enabled'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: enabled,
                      onChanged: (bool E) {
                        setState(() {
                          enabled = E;
                          print(enabled);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
          ),
          Container(
            height: 75,
            decoration: BoxDecoration(
              color: Colors.white,
              //  border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Include Muted Chats'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: include,
                      onChanged: (bool I) {
                        setState(() {
                          include = I;
                          print(include);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Count UnRead Messages'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: count,
                      onChanged: (bool co) {
                        setState(() {
                          count = co;
                          print(count);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 230, top: 20),
                  child: Text(
                    ' In-app notifications ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('In-App Sounds'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: sounds,
                      onChanged: (bool S) {
                        setState(() {
                          sounds = S;
                          print(sounds);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('In-App Vibrate'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: vibrate,
                      onChanged: (bool V) {
                        setState(() {
                          vibrate = V;
                          print(vibrate);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('In-App Preview'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: preview,
                      onChanged: (bool P) {
                        setState(() {
                          preview = P;
                          print(preview);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('In-Chat Sounds'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: chat,
                      onChanged: (bool C) {
                        setState(() {
                          chat = C;
                          print(chat);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Importance'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: importance,
                      onChanged: (bool I) {
                        setState(() {
                          importance = I;
                          print(importance);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 310, top: 20),
                  child: Text(
                    'Events ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Contact joined Telegram'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: contact,
                      onChanged: (bool C) {
                        setState(() {
                          contact = C;
                          print(contact);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Pinned Messages'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: pinned,
                      onChanged: (bool P) {
                        setState(() {
                          pinned = P;
                          print(pinned);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 320, top: 20),
                  child: Text(
                    ' Other',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Keep-Alive Srevice'),
                    subtitle: Text(
                        'Relaunch app when shut down. Enable for reliable notifications.'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: keep,
                      onChanged: (bool K) {
                        setState(() {
                          keep = K;
                          print(keep);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
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
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('BackGround Conrction'),
                    subtitle: Text(
                        'Keep a low impact background conection to Telegram for reliable notifications.'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: backgroung,
                      onChanged: (bool B) {
                        setState(() {
                          backgroung = B;
                          print(backgroung);
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            height: .0,
          ),
          Container(
            height: 60,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0,
              child: Container(
                child: ListTile(
                  title: Text('Repeat Notifications'),
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Repeat Notifications'),
                        content: Container(
                          height: 392,
                          child: Column(
                            children: [
                              ListTile(
                                title: Text('Off'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('5 minutes'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('10 minutes'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('30 minutes'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('1 hour'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('2 hours'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                              ListTile(
                                title: Text('4 hours'),
                                onTap: () {
                                  Navigator.pop(context);
                                },
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
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: RaisedButton(
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(
                      right: 320,
                    ),
                    child: Text(
                      ' Reset',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 0, right: 30),
                    child: ListTile(
                      title: Text('Reset All Notifications'),
                      subtitle: Text(
                          'Undo all custom notification settings for all your contacts, groups and channels'),
                    ),
                  ),
                ],
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Reset all notifications'),
                        content: Text(
                            'Are you sure you want to reset all notification settings to defult?'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('CANCEL'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          FlatButton(
                            child: Text(
                              'RECET',
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
          ),
          Divider(
            thickness: 5,
          ),
        ],
      ),
    );
  }
}
