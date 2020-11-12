import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class AddContact extends StatefulWidget {
  @override
  _AddContactState createState() => _AddContactState();
}

class _AddContactState extends State<AddContact> {
  bool _onEditing = true;
  String _code;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Contact'),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(Icons.beenhere),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Row(children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor)),
                          hintText: 'First name (required)',
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).accentColor)),
                    ),
                  ),
                  Container(
                    width: 200,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Theme.of(context).accentColor)),
                          hintText: 'Last name (optional)',
                          hintStyle: TextStyle(
                              fontSize: 18,
                              color: Theme.of(context).accentColor)),
                    ),
                  ),
                ],
              ),
            )
          ]),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
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
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width - 110,
                      child: Padding(
                        padding: EdgeInsets.only(top: 18),
                        child: VerificationCode(
                          textStyle: TextStyle(
                              fontSize: 15.0,
                              color: Theme.of(context).primaryColor),
                          keyboardType: TextInputType.number,
                          underlineColor: Colors.amber,
                          length: 11,
                          itemSize: 30,
                          onCompleted: (String value) {
                            setState(() {
                              _code = value;
                            });
                          },
                          onEditing: (bool value) {
                            setState(() {
                              _onEditing = value;
                            });
                            if (!_onEditing) FocusScope.of(context).unfocus();
                          },
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
