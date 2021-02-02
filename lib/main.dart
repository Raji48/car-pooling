import 'dart:async';

import 'package:carpooling/Screens/signin/signin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'Screens/splash/splash.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  _MyAppState createState()=>_MyAppState();

}

class _MyAppState extends State<MyApp> {
  /*@override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Signin()),
        ));
  }*/
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);


    return new MaterialApp(
      home: Splash(),
       // home: Scaffold(

           /* backgroundColor: Colors.tealAccent,//cyanAccent[100],
            body:Container(
             height: MediaQuery.of(context).size.height,
            child:Center(
              child:Text( "CarPooling",style:TextStyle(fontSize: 55,color:Colors.black,fontWeight: FontWeight.bold),
              ),
            ))*/
       // )
    );
  }

}


