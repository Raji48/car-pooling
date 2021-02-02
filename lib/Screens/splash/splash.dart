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

    // mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.center,

      //  mainAxisAlignment: MainAxisAlignment.end,

    children: <Widget>[
     //Align(
    //alignment: Alignment.center,
     //child:
      SizedBox(height: 300,),
      Text( "CarPooling",style:TextStyle(fontSize: 55,color:Colors.black,fontWeight: FontWeight.bold),),
      //),
            // Image(image: NetworkImage("https://cdn.theorg.com/8d87f204-36d3-4d29-830a-6ecce6379037_medium.jpg"),)
      // Image(image: AssetImage('assets/optisollogo.png'),width: 150.0,),
           // SizedBox(height: 200,),
        Expanded(
        child:
      Align(
              alignment: Alignment.bottomCenter,
              child: new Image.asset('assets/optisollogo.png',width:170 ,),
          ))
    ]),


   // )
    ));

  }
}
/*
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: initScreen(context),
    );
  }

  startTime() async {
    var duration = new Duration(seconds: 6);
    return new Timer(duration, route);
  }route() {
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => SecondScreen()
      )
    );
  }

  initScreen(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Image.asset("images/logo.png"),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Text(
              "Splash Screen",
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.white
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            CircularProgressIndicator(
              backgroundColor: Colors.white,
              strokeWidth: 1,
           )
         ],
       ),
      ),
    );
  }
}
 */