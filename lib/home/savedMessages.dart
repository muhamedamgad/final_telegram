import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:final_telegram/home/chatscreen.dart';
import 'package:image_picker/image_picker.dart';

class SavedMessages extends StatefulWidget {
  @override
  _SavedMessagesState createState() => _SavedMessagesState();
}

class _SavedMessagesState extends State<SavedMessages> {
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
        backgroundColor: Theme.of(context).errorColor,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 5),
                child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.arrow_back)),
              ),
              SizedBox(
                width: 10,
              ),
              Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30)),
                  child: Icon(
                    Icons.bookmark_border,
                    color: Theme.of(context).canvasColor,
                  )),
              SizedBox(
                width: 7,
              ),
              Padding(
                padding: EdgeInsets.only(right: 130),
                child: Text(
                  'Saved Messages',
                  style: TextStyle(fontSize: 17),
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
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 700, left: 5, right: 5),
            child: Expanded(
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
            ),
          )
        ],
      ),
    );
  }
}
