import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bubble/bubble.dart';
import 'package:final_telegram/settings/stickersandmasks.dart';

class ChatSettings extends StatefulWidget {
  @override
  _ChatSettingsState createState() => _ChatSettingsState();
}

class _ChatSettingsState extends State<ChatSettings> {
  int _currentSliderValue = 20;
  int _currentSliderValue1 = 20;
  bool switchVal = true;
  bool switchVal1 = true;
  bool switchVal2 = false;
  bool switchVal3 = false;
  bool switchVal4 = false;
  bool switchVal5 = true;
  bool switchVal6 = false;
  bool switchVal7 = true;
  bool switchVal8 = false;
  onSWitchToChange(bool val) {
    setState(() {
      switchVal = val;
    });
  }

  onSWitchToChange1(bool val1) {
    setState(() {
      switchVal1 = val1;
    });
  }

  onSWitchToChange2(bool val2) {
    setState(() {
      switchVal2 = val2;
    });
  }

  onSWitchToChange3(bool val3) {
    setState(() {
      switchVal3 = val3;
    });
  }

  onSWitchToChange4(bool val4) {
    setState(() {
      switchVal4 = val4;
    });
  }

  onSWitchToChange5(bool val5) {
    setState(() {
      switchVal5 = val5;
    });
  }

  onSWitchToChange6(bool val6) {
    setState(() {
      switchVal6 = val6;
    });
  }

  onSWitchToChange7(bool val7) {
    setState(() {
      switchVal7 = val7;
    });
  }

  onSWitchToChange8(bool val8) {
    setState(() {
      switchVal8 = val8;
    });
  }

