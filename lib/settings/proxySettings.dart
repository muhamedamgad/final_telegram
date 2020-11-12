import 'package:flutter/material.dart';

class ProxySettings extends StatefulWidget {
  @override
  _ProxySettingsState createState() => _ProxySettingsState();
}

class _ProxySettingsState extends State<ProxySettings> {
  bool _switchVal = false;
  bool _switchVal2 = false;
  switchTochange1(bool val1) {
    setState(() {
      _switchVal = val1;
    });
  }

  switchTochange(bool val2) {
    setState(() {
      _switchVal2 = val2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Proxy Settings',
          style: TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
        ),
      ),
      body:

      ListView(
        children: [
         Column(
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width,
              height: 50,
              color: Theme.of(context).canvasColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Use Proxy',
                      style: TextStyle(fontSize: 17),
                    ),
                    Switch(value: _switchVal, onChanged: switchTochange1),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Divider(thickness: 10,),
            Container(
              color: Theme.of(context).canvasColor,
              width: MediaQuery.of(context).size.width,
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Connections',
                      style: TextStyle(
                          color: Theme.of(context).primaryColor, fontSize: 17),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      'Add Proxy',
                      style: TextStyle(fontSize: 17),
                    ),
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
              height: 50,
              color: Theme.of(context).canvasColor,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Use Proxy for calls',
                      style: TextStyle(fontSize: 17),
                    ),
                    Switch(value: _switchVal, onChanged: switchTochange1),
                  ],
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Proxy servers may degrade the quality of your calls.',
                style: TextStyle(
                    fontSize: 15, color: Theme.of(context).disabledColor),
              ),
            )
          ],
        ),
      ]),
    );
  }
}
