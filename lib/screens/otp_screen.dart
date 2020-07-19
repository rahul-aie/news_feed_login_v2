import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/resend_otp_screen.dart';
import '../screens/getting_started_screen.dart';

class OTPScreen extends StatelessWidget {
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
            TextField(
              style: TextStyle(
                  fontSize: 16,
                  height: 2.0,
                  color: Colors.black54),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: 'Input OTP',
                contentPadding: const EdgeInsets.all(15),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),

            SizedBox(
              height: 20,
            ),
            FlatButton(
              child: Text(
                'CONFIRM',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.all(15),
//                    color: Theme.of(context).primaryColor,
              color: Colors.green,
              textColor: Colors.white,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => GettingStartedScreen()));
//                Navigator.of(context).pushNamed(LoginScreen.routeName);
              },
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                FlatButton(
                  child: Text(
                    'Resend OTP?',
                    style: TextStyle(
                      fontSize: 18,
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () {
//                    Navigator.of(context).pushNamed(SignupScreen.routeName);
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => ResendOTPScreen()));

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
