import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications2 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _Notifications2State();
  }
}

bool private = true;
bool preview = true;
int group = 1;

class _Notifications2State extends State<Notifications2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
      ),
      body: ListView(
        children: [
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
                    title: Text('Notifications for private chats'),
                    subtitle: Text('on'),
                    trailing: Switch(
                      activeColor: Colors.white,
                      activeTrackColor: Colors.lightBlueAccent,
                      value: private,
                      onChanged: (bool G) {
                        setState(() {
                          private = G;
                          print(private);
                        });
                      },
                    ),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Repeat Notifications'),
                              content: Container(
                                height: 230,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text('Turn on'),
                                      leading: Icon(Icons.vibration),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text('Mute for 1 hour'),
                                      leading: Icon(Icons.alarm_on),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text('Mute for 2 days'),
                                      leading: Icon(Icons.alarm_add),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Turn Off',
                                        style: TextStyle(color: Colors.red),
                                      ),
                                      leading: Icon(
                                        Icons.alarm_add,
                                        color: Colors.red,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                  ),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 15,
          ),
          Container(
            //height: 110,
            decoration: BoxDecoration(
              color: Colors.white,
              // border: Border.all(color: Colors.black26, width: .5),
            ),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(right: 310, top: 20),
                  child: Text(
                    ' Settings',
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
                    title: Text('Message Preview'),
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
                Divider(
                  height: .0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('LED Color'),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('LED Color'),
                              content: Container(
                                height: 455,
                                child: Column(
                                  children: [
                                    ListTile(
                                      title: Text('Red'),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.red,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text('Orange'),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.orange,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text('Yellow'),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.yellow,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Green',
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.green,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Cyan',
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.cyan,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Blue',
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.blue,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'Violet',
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.pink,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                    ListTile(
                                      title: Text(
                                        'White',
                                      ),
                                      leading: Icon(
                                        Icons.radio_button_checked,
                                        color: Colors.white,
                                      ),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              actions: [
                                FlatButton(
                                  child: Text(
                                    'SET',
                                    style: TextStyle(color: Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                                FlatButton(
                                  child: Text(
                                    'DISABLED',
                                    style: TextStyle(color: Colors.blue),
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
                  height: .0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Vibrate'),
                    onTap: () {
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
                ),
                Divider(
                  height: .0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Popup Notifications'),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Popup Notifications'),
                              content: SingleChildScrollView(
                                child: Container(
                                  height: 230,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('No popup'),
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
                                          'Only when screen "on"',
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
                                          'Only when screen "off" ',
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
                                          'Always shoe popup ',
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
                ),
                Divider(
                  height: .0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Sound'),
                    onTap: () {},
                  ),
                ),
                Divider(
                  height: .0,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 0,
                  ),
                  child: ListTile(
                    title: Text('Importance'),
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Text('Importance'),
                              content: SingleChildScrollView(
                                child: Container(
                                  height: 230,
                                  child: Column(
                                    children: [
                                      ListTile(
                                        title: Text('Low'),
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
                                          'Medium',
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
                                          'High ',
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
                                          'Urgent ',
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
                ),
                Divider(
                  thickness: 15,
                ),
                ListTile(
                  contentPadding:
                      EdgeInsets.only(bottom: 10, left: 20, right: 10),
                  title: Text(
                    'Add an Exception',
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.blue,
                    ),
                  ),
                  leading: Icon(
                    Icons.person_add,
                    color: Colors.blue,
                  ),
                  onTap: () {},
                ),
                Divider(
                  height: .0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
