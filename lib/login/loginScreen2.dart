import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:final_telegram/login/loginScreen3.dart';
import 'package:country_code_picker/country_code_picker.dart';

class LoginScreen2 extends StatefulWidget {
  @override
  _LoginScreen2State createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Text('Your Phone'),
          backgroundColor: Theme.of(context).errorColor,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(
                  Size(350, 50),
                ),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Country'),
                ),
              ),
            ),
            Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(left: 20),
                      child: Container(
                        height: 50,
                        width: 50,
                        child: TextFormField(
                          decoration: InputDecoration(
                              prefixIcon: CountryCodePicker(
                                initialSelection: 'IN',
                                showCountryOnly: true,
                                showFlag: true,
                              ),
                              enabledBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Theme.of(context).accentColor))),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 110,
                      child: TextField(
                        keyboardType:TextInputType.number,
                        decoration: InputDecoration(hintText: 'Phone Number'),
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Please confirm your country code and enter your phone number.',
                style: TextStyle(color: Theme.of(context).accentColor),
              ),
            ),
          ],
        )),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => LoginScreen3()));
          },
          child: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).canvasColor,
          ),
        ));
  }
}