  @override
  Widget build(BuildContext context) {
    showAlertDialog(BuildContext context) {
      Widget okButton = FlatButton(
        child: Text("Cancel"),
        onPressed: () {
          Navigator.pop(context);
        },
      );
      AlertDialog alert = AlertDialog(
        title: Text("Distance Units"),
        content: Container(
          width: 100,
          height: 100,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Automatic'),
              SizedBox(
                height: 20,
              ),
              Text('Kilometers'),
              SizedBox(
                height: 20,
              ),
              Text('Miles'),
            ],
          ),
        ),
        actions: [
          okButton,
        ],
      );
      // show the dialog
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return Scaffold(
     // backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text('Chat Settings'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.more_vert),
          )
        ],
      ),
      body: ListView(children: <Widget>[
        Container(
          color: Theme.of(context).canvasColor,
          width: MediaQuery.of(context).size.width,
          height: 230,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding:
                    EdgeInsets.only(top: 15, bottom: 10, right: 20, left: 20),
                child: Text(
                  'Message text size',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).primaryColor),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Slider(
                      value: _currentSliderValue.toDouble(),
                      min: 0,
                      max: 100,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value.toInt();
                        });
                      },
                    ),
                  ),
                  Divider(thickness: 10,),
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Text(_currentSliderValue.toString()),
                    ),
                  )
                ],
              ),
              Bubble(
                alignment: Alignment.center,
                color: Color.fromRGBO(212, 234, 244, 1.0),
                child: Text('TODAY',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 11.0)),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  alignment: Alignment.topRight,
                  nip: BubbleNip.rightTop,
                  color: Color.fromRGBO(225, 255, 199, 1.0),
                  child: Text('Hello, World!', textAlign: TextAlign.right),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 15, right: 15),
                child: Bubble(
                  margin: BubbleEdges.only(top: 10),
                  alignment: Alignment.topLeft,
                  nip: BubbleNip.leftTop,
                  child: Text('Hi, developer!'),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),

        Container(
          color: Theme.of(context).canvasColor,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Change Chat Background',
              style: TextStyle(fontSize: 17),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(thickness: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          color: Theme.of(context).canvasColor,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Message corners',
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width - 50,
                    child: Slider(
                      value: _currentSliderValue1.toDouble(),
                      min: 0,
                      max: 100,
                      label: _currentSliderValue1.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue1 = value.toInt();
                        });
                      },
                    ),
                  ),

                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Container(
                      width: 50,
                      height: 50,
                      child: Text(_currentSliderValue1.toString()),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(thickness: 10,),
        Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).canvasColor,
          ),
          height: 150,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('Chat list view',style: TextStyle(color: Colors.blue),),
              ),
              Row(
                children: <Widget>[
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Theme.of(context).dividerColor),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          height: 80,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color:
                                              Color.fromRGBO(192, 195, 200, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromRGBO(
                                                230, 230, 230, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 60,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromRGBO(
                                                  192, 195, 200, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        color: Theme.of(context).primaryColor,
                                        border: Border.all(
                                            color:
                                                Theme.of(context).dividerColor,
                                            width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color:
                                              Color.fromRGBO(192, 195, 200, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  230, 230, 230, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 60,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromRGBO(
                                                  192, 195, 200, 1)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Two lines'),
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(right: 5),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                                color: Theme.of(context).dividerColor),
                            color: Color.fromRGBO(255, 255, 255, 1),
                          ),
                          width: MediaQuery.of(context).size.width / 2 - 15,
                          height: 80,
                          child: Column(
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color:
                                              Color.fromRGBO(192, 195, 200, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 3,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(20),
                                            color: Color.fromRGBO(
                                                230, 230, 230, 1),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 60,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromRGBO(
                                                  192, 195, 200, 1)),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    width: 10,
                                    height: 10,
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color:
                                                Theme.of(context).dividerColor,
                                            width: 1.5),
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                  )
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(top: 10, left: 10),
                                    child: Padding(
                                      padding: EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 25,
                                        height: 25,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          color:
                                              Color.fromRGBO(192, 195, 200, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Container(
                                          width: 80,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              color: Color.fromRGBO(
                                                  230, 230, 230, 1),
                                              borderRadius:
                                                  BorderRadius.circular(20)),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Container(
                                          width: 60,
                                          height: 3,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromRGBO(
                                                  192, 195, 200, 1)),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text('Three Lines'),
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 580,
            child: Padding(
              padding: EdgeInsets.only(top: 15, left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Settings',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Auto-Night Mode',
                              style: TextStyle(
                             //   color: Theme.of(context).cursorColor,
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Off',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 180),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 1,
                              height: 20,
                             // color: Theme.of(context).accentColor,
                            ),
                            Container(
                                child: Switch(
                              value: switchVal,
                              onChanged: onSWitchToChange,
                            //  activeColor: Theme.of(context).primaryColor,
                            ))
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                   // color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('in-App Browser',
                              style: TextStyle(
                               // color: Theme.of(context).cursorColor,
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Open external links within the app',
                              style: TextStyle(
                               color: Colors.grey,
                                fontSize: 13,
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 100),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 1,
                              height: 20,
                            //  color: Theme.of(context).accentColor,
                            ),
                            Container(
                                child: Switch(
                              value: switchVal1,
                              onChanged: onSWitchToChange1,
                            //  activeColor: Theme.of(context).primaryColor,
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                  //  color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Direct Share',
                              style: TextStyle(
                           //     color: Theme.of(context).cursorColor,
                                fontSize: 15,
                              )),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Show recent chats in Android share menu',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 13,
                              )),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 53),
                        child: Row(
                          children: <Widget>[
                            Container(
                              width: 1,
                              height: 20,
                          //    color: Theme.of(context).accentColor,
                            ),
                            Container(
                                child: Switch(
                              value: switchVal3,
                              onChanged: onSWitchToChange3,
                           //   activeColor: Theme.of(context).primaryColor,
                            ))
                          ],
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                  //  color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Enable Animation',
                            style: TextStyle(
                          //    color: Theme.of(context).cursorColor,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 175),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 1,
                            height: 20,
                        //    color: Theme.of(context).accentColor,
                          ),
                          Container(
                              child: Switch(
                            value: switchVal4,
                            onChanged: onSWitchToChange4,
                         //   activeColor: Theme.of(context).primaryColor,
                          ))
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),

                  Container(
                    height: 1,
                   // color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Large Emoji',
                            style: TextStyle(
                          //    color: Theme.of(context).cursorColor,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 215),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 1,
                            height: 20,
                          //  color: Theme.of(context).accentColor,
                          ),
                          Container(
                              child: Switch(
                            value: switchVal5,
                            onChanged: onSWitchToChange5,
                          //  activeColor: Theme.of(context).primaryColor,
                          ))
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                   // color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Save to Gallery',
                            style: TextStyle(
                       //       color: Theme.of(context).cursorColor,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 192),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 1,
                            height: 20,
                         //   color: Theme.of(context).accentColor,
                          ),
                          Container(
                              child: Switch(
                            value: switchVal6,
                            onChanged: onSWitchToChange6,
                          //  activeColor: Theme.of(context).primaryColor,
                          ))
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                   // color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Raise to speak',
                            style: TextStyle(
                        //      color: Theme.of(context).cursorColor,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 192),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 1,
                            height: 20,
                         //   color: Theme.of(context).accentColor,
                          ),
                          Container(
                              child: Switch(
                            value: switchVal7,
                            onChanged: onSWitchToChange7,
                        //    activeColor: Theme.of(context).primaryColor,
                          ))
                        ],
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                  //  color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Divider(height: .0,),
                  Row(children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Send by Enter',
                            style: TextStyle(
                        //      color: Theme.of(context).cursorColor,
                              fontSize: 15,
                            )),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 197),
                      child: Row(
                        children: <Widget>[
                          Container(
                            width: 1,
                            height: 20,
                         //   color: Theme.of(context).accentColor,
                          ),
                          Container(
                              child: Switch(
                            value: switchVal8,
                            onChanged: onSWitchToChange8,
                          //  activeColor: Theme.of(context).primaryColor,
                          ))
                        ],
                      ),
                    )
                  ]),
                  Container(
                    height: 1,
                   // color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    height: 7.5,
                  ),
                  Divider(height: .0,),
                  InkWell(
                    onTap: () {
                      showAlertDialog(context);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Distance Units',
                          style: TextStyle(
                            //  color: Theme.of(context).cursorColor,
                              fontSize: 16),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            'Automatic',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )),
        SizedBox(
          height: 10,
        ),
        Divider(thickness: 10,),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => StickersandMarks()));
          },
          child: Container(
            color: Theme.of(context).canvasColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Stickers and Masks',
                style: TextStyle(fontSize: 17),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Divider(thickness: 10,),
      ]),
    );
  }
}
