import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/home/Contacts.dart';
import 'package:final_telegram/home/allChats.dart';
import 'package:final_telegram/home/channel.dart';
import 'package:final_telegram/home/newgroup.dart';
import 'package:final_telegram/home/newsecretchat.dart';
import 'package:final_telegram/home/unRead.dart';
import 'package:final_telegram/home/personaly.dart';
//import 'file:///D:/flutter%20test/final_telegram/lib/settings/settings.dart';
import 'package:final_telegram/settings/settings.dart';
import 'package:final_telegram/home/calls.dart';
import 'package:final_telegram/home/invitefriends.dart';
import 'package:final_telegram/home/search.dart';
import 'package:final_telegram/home/newmessage.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:final_telegram/home/savedMessages.dart';

class HomeScreen1 extends StatefulWidget {
  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1>
    with SingleTickerProviderStateMixin {
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

  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => NewMessage()));
        },
        child: Icon(
          Icons.create,
          color: Theme.of(context).canvasColor,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Belal Emad'),
              accountEmail: Text('01066010293'),
              currentAccountPicture: CircleAvatar(
                // radius: 30,
                // backgroundColor: Colors.orange,
                child: ClipOval(
                  child: SizedBox(
                    width: 90,
                    height: 90,
                    child: Image.asset(
                      ('images/male.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.group),
              title: Text('New Group'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewGroup()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('New Secret chat'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewSecretChat()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.vpn_lock),
              title: Text('New Channel'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NewChannel()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Contacts'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Contacts()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.call),
              title: Text('Calls'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Calls()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.bookmark),
              title: Text('Saved Messages'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SavedMessages()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Settings()),
                );
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person_add),
              title: Text('Invite Friends'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => InviteFriends()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.help_outline),
              title: Text('Telegram FAQ'),
              onTap: () {
                launch('https://telegram.org/faq');
              },
            ),
          ],
        ),
      ),

      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          AllChats(),
          UnRead(),
          Personaly(),
        ],
      ),
      appBar: AppBar(
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 13, right: 80),
            child: Text(
              'Telegram',
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(
            width: 100,
          ),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Search()));
            },
            icon: Icon(
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
              'All chats',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              ' Un Read',
              style: TextStyle(fontSize: 17),
            ),
            Text(
              'Personal',
              style: TextStyle(fontSize: 17),
            ),
          ],
        ),
      ),
    );
  }
}
