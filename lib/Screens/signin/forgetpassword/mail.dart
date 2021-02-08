import 'package:carpooling/Screens/signin/forgetpassword/otp.dart';
import 'package:flutter/material.dart';
class Forgetpassword extends StatefulWidget {
  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
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
        //crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 30,),
       Align(alignment: Alignment.topLeft,
        child:IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),

        )),
      SizedBox(height: 30,),
     Text("Enter your Work Email",style: TextStyle(color: Colors.black87, fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
        SizedBox(height: 10,),
        Text("Please enter your work email we will send you the OTP to your mail",style: TextStyle(color: Colors.grey, fontSize: 20,),),
         SizedBox(height: 50,),
        TextField(
          decoration: new InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey, width: 2.0),
            ),
             focusedBorder:  OutlineInputBorder(
             // borderRadius: const BorderRadius.all(
              // const Radius.circular(0.0),
            // ),
              borderSide:new BorderSide(
                  color: Colors.tealAccent, width: 1.0
              ),
             ),
            hintText: "Input Text",
            labelText: "Work Email",
            labelStyle: TextStyle(color: Colors.grey),
            ),
          ),
        SizedBox(height: 50,),
        RawMaterialButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) =>Passwordotp()));
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
    ))))
      )
    );
  }
}
