import 'package:final_telegram/settings/Logout.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:country_code_picker/country_code_picker.dart';

class AddAnother extends StatefulWidget {
  @override
  _AddAnotherState createState() => _AddAnotherState();
}

class _AddAnotherState extends State<AddAnother> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('New Number'),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Logout(),
                    ));
              }),
        ],
        //backgroundColor: Theme.of(context).errorColor,
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
                      keyboardType: TextInputType.number,
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
              style: TextStyle(color: Colors.grey),
            ),
          ),
        ],
      )),
    );
  }
}
