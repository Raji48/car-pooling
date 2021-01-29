import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package':carpooling/Screens/Signin/sigin_screen.dart;
import 'package:carpooling/Screens/signin_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  _MyAppState createState()=>_MyAppState();

}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return new MaterialApp(

      home:Signin(),

    );
  }

}


