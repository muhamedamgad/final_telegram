import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:final_telegram/login/splashScreen.dart';

class LoginScreen4 extends StatefulWidget {
  @override
  _LoginScreen4State createState() => _LoginScreen4State();
}

class _LoginScreen4State extends State<LoginScreen4> {
  bool _onEditing = true;
  String _code;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).errorColor,
          title: Text('Phone verification'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 70.0),
                child: Container(
                  width: 75,
                  height: 75,
                  child: Image.asset('images/sending.png'),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: Text(
                    'Enter code',
                    style:
                        TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 15),
                child: Text(
                  'we ’ve sent an SMS with an activation code to your phone '
                  '+20 01066010293.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Theme.of(context).disabledColor),
                ),
              ),
              VerificationCode(
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
