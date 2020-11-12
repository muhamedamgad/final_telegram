import 'package:flutter/material.dart';
import 'package:final_telegram/home/contactings.dart';

class NewGroup extends StatefulWidget {
  @override
  _NewGroupState createState() => _NewGroupState();
}

class _NewGroupState extends State<NewGroup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).errorColor,
        title: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 30),
              child: Text(
                'New Group',
                style: TextStyle(
                    fontSize: 20, color: Theme.of(context).canvasColor),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 13),
              child: Text(
                'up to 200000 members',
                style: TextStyle(
                    fontSize: 13, color: Theme.of(context).dividerColor),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              focusColor: Theme.of(context).dividerColor,
              hintText: '  Add People...',
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 400,
            child: ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (context, i) => new Column(children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                new ListTile(
                  leading: new CircleAvatar(
                    foregroundColor: Theme.of(context).primaryColor,
                    backgroundColor: Theme.of(context).canvasColor,
                    backgroundImage: new NetworkImage(dummyData[i].avatar),
                  ),
                  title: new Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      new Text(
                        dummyData[i].name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      new Text(
                        dummyData[i].number,
                        style: TextStyle(
                            color: Theme.of(context).errorColor,
                            fontSize: 14.0),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ],
      ),
    );
  }
}
