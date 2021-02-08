import 'package:carpooling/Screens/signin/forgetpassword/setpassword.dart';
import 'package:flutter/material.dart';

class Passwordotp extends StatefulWidget {
  @override
  _PasswordotpState createState() => _PasswordotpState();
}

class _PasswordotpState extends State<Passwordotp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:GestureDetector(
        onTap: (){
      FocusScope.of(context).unfocus();
    },
    child: SafeArea(
    child: SingleChildScrollView(
    child: Container(
    //height: MediaQuery.of(context).size.height,

    padding: EdgeInsets.all(10),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    SizedBox(height: 30,),
    Align(alignment: Alignment.topLeft,
    child:IconButton(
    icon: Icon(Icons.arrow_back, color: Colors.black),
    onPressed: () => Navigator.of(context).pop(),

    )),
    SizedBox(height: 30,),
    Text("Enter OTP",style: TextStyle(color: Colors.black87, fontSize: 25,fontWeight: FontWeight.bold,)),
    SizedBox(height: 10,),
    Text("We have send the OTP to your registered Mobile number and Email id",style: TextStyle(color: Colors.grey, fontSize: 20,)),
      //SizedBox(height: 10,),
      SizedBox(
        height: 20,
      ),
      RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
            text: "Didn't get OTP? ",
            style: TextStyle(color: Colors.black54, fontSize: 15),
            children: [
              TextSpan(
                  text: " RESEND",
                //  recognizer: onTapRecognizer,
                  style: TextStyle(
                      color: Color(0xFF91D3B3),
                      fontWeight: FontWeight.bold,
                      fontSize: 16))

            ]
        ),
      ),
      SizedBox(height: 50,),
      RawMaterialButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>Setpassword()));
        },
        elevation: 2.0,
        fillColor:  Color(0xFFA7FFEB),
        child: Icon(
          Icons.arrow_forward,
          size: 35.0,
        ),
        padding: EdgeInsets.all(15.0),
        shape: CircleBorder(),
      ),

    ]
    )
    )
    )
    ))
    );
  }
}
