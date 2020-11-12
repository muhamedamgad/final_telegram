import 'package:flutter/material.dart';
import 'package:final_telegram/home/contactings.dart';

class NewSecretChat extends StatefulWidget {
  @override
  _NewSecretChatState createState() => _NewSecretChatState();
}

class _NewSecretChatState extends State<NewSecretChat> {
  Widget appBarTitle = new Text("New Secret Chat");
  Icon actionIcon = new Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    this.appBarTitle = new Text("New Secret Chat");
                  }
                });
              },
            ),
          ]),
      body: Container(
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
                        color: Theme.of(context).errorColor, fontSize: 14.0),
                  )
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
