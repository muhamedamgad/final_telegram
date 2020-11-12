import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/home/searchList.dart';
import 'package:final_telegram/home/chatin.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).focusColor,
      appBar: AppBar(
        title: TextFormField(
          cursorColor: Colors.black,
          autocorrect: true,
          autofocus: true,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: 'Search',hintStyle:TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'People',
              style: TextStyle(color: Theme.of(context).disabledColor),
            ),
          ),
          Container(
            color: Theme.of(context).canvasColor,
            height: 110.0,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ChatIn()));
                    },
                    child: Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            image: DecorationImage(
                                image: NetworkImage(
                                  'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                                ),
                                fit: BoxFit.cover),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 3,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: Text('Ahmed'),
                      )
                    ]),
                  ),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Fadi'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Naglaa'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Mariam'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Mazen'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Esraa'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Fares'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Waleed'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Nada'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Basem'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text('Ahmed'),
                    )
                  ]),
                  Column(children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: NetworkImage(
                                'https://image.freepik.com/free-vector/illustration-user-avatar-icon_53876-5907.jpg',
                              ),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Text('Mostafa'),
                    )
                  ]),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
