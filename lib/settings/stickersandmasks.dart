import 'package:flutter/material.dart';

class StickersandMarks extends StatefulWidget {
  @override
  _StickersandMarksState createState() => _StickersandMarksState();
}

class _StickersandMarksState extends State<StickersandMarks> {
  bool val = false;
  void onchange(bool switchVal) {
    setState(() {
      val = switchVal;
    });
  }

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
          child: Text(value,
              style: TextStyle(
                  fontSize: 17, color: Theme.of(context).primaryColor)),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  backgroundColor: Theme.of(context).dividerColor,
        appBar: AppBar(
          title: Text('Stickers and Marks'),
        ),
        body: ListView(children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: _dataList('Suggest Sickers by emoji', 'All Sets'),
                ),
                Divider(height: .0,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        'Loop Animated Stickers',
                        style: TextStyle(fontSize: 17),
                      ),
                    ),
                    Switch(
                      value: val,
                      onChanged: onchange,
                      activeColor: Theme.of(context).primaryColor,
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Animated stickers will play continously in chats.',
              style: TextStyle(
                  fontSize: 13, color: Theme.of(context).disabledColor),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Theme.of(context).canvasColor,
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: _dataList('TRending Stickers', '0'),
                ),
                Divider(height: .0,),
                Padding(
                  padding: EdgeInsets.only(top: 15, bottom: 15),
                  child: Container(child: _dataList('Masks', '0')),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'Artists are welcome to add their own sticker sets using our @stickers bot.',
              style: TextStyle(
                  fontSize: 13, color: Theme.of(context).disabledColor),
            ),
          )
        ]));
  }
}
