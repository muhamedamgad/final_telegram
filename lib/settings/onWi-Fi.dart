import 'package:flutter/material.dart';

class ONWiFi extends StatefulWidget {
  @override
  _ONWiFiState createState() => _ONWiFiState();
}

class _ONWiFiState extends State<ONWiFi> {
  bool _value = false;
  double _currentSliderValue = 50;
  bool _value2 = true;
  bool _value3 = true;
  bool _value4 = true;
  _onSwitch2(bool val2) {
    setState(() {
      _value2 = val2;
    });
  }

  _onSwitch3(bool val3) {
    setState(() {
      _value3 = val3;
    });
  }

  _onSwitch4(bool val4) {
    setState(() {
      _value4 = val4;
    });
  }

  void showToast() {
    setState(() {
      _value = _value;
    });
  }

  _onSwitch(bool val) {
    setState(() {
      _value = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Theme.of(context).errorColor,
        actions: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              Padding(
                padding: EdgeInsets.only(right: 250, left: 30),
                child: Text(
                  'On Wi-Fi',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 60,
            color: Theme.of(context).disabledColor,
            child: Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Auto-Download Media',
                    style: TextStyle(fontSize: 17),
                  ),
                  Switch(
                    value: _value,
                    onChanged: _onSwitch,
                    activeColor: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Visibility(
              visible: _value,
              child: Column(
                children: <Widget>[
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 100,
                    color: Theme.of(context).canvasColor,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Data Usage',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor,
                                fontSize: 15),
                          ),
                          Slider(
                            value: _currentSliderValue,
                            min: 0,
                            max: 100,
                            divisions: 3,
                            label: _currentSliderValue.round().toString(),
                            onChanged: (double value) {
                              setState(() {
                                _currentSliderValue = value;
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.only(top: 15, left: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Types of media',
                            style: TextStyle(
                                fontSize: 15,
                                color: Theme.of(context).primaryColor),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Photos',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'On in all chats',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Theme.of(context).disabledColor),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width - 80,
                                    color: Theme.of(context).dividerColor,
                                  )
                                ],
                              ),
                              Switch(
                                value: _value2,
                                onChanged: _onSwitch2,
                                activeColor: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Videos',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Up to 10.0 MB in all chats',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Theme.of(context).disabledColor),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Container(
                                    height: 1,
                                    width:
                                        MediaQuery.of(context).size.width - 80,
                                    color: Theme.of(context).dividerColor,
                                  )
                                ],
                              ),
                              Switch(
                                value: _value3,
                                onChanged: _onSwitch3,
                                activeColor: Theme.of(context).primaryColor,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    'Files',
                                    style: TextStyle(fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Up to 1.0 MB in all chats',
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Theme.of(context).disabledColor),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                              Switch(
                                value: _value4,
                                onChanged: _onSwitch4,
                                activeColor: Theme.of(context).primaryColor,
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: 200,
                    color: Theme.of(context).canvasColor,
                  ),
                ],
              )),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Text(
              'Turn this ON if you want media to be automatically downloaded on Wi-Fi.',
              style: TextStyle(
                  color: Theme.of(context).disabledColor, fontSize: 13),
            ),
          )
        ],
      ),
    );
  }
}
