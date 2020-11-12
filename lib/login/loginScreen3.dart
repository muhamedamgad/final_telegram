import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:final_telegram/login/loginScreen4.dart';
import 'package:final_telegram/login/splashScreen.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';

class LoginScreen3 extends StatefulWidget {
  @override
  _LoginScreen3State createState() => _LoginScreen3State();
}

class _LoginScreen3State extends State<LoginScreen3> {
  bool _onEditing = true;
  String _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).canvasColor,
        appBar: AppBar(
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back)),
          automaticallyImplyLeading: false,
          title: Text('+20 01 0660 1029 3'),
          backgroundColor: Theme.of(context).errorColor,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset('images/send.png'),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Check your telegram messages',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20, left: 15, right: 10),
                child: Text(
                  'we ’ve sent the code to the Telegram app on your other'
                  ' device.',
                  style: TextStyle(
                      fontSize: 15, color: Theme.of(context).disabledColor),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Center(
                child: VerificationCode(
                  textStyle: TextStyle(fontSize: 20.0, color: Colors.red[900]),
                  keyboardType: TextInputType.number,
                  underlineColor: Colors.amber,
                  length: 5,
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
              SizedBox(
                height: 30,
              ),
              InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LoginScreen4()));
                  },
                  child: Center(
                      child: Text(
                    'Send the code as an SMS',
                    style: TextStyle(color: Theme.of(context).primaryColor),
                  )))
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).primaryColor,
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => SplashScreen()));
          },
          child: Icon(
            Icons.arrow_forward,
            color: Theme.of(context).canvasColor,
          ),
        ));
  }
}
