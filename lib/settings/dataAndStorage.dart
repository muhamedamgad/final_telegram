import 'package:final_telegram/settings/settings.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/settings/datausages.dart';
import 'package:final_telegram/settings/proxySettings.dart';
import 'package:final_telegram/settings/respondWithtext.dart';
import 'package:final_telegram/settings/onMobiledata.dart';
import 'package:final_telegram/settings/whenRoaming.dart';
import 'package:final_telegram/settings/onWi-Fi.dart';

class DataAndStorage extends StatefulWidget {
  @override
  _DataAndStorageState createState() => _DataAndStorageState();
}

class _DataAndStorageState extends State<DataAndStorage> {
  var _value1 = 0;
  var _value2 = 1;
  var _value3 = 2;
  var _value4 = 3;
  _onChangeRadio1(int val1) {
    setState(() {
      _value1 = val1;
    });
  }

  _onChangeRadio2(int val2) {
    setState(() {
      _value2 = val2;
    });
  }

  _onChangeRadio3(int val3) {
    setState(() {
      _value3 = val3;
    });
  }

  _onChangeRadio4(int val4) {
    setState(() {
      _value4 = val4;
    });
  }

  bool switchVal = true;
  bool switchVal1 = true;
  bool switchVal2 = false;
  bool switchVal3 = true;
  bool switchVal4 = false;
  bool switchVal5 = true;
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

  showAlertDialog(BuildContext context) {
    Widget cancelButton = FlatButton(
      child: Text("CANCEL"),
      onPressed: () {
       Navigator.push(context, MaterialPageRoute(builder: (context)=>DataAndStorage()));},
    );
    AlertDialog alert = AlertDialog(
      title: Text("Use less data for calls"),
      content: Container(
        height: 200,
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Radio(
                    value: 1, groupValue: _value1, onChanged: _onChangeRadio1),
                Text('Never'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 1, groupValue: _value2, onChanged: _onChangeRadio2),
                Text('Only while roaming'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 0, groupValue: _value3, onChanged: _onChangeRadio3),
                Text('Only on mobile data'),
              ],
            ),
            Row(
              children: <Widget>[
                Radio(
                    value: 0, groupValue: _value4, onChanged: _onChangeRadio4),
                Text('Always'),
              ],
            ),
          ],
        ),
      ),
      actions: [
        cancelButton,
      ],
    );
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).cardColor,
        appBar: AppBar(
         // backgroundColor: Theme.of(context).errorColor,
          leading: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Settings()));
              },
              child: Icon(Icons.arrow_back)),
          title: Text(
            'Data and Storage',
            style:
                TextStyle(fontSize: 18,
                    color: Theme.of(context).canvasColor
                ),
          ),
        ),
        body: ListView(children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 130,
           // color: Theme.of(context).canvasColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Disk and Network Usage',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Storage Usage',
                    style: TextStyle(
                     // color: Theme.of(context).cursorColor,
                      fontSize: 15,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(height: .0,),

//                  Container(
//                    height: 1,
//                   // color: Theme.of(context).accentColor,
//                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataUsage()));
                      },
                      child: Text(
                        'Data Usage',
                        style: TextStyle(
                         // color: Theme.of(context).cursorColor,
                          fontSize: 15,
                        ),
                      )),
                ],
              ),
            ),
          ),
//          SizedBox(
//            height: 10,
//          ),
        Divider(thickness: 10,),
          Container(
            //color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 260,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Automatic Media Download',
                    style: TextStyle(
                        color:Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OnMobileData()));
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('When using mobile data',
                                style: TextStyle(
                                 // color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('No media',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 130),
                          child: Row(
                            children: <Widget>[
//                              Container(
//                                width: 1,
//                                height: 20,
//                               // color: Theme.of(context).accentColor,
//                              ),
                              Container(
                                  child: Switch(
                                value: switchVal,
                                onChanged: onSWitchToChange,
                                //activeColor: Theme.of(context).primaryColor,
                              ))
                            ],
                          ),
                        ),
                      ],
                    ),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ONWiFi()));
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('When connected on Wi-Fi',
                                style: TextStyle(
                            //      color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('No media',
                                style: TextStyle(
                                 color: Colors.grey,
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 121),
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
                               // activeColor: Theme.of(context).primaryColor,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
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
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WhenRoaming()));
                    },
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text('When roaming',
                                style: TextStyle(
                             //     color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            SizedBox(
                              height: 5,
                            ),
                            Text('Photos',
                                style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 13,
                                )),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 193),
                          child: Row(
                            children: <Widget>[
                              Container(
                                width: 1,
                                height: 20,
                               // color: Theme.of(context).accentColor,
                              ),
                              Container(
                                  child: Switch(
                                value: switchVal2,
                                onChanged: onSWitchToChange2,
                              //  activeColor: Theme.of(context).primaryColor,
                              ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    height: 1,
                 //   color: Theme.of(context).accentColor,
                  ),
                  Divider(height: .0,),
                  SizedBox(
                    height: 7.5,
                  ),
                  Text(
                    'Reset Auto-Download Settings',
                    style: TextStyle(
                        color:Colors.red, fontSize: 14),
                  )
                ],
              ),
            ),
          ),
