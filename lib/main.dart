import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import './screens/getting_started_screen.dart';
import './screens/login_screen.dart';
import './screens/signup_screen.dart';
import 'package:splashscreen/splashscreen.dart';

//void main() {
//  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
//      .then((_) {
//    runApp(MyApp());
//  });
//}
void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
//      debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {
      LoginScreen.routeName: (ctx) => LoginScreen(),
      SignupScreen.routeName: (ctx) => SignupScreen(),
      //OTPScreen.routeName: (ctx) => OTPScreen(),
    },
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 5,
        navigateAfterSeconds: GettingStartedScreen(),
//        title: Text('Welcome In SplashScreen',
//          style: TextStyle(
//              fontWeight: FontWeight.bold,
//              fontSize: 20.0
//          ),),
        image: Image.asset('assets/images/splash.png'),
//        backgroundColor: Colors.white,
        gradientBackground: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.green, Colors.white]),
        styleTextUnderTheLoader: TextStyle(),
        photoSize: 100.0,
        onClick: ()=>print("Flutter Egypt"),
        loaderColor: Colors.red
    );
  }
}

