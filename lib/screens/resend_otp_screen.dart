import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/login_screen.dart';

class ResendOTPScreen extends StatelessWidget {
  static const routeName = '/login';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
              'OTP',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,
                color: Colors.black,
              )
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(15),
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(
              height: 50,
            ),
             Center(
               child: Text(
                'If your phone is associated with this number, you will recieve an OTP to login. If you don\'t, please try another number.',
                style: TextStyle(
                  fontSize: 14,
                ),
              ),
             ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FlatButton(
                  child: Text(
                    'Back to Login',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  onPressed: () {
//                    Navigator.of(context).pushNamed(SignupScreen.routeName);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => LoginScreen()));
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
