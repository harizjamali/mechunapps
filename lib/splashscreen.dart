import 'dart:async';
import 'package:flutter/material.dart';
import 'LoginScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.purple,
    body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('images/logo.png',)
                ],
              ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircularProgressIndicator(),
                SizedBox(height: 20,),
                Text('Online store for everyone',
                  style: TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 12,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ],
      ),
    ),
   );
  }

  void NativeToLogIn(){
    Timer(Duration(seconds: 3), ()=> Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (BuildContext context)=> LogInScreen()))
    );


  }

  @override
  void initState() {
    super.initState();
    NativeToLogIn();
  }
}




