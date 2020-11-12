import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/home/contactings.dart';
import 'package:final_telegram/home/contactList.dart';

class InviteFriends extends StatefulWidget {
  @override
  _InviteFriendsState createState() => _InviteFriendsState();
}

class _InviteFriendsState extends State<InviteFriends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invite Friends'),
        backgroundColor: Theme.of(context).errorColor,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: TextField(
              autofocus: true,
              autocorrect: true,
              decoration: InputDecoration(
                focusedBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    borderSide: BorderSide(
                        width: 2.0,
                        style: BorderStyle.solid,
                        color: Theme.of(context).accentColor)),
                hintText: '    Search Contacts',
                hoverColor: Theme.of(context).accentColor,
                hintStyle: TextStyle(color: Theme.of(context).accentColor),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Flexible(
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.share,
                    size: 25,
                    color: Theme.of(context).accentColor,
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    child: Text(
                      'Share Telegram',
                      style: TextStyle(fontSize: 18, color: Colors.black87),
                    ),
                  ),
                ],
              ),
            ),
          ),
//          Padding(
//            padding: EdgeInsets.only(left: 50,top: 10),
//            child: Container(
//              color: Theme.of(context).accentColor,
//              width: 350,
//              height: 1.0,
//            ),
//          ),
          Divider(
            thickness: 1,
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
