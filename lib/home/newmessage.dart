import 'package:flutter/material.dart';
import 'package:final_telegram/home/addcontacts.dart';
import 'package:final_telegram/home/channel.dart';
import 'package:final_telegram/home/newgroup.dart';
import 'package:final_telegram/home/newsecretchat.dart';
import 'package:final_telegram/home/contactings.dart';

class NewMessage extends StatefulWidget {
  @override
  _NewMessageState createState() => _NewMessageState();
}

class _NewMessageState extends State<NewMessage> {
  Widget appBarTitle = new Text("New Message");
  Icon actionIcon = new Icon(Icons.search);
  Widget _items({Widget icon, String title}) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(
            width: 20,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          title: appBarTitle,
          actions: <Widget>[
            new IconButton(
              icon: actionIcon,
              onPressed: () {
                setState(() {
                  if (this.actionIcon.icon == Icons.search) {
                    this.actionIcon = new Icon(Icons.close);
                    this.appBarTitle = new TextField(
                      style: new TextStyle(
                        color: Colors.white,
                      ),
                      decoration: new InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search",
                          hintStyle: new TextStyle(color: Colors.white)),
                    );
                  } else {
                    this.actionIcon = new Icon(Icons.search);
                    this.appBarTitle = new Text("New Message");
                  }
                });
              },
            ),
          ]),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(
          Icons.add,
          color: Theme.of(context).canvasColor,
        ),
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddContact()));
        },
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 190,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewGroup()));
                  },
                  child: _items(icon: Icon(Icons.group), title: "New Group"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NewSecretChat()));
                  },
                  child:
                      _items(icon: Icon(Icons.lock), title: "New Secret Chat"),
                ),
                InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => NewChannel()));
                  },
                  child: _items(
                      icon: Icon(Icons.library_add), title: "New Channel"),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 2.5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Sorted by name',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          ),
          SizedBox(
            height: 2.5,
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 600,
              color: Theme.of(context).canvasColor,
              child: ListView.builder(
                itemBuilder: (context, i) => new Column(
                  children: <Widget>[
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
                          Text(
                            'last seen recently',
                            style: TextStyle(
                                color: Theme.of(context).disabledColor),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
                itemCount: dummyData.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
