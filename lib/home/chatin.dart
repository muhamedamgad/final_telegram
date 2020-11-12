import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/home/chatscreen.dart';
import 'package:image_picker/image_picker.dart';

class ChatIn extends StatefulWidget {
  @override
  _ChatInState createState() => _ChatInState();
}

class _ChatInState extends State<ChatIn> {
  File _image;
  final picker = ImagePicker();
  Future getImage() async {
    final pickedFile = await picker.getImage(
      source: ImageSource.gallery,
    );

    setState(() {
      _image = File(pickedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).canvasColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(30)
                ),
                child: new CircleAvatar(

                  foregroundColor: Theme.of(context).primaryColor,
                  backgroundColor: Theme.of(context).canvasColor,
                  backgroundImage: new NetworkImage(
                      'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg'),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 170),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 10, left: 5, bottom: 5),
                      child: Text(
                        dummyData[0].name,
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    Text('Online'),
                    SizedBox(
                      width: 100,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(child: ListView.builder(itemBuilder: (ctx, index) {
            return Row(
              mainAxisAlignment: index % 2 == 0
                  ? MainAxisAlignment.start
                  : MainAxisAlignment.end,
              children: [
                Container(
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(10),
                  //width: MediaQuery.of(context).size.width - 200,
                  decoration: BoxDecoration(
                    color: Theme.of(context).dividerColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('How are u ?'),
                )
              ],
            );
          })),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Icon(
                  Icons.gif,
                  size: 25,
                  color: Theme.of(context).disabledColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'Message',
                    hintStyle:
                        TextStyle(color: Theme.of(context).disabledColor),
                    contentPadding: EdgeInsets.symmetric(horizontal: 7),
                  ),
                )),
                SizedBox(
                  width: 6,
                ),
                InkWell(
                    onTap: () {
                      getImage();
                    },
                    child: Icon(
                      Icons.attachment,
                      size: 25,
                      color: Theme.of(context).disabledColor,
                    )),
                SizedBox(
                  width: 15,
                ),
                Icon(
                  Icons.mic,
                  size: 25,
                  color: Theme.of(context).disabledColor,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
