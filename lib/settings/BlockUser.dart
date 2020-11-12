import 'package:flutter/material.dart';
import 'package:final_telegram/settings/Chats.dart';
import 'package:final_telegram/home/contactList.dart';

class BlockUser extends StatefulWidget {
  @override
  _BlockUserState createState() => _BlockUserState();
}

class _BlockUserState extends State<BlockUser>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 35),
            child: InkWell(
                onTap: () {
                  Navigator.pop((context));
                },
                child: Icon(Icons.arrow_back)),
          ),
          Padding(
            padding: EdgeInsets.only(top: 18, right: 80),
            child: Text(
              'Block User',
              style: TextStyle(fontSize: 18),
            ),
          ),
          SizedBox(
            width: 100,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(
              Icons.search,
              size: 23,
              color: Theme.of(context).canvasColor,
            ),
          ),
        ],
        backgroundColor: Theme.of(context).errorColor,
        bottom: TabBar(
          controller: _tabController,
          onTap: (index) {},
          indicatorColor: Theme.of(context).canvasColor,
          indicatorSize: TabBarIndicatorSize.label,
          labelPadding: EdgeInsets.symmetric(vertical: 10),
          tabs: <Widget>[
            Text(
              'CHATS',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'CONTACTS',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Chats(),
          ContactL(),
        ],
      ),
    );
  }
}
