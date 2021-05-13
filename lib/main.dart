import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_cert/screens/LoginScreen.dart';

void main(){
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        'login':(context)=>LoginScreen()
      },
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  void startTimer(){
    Timer(Duration(seconds: 7), (){
Navigator.of(context).pushReplacementNamed('login');

  });
  }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset('assets/images/Untitled design (2).png', width: MediaQuery.of(context).size.width*.5,),
      )
    );
  }

}