//          SizedBox(
//            height: 10,
//          ),
        Divider(thickness: 10,),
          Container(
             // color: Theme.of(context).canvasColor,
              width: MediaQuery.of(context).size.width,
              height: 145,
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Auto-play media',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text('GIFS',
                                style: TextStyle(
                             //     color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 258),
                              child: Container(
                                  child: Switch(
                                value: switchVal3,
                                onChanged: onSWitchToChange3,
                             //   activeColor: Theme.of(context).primaryColor,
                              )),
                            )
                          ],
                        ),
                        Divider(height: .0,),
                        Container(
                          height: 1,
                        //  color: Theme.of(context).accentColor,
                        ),
                        Row(
                          children: <Widget>[
                            Text('Vieos',
                                style: TextStyle(
                             //     color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 253),
                              child: Container(
                                  child: Switch(
                                value: switchVal4,
                                onChanged: onSWitchToChange4,
                            //    activeColor: Theme.of(context).primaryColor,
                              )),
                            )
                          ],
                        ),
                      ]))),
//          SizedBox(
//            height: 10,
//          ),
        Divider(thickness: 10,),
          Container(
             // color: Theme.of(context).canvasColor,
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Streaming',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: <Widget>[
                            Text('Stream Videos and Audio Files',
                                style: TextStyle(
                           //       color: Theme.of(context).cursorColor,
                                  fontSize: 15,
                                )),
                            Padding(
                              padding: EdgeInsets.only(left: 84),
                              child: Container(
                                  child: Switch(
                                value: switchVal5,
                                onChanged: onSWitchToChange5,
                             //   activeColor: Theme.of(context).primaryColor,
                              )),
                            )
                          ],
                        ),
                      ]))),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Some videos can’t be streamed - e.g., all videos that'
              ' were sent from Android using Telegram 4.7 and earlier'
              ' versions.',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Container(
            //  color: Theme.of(context).canvasColor,
              width: MediaQuery.of(context).size.width,
              height: 135,
              child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 5, bottom: 5),
                          child: Text(
                            'Calls',
                            style: TextStyle(
                                color:Colors.blue,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: InkWell(
                            onTap: () {
                              showAlertDialog(context);
                            },
                            child: Row(children: <Widget>[
                              Text('Use less data for calls',
                                  style: TextStyle(
                                 //   color: Theme.of(context).cursorColor,
                                    fontSize: 15,
                                  )),
                              SizedBox(
                                width: 70,
                              ),
                              Text('Only with roaming',
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 15,
                                  )),
                            ]),
                          ),
                        ),
                        Divider(height: .0,),
//                        Container(
//                          height: 1,
//                         // color: Theme.of(context).accentColor,
//                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 10, bottom: 10),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RespondWithText()));
                            },
                            child: Row(
                              children: <Widget>[
                                Text('Respond with Text',
                                    style: TextStyle(
                                     // color: Theme.of(context).cursorColor,
                                      fontSize: 15,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ]))),
//          SizedBox(
//            height: 10,
//          ),
        Divider(thickness: 10,),
          Container(
            //  color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Proxy',
                        style: TextStyle(
                           color: Colors.blue,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => ProxySettings()));
                        },
                        child: Row(children: <Widget>[
                          Text('Proxy Settings',
                              style: TextStyle(
                            //    color: Theme.of(context).cursorColor,
                                fontSize: 15,
                              )),
                        ]),
                      ),
                    )
                  ])),
         Divider(thickness: 10,),

          Container(
            //color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text('Delete All Cloud Drafts',
                  style: TextStyle(
                  //  color: Theme.of(context).cursorColor,
                    fontSize: 15,
                  )),
            ),
          ),
         Divider(thickness: 10,),
        ]));
  }
}
