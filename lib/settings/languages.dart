import 'package:flutter/material.dart';
import 'package:final_telegram/settings/languageList.dart';

class Languages extends StatefulWidget {
  @override
  _LanguagesState createState() => _LanguagesState();
}

class _LanguagesState extends State<Languages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Languages'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: ListView.builder(
          itemCount: language.length,
          itemBuilder: (context, i) => new Column(children: <Widget>[
            Divider(
              height: 10.0,
            ),
            new ListTile(
              title: new Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  new Text(
                    language[i].language,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).errorColor),
                  ),
                  new Text(
                    language[i].inEnglish,
                    style: TextStyle(
                        color: Theme.of(context).errorColor, fontSize: 14.0),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
