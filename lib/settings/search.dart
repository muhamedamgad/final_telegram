import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _SearchState();
  }
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        title: TextField(
          cursorColor: Colors.white,
          autofocus: true,
          decoration: InputDecoration(
            hintText: 'Search Settings and FAQ',
            hintStyle: TextStyle(
              color: Colors.white60,
              inherit: true,
            ),
          ),
        ),
      ),
      body: ListView(children: [
//      color: Colors.grey,

        Container(
          margin: EdgeInsets.only(left: 20, right: 10, top: 10),
          child: Text(
            'Frequently asked questions',
            style: TextStyle(color: Colors.grey),
          ),
        )
      ]),
    );
  }
}
