import 'package:carpooling/Screens/register_screen.dart';
import 'package:flutter/material.dart';

import '../main.dart';

/*void main() => runApp(Sigin());

class Sigin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
*/
class Signin extends StatefulWidget {
  /*changeThePage(BuildContext context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => PageTwo()));
  }*/
  _SigninState createState() => _SigninState();
}
class _SigninState extends State<Signin>{
  @override
  Widget build(BuildContext context) {


    return new Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomPadding: false,
      body:GestureDetector(
        onTap: (){
      FocusScope.of(context).unfocus();
         },
     //SingleChildScrollView(

        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(16),
          child: Column(

          // mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 300.0,),
             TextField(

                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.tealAccent
                          )
                      ),
                      hintText: "Input Text",
                      labelText: "Work Email",
                      labelStyle: TextStyle(color: Colors.grey),
                    //  errorText: snapshot.error),
                ),
              ),
              SizedBox(height: 20.0,),
               TextField(
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(

                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.tealAccent
                          )
                      ),
                      hintText: "Input Text",
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.grey),
                      suffixIcon: Icon(Icons.visibility,color: Colors.grey,),

                     // errorText: snapshot.error),
                ),
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
              SizedBox(height: 40.0,),
              Text("New User?", style: TextStyle(color: Colors.grey, fontSize: 13,),),
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
          ),
        ),
      ),
    );
  }
}