import 'package:flutter/material.dart';
import 'package:final_telegram/home/contactings.dart';
import 'package:final_telegram/home/chatin.dart';
import 'package:final_telegram/home/invitefriends.dart';
import 'package:final_telegram/home/peopleNearby.dart';

class Contacts extends StatefulWidget {
  @override
  _ContactsState createState() => _ContactsState();
}

class _ContactsState extends State<Contacts> {
  Widget _items({Widget icon, String title}) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: <Widget>[
          icon,
          SizedBox(
            width: 15,
          ),
          Text(
            title,
            style: TextStyle(fontSize: 17),
          )
        ],
      ),
    );
  }

  Widget appBarTitle = new Text("Contacts");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).dividerColor,
      appBar: AppBar(
          backgroundColor: Theme.of(context).errorColor,
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
                    this.appBarTitle = new Text("Contacts");
                  }
                });
              },
            ),
          ]),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
              color: Theme.of(context).canvasColor,
              child: Column(
                children: <Widget>[
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => InviteFriends()));
                      },
                      child: _items(
                          icon: Icon(Icons.person_add),
                          title: 'Invite Friends')),
                  InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => PeopleNearby()));
                      },
                      child: _items(
                          icon: Icon(Icons.near_me),
                          title: 'Find People Nearby')),
                ],
              )),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              'Sorted by name',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            color: Theme.of(context).canvasColor,
            width: MediaQuery.of(context).size.width,
            height: 584,
            child: ListView.builder(
              itemCount: dummyData.length,
              itemBuilder: (context, i) => new Column(children: <Widget>[
                Divider(
                  height: 10.0,
                ),
                new ListTile(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChatIn(),
                        ));
                  },
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
                      ),
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
