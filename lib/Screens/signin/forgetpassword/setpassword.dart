import 'package:carpooling/Utilis/function.dart';
import 'package:flutter/material.dart';
class Setpassword extends StatefulWidget {
  @override
  _SetpasswordState createState() => _SetpasswordState();
}


class _SetpasswordState extends State<Setpassword> {
  bool showPassword = true;
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

    padding: EdgeInsets.all(16),
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
    Text("Set New password",style: TextStyle(color: Colors.black87, fontSize: 25,fontWeight: FontWeight.bold,),textAlign: TextAlign.start,),
    SizedBox(height: 10,),
    Text("Enter your new password",style: TextStyle(color: Colors.grey, fontSize: 20,),),
    SizedBox(height: 20,),
      buildTextField("New Password",  false),
      buildTextField("Confirm new Password",  true),
      SizedBox(height: 20.0,),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlineButton(
            padding: EdgeInsets.symmetric(horizontal: 50),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.white,
            child: Text("CANCEL",
                style: TextStyle(
                    fontSize: 14,
                    letterSpacing: 2.2,
                   )),
          ),
          RaisedButton(
            onPressed: () {

            },
            color: Colors.tealAccent,
            padding: EdgeInsets.symmetric(horizontal: 50),
            //elevation: 2,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)),
            child: Text(
              "SAVE",
              style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 2.2,
                 ),
            ),
          )
        ],
      )

     ]))))));
  }


 /* Widget buildTextField(
      String placeholder, bool isPasswordTextField) {
  //  bool showPassword = false;
    return Padding(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: TextField(
        obscureText: isPasswordTextField ? showPassword : true,
        decoration: InputDecoration(
          suffixIcon: isPasswordTextField
              ? IconButton(
             onPressed: () {
            setState(() {
            showPassword = !showPassword;
            });
          },
            icon: Icon(
              Icons.remove_red_eye,
              color: Colors.grey,
            ),
          )
              : null,
          //  contentPadding: EdgeInsets.only(bottom: 3),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2.0),
          ),
          focusedBorder:  OutlineInputBorder(
            borderSide:new BorderSide(
                color: Colors.tealAccent, width: 1.0
            ),
          ),
          // labelText: labelText,
          // floatingLabelBehavior: FloatingLabelBehavior.always,
          hintText: "Input Text",
          labelText: placeholder,
          labelStyle: TextStyle(color: Colors.grey),

        ),
      ),
    );
  }*/
}
