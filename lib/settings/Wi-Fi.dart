import 'package:flutter/material.dart';

class WiFi extends StatefulWidget {
  @override
  _WiFiState createState() => _WiFiState();
}

class _WiFiState extends State<WiFi> {
  Widget _dataList(String status, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 15),
          child: Text(
            status,
            style: TextStyle(fontSize: 17),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 15),
          child: Text(value, style: TextStyle(fontSize: 17)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).dividerColor,
        body: ListView(children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Photos',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Received', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Videos',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Received', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Voice/Video messages',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Received', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 210,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Files',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Received', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 250,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'calls',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Outgoing calls', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Incoming calls', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Total time', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Messages and other data',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 120,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Total',
                      style: TextStyle(
                          fontSize: 17,
                          color: Theme.of(context).primaryColor,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  _dataList('Bytes sent', '0'),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 1,
                      color: Theme.of(context).dividerColor,
                    ),
                  ),
                  _dataList('Bytes received', '0'),
                ]),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Reset Statistics',
                style: TextStyle(fontSize: 17, color: Colors.red),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Network Usage since sep 03 2019,6:18PM',
              style: TextStyle(
                  color: Theme.of(context).disabledColor, fontSize: 15),
            ),
          ),
        ]));
  }
}
