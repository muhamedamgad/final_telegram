import 'package:flutter/material.dart';

import 'settings.dart';

class Bio extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new _BioState();
  }
}

class _BioState extends State<Bio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bio'),
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
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 15),
              child: TextField(
                maxLength: (70),
                decoration: InputDecoration(hintText: 'Bio'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 20, top: 15, right: 20, bottom: 20),
              child: Text(
                'You can add a few lines about yourself. Anyone who opens your profile will see this text. ',
                style: TextStyle(fontSize: 15, color: Colors.black54),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
