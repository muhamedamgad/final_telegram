import 'package:flutter/material.dart';

class NewFolder extends StatefulWidget {
  @override
  _NewFolderState createState() => _NewFolderState();
}

class _NewFolderState extends State<NewFolder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back)),
        backgroundColor: Theme.of(context).errorColor,
        title: Text(
          'New Folder',
          style: TextStyle(color: Theme.of(context).canvasColor, fontSize: 18),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                width: 100,
                height: 100,
                child: Image.asset('assets/folder (1).png'),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              decoration: InputDecoration(
                  hintText: '   Folder name', border: InputBorder.none),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Included Chats',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_comment,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Add Chats',
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              'Choose chats and types of chats that will appear in this folder. ',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 100,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Text(
                    'Excluded Chats',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20, left: 10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.add_comment,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Remove Chats',
                        style: TextStyle(
                            fontSize: 15,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Text(
              'Choose chats and types of chats that will appear in this folder. ',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          )
        ],
      ),
    );
  }
}
