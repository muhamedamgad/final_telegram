import 'package:final_telegram/home/homeScreen1.dart';
import 'package:final_telegram/settings/ActiveSessions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:final_telegram/settings/Notifications&Sounds.dart';
import 'package:final_telegram/settings/Privacy.dart';
import 'package:flutter/rendering.dart';
import 'package:final_telegram/settings/Account.dart';
import 'package:final_telegram/settings/Username.dart';
import 'package:final_telegram/settings/Bio.dart';
import 'package:final_telegram/settings/Editname.dart';
import 'package:final_telegram/settings/Logout.dart';
import 'package:final_telegram/settings/search.dart';
import 'package:final_telegram/settings/dataAndStorage.dart';
import 'package:final_telegram/settings/chatsettings.dart';
import 'package:final_telegram/settings/folders.dart';
import 'package:final_telegram/settings/languages.dart';
import 'package:final_telegram/settings/AskVolanteer.dart';

void main() => runApp(Settings());

class Popup {
  final Text title;
  final Icon icon;

  const Popup({
    this.title,
    this.icon,
  });
}

const List<Popup> Popups = <Popup>[
  const Popup(
    title: const Text(
      ('edit name'),
    ),
    icon: const Icon(Icons.edit),
  ),
];

class Settings extends StatelessWidget {

  void _selectedPoup(Popup popup) {}

  @override
  Widget build(BuildContext context) {

    showAlertDialog(BuildContext context) {
      Widget cancelButton = FlatButton(
        child: Text("Cancel",
            style: TextStyle(color: Theme.of(context).primaryColor)),
        onPressed: () {
          Navigator.of(context).pop();
        },
      );
      Widget continueButton = FlatButton(
        child: InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => AskAVolunteer()));
            },
            child: Text(
              "Ask a Volunteer",
              style: TextStyle(color: Theme.of(context).primaryColor),
            )),
        onPressed: () {},
      );

      AlertDialog alert = AlertDialog(
        title: Text("Ask a Question"),
        content: Container(
          // width: 300,
          height: 180,
          child: Column(
            children: <Widget>[
              Text("Plese note that Telegram support is"
                  "done by volunteers. we try to respond"
                  " quickly as possible,but it may take"
                  " a while."),
              SizedBox(
                height: 20,
              ),
              Text("Please take a look at the Telegram FAQ : it has answers"
                  " to most questions and"
                  "important tips for troubleshooting.")
            ],
          ),
        ),
        actions: [
          cancelButton,
          continueButton,
        ],
      );
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }

    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(

            body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(

        leading: InkWell(
          child: Icon(Icons.arrow_back),
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => HomeScreen1()));
          },
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Search()));
              }),
          PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return Popups.map((Popup popup) {
                return PopupMenuItem(
                  value: _selectedPoup,
                  child: Container(
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.edit),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Editname(),
                                ));
                          },
                          title: Text('Edit name'),
                        ),
                        ListTile(
                          leading: Icon(Icons.block),
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Logout(),
                                ));
                          },
                          title: Text('Log out'),
                        ),
                      ],
                    ),
                  ),
                );
              }).toList();
            },
          ),
        ],
        expandedHeight: 300,
        pinned: true,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Row(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(90.0),
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                        'https://image.freepik.com/free-photo/mand-holding-cup_1258-340.jpg',
                      )),
                ),
              ),

              // ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Belal Emad',
                style: TextStyle(
                    fontSize: 18, color: Theme.of(context).canvasColor),
              ),
            ],
          ),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate([
          Column(
            children: <Widget>[
              Container(
                // height: 200,
                //width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        title: Text(
                          'Account',
                          style: TextStyle(
                              fontSize: 17,
                              color: Theme.of(context).primaryColor,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      ListTile(
                        title: Text(
                          '+20 106 6010293',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Tab to change phone number',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Account(),
                              ));
                        },
                      ),
                      Divider(
                        height: .0,
                      ),
                      ListTile(
                        title: Text(
                          '@BelalEmad',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'UserName',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Username(),
                              ));
                        },
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 1,
                        // color: Theme.of(context).accentColor,
                      ),
                      Divider(
                        height: .0,
                      ),
                      ListTile(
                        title: Text(
                          ' Bio',
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.black,
                          ),
                        ),
                        subtitle: Text(
                          'Add A few words about yourself',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bio(),
                              ));
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Divider(
                thickness: 15,
              ),
              Container(
                // height: 405,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.only(left: 20, top: 15),
                    ),
                    ListTile(
                      title: Text(
                        'Notifications and Sounds',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.notifications_none,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Notifications(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Privacy and Security',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.lock_outline,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Privacy(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Data and Storage',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.pie_chart_outlined,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DataAndStorage(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Chat Settings',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.chat_bubble_outline,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ChatSettings(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Folders',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.folder_open,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Folders(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Devices',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.computer,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ActiveSessions(),
                            ));
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Language',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.language,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Languages(),
                            ));
                      },
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 15.0,
              ),
              Container(
                //height: 200,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text(
                        'Help',
                        style: TextStyle(
                            fontSize: 17,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.bold),
                      ),
                      margin: EdgeInsets.only(left: 20, top: 15),
                    ),
                    ListTile(
                      title: Text(
                        'Ask a Question',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.textsms,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        showAlertDialog(context);
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Telegram FAQ',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.help_outline,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        launch('https://telegram.org/faq');
                      },
                    ),
                    Divider(
                      height: .0,
                    ),
                    ListTile(
                      title: Text(
                        'Privacy Policy',
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.black,
                        ),
                      ),
                      leading: Icon(
                        Icons.verified_user,
                        color: Colors.grey,
                      ),
                      onTap: () {
                        launch('https://telegram.org/privacy');
                      },
                    ),
                  ],
                ),
              )
            ],
          )
        ]),
      )
    ])));
  }
}
