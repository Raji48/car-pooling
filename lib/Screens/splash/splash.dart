import 'package:carpooling/Screens/signin/signin.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 5),
            () =>
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Signin()),
            ));
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      backgroundColor: Colors.tealAccent,
      body:
      Container(
        height: MediaQuery.of(context).size.height,
    padding: EdgeInsets.all(16),
    child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      SizedBox(height: 300,),
      Text( "CarPooling",style:TextStyle(fontSize: 55,color:Colors.black,fontWeight: FontWeight.bold),),
        Expanded(
        child:
            Align(
              alignment: Alignment.bottomCenter,
              child: new Image.asset('assets/images/optisollogo.png',width:170 ,),
          ))
        ]),
    ));

  }
}
