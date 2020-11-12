import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'settings.dart';

class Editname extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _EditnameState();
  }
}

class _EditnameState extends State<Editname> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Edit name'),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.pop(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Settings(),
                    ));
              }),
        ],
      ),
      body: Container(
        child: Column(
          children: [
//           Container(
//             height: 50,
//             margin: EdgeInsets.only(left: 10,),
//            // width: MediaQuery.of(context).size.width / 5 - 40,
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: TextField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'First name (erquired)'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: TextField(
//                 keyboardType: TextInputType.number,
//                 textAlign: TextAlign.center,
                decoration: InputDecoration(hintText: 'Last name (optional)'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
