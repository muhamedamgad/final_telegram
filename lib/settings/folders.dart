import 'package:flutter/material.dart';
import 'package:final_telegram/settings/newFolder.dart';

class Folders extends StatefulWidget {
  @override
  _FoldersState createState() => _FoldersState();
}

class _FoldersState extends State<Folders> {
  Widget _folderWidget(String title) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(Icons.menu),
        ),
        SizedBox(
          width: 30,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 15),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
        title: Text('Folders'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Container(
              width: 150,
              height: 100,
              child: Image.asset('images/folder.png'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child: Center(
              child: Text(
                'Create folders for different groups of chats and'
                ' quickly switch between them.',textAlign: TextAlign.center,
                style: TextStyle(color: Theme.of(context).disabledColor),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 220,
            color: Theme.of(context).canvasColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Folders',
                    style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                _folderWidget('غير المقروءة'),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 1,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                _folderWidget('شخصي'),
                Padding(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    height: 1,
                    color: Theme.of(context).dividerColor,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewFolder()));
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Icon(
                          Icons.add_box,
                          color: Theme.of(context).primaryColor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(
                          'Create New Folder',
                          style: TextStyle(
                              color: Theme.of(context).primaryColor,
                              fontSize: 15),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
