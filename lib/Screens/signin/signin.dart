
import 'package:carpooling/Screens/register/register.dart';
import 'package:flutter/material.dart';



//import '../main.dart';


class Signin extends StatefulWidget {

  _SigninState createState() => _SigninState();
}
class _SigninState extends State<Signin>{

  @override


  bool _obscuredText = true;

  _toggle(){
    setState(() {
      _obscuredText = !_obscuredText;
    });
  }
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Scaffold(

      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,

      body:GestureDetector(
         onTap: (){
            FocusScope.of(context).unfocus();
          },
          child:SingleChildScrollView(


           child: Container(
           // height: MediaQuery.of(context).size.height,
             width: double.infinity,
             height: size.height,
             // padding: EdgeInsets.all(16),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
               Positioned(
                top: 0,
                left: 0,
                  child:const SizedBox(
                    width: 650.0,
                    height: 300.0,
                    child: const DecoratedBox(
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(40.0),
                            bottomLeft: Radius.circular(40.0)),
                            color: Color(0xFFA7FFEB),
                        image: DecorationImage(
                          image: AssetImage(
                              'assets/images/runinglate.png',),
                         // fit: BoxFit.fill,
                        ),

                      ),
                    ),
                  ),
                ),


             /* Padding(
              padding: EdgeInsets.all(40.0),
               child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: <Widget>[
                 Center(
                   child: Image(
                     image: AssetImage(
                       'assets/images/runinglate.png',
                     ),
                     height: 100.0,
                     width: 300.0,
                   ),
                 ),
                 /*SizedBox(height: 30.0),
                 Text(
                  'Running Late?'
                 ),
                 SizedBox(height: 15.0),
                 Text(
                   'Ride With Us!'
                 ),*/
               ],
             ),
           ),*/


             Padding(
               padding: EdgeInsets.all(16),
               child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                 children: <Widget>[
                  SizedBox(height: 30.0,),
                  TextField(

                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.tealAccent
                          )
                      ),
                      contentPadding:const EdgeInsets.all(5),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),

                      hintText: "Input Text",
                      labelText: "Work Email",
                      labelStyle: TextStyle(color: Colors.grey),
                      //  errorText: snapshot.error),
                    ),
                  ),
                  SizedBox(height: 20.0,),
                  TextField(
                    keyboardType: TextInputType.text,
                    obscureText: _obscuredText,
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.tealAccent
                            )
                        ),
                       // contentPadding:const EdgeInsets.all(5),

                        hintText: "Input Text",
                        labelText: "Password",
                        labelStyle: TextStyle(color: Colors.grey),
                        // suffixIcon: Icon(Icons.visibility,color: Colors.grey,),
                        suffixIcon: FlatButton(onPressed: _toggle, child:Icon(Icons.remove_red_eye, color: _obscuredText ? Colors.black12 : Colors.black54))
                      // errorText: snapshot.error),
                    ),
                    /*  onChanged: (value) {
                 setState(() {
                 _password = value;
                 }}*/

                  ),

                  SizedBox(height: 40.0,),

                  ButtonTheme(
                    minWidth: 400,
                    height: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: RaisedButton(
                      color: Colors.tealAccent,
                      onPressed: () {},
                      child: Text("SIGN IN"),
                    ),
                  ),


                  FlatButton(
                      onPressed: () {
                        // Navigator.pushNamed(context,ForgotPassword.id, );
                      },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.grey, fontSize: 12,),
                            ),
                          ]
                      )
                  ),
                  SizedBox(height: 20.0,),
                  Text("New User?", style: TextStyle(color: Colors.grey, fontSize: 13,),textAlign:TextAlign.center,),
                  SizedBox(height: 20.0,),
                  ButtonTheme(
                    minWidth: 400,
                    height: 40,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                    child: RaisedButton(
                      color: Colors.white,

                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => Register()),
                        );
                      },
                      child: Text("REGISTER NOW"),
                    ),
                  ),
                    ],
               )),
                ],
              ),
            ),
          )),
    );
  }
}