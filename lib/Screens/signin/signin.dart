
import 'dart:async';
import 'package:carpooling/Model/slide.dart';
import 'package:carpooling/Screens/register/register.dart';
import 'package:carpooling/Screens/signin/forgetpassword/mail.dart';
import 'package:carpooling/Utilis/function.dart';
import 'package:carpooling/Utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:carpooling/Widgets/slide_item.dart';
import 'package:carpooling/Widgets/slide_dots.dart';
class Signin extends StatefulWidget {

  _SigninState createState() => _SigninState();
}
class _SigninState extends State<Signin>{
  int _currentPage = 0;
  final PageController _pageController = PageController(initialPage: 0);

  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 5), (Timer timer) {
      if (_currentPage < 1) {
        _currentPage++;
      } else {
        _currentPage = 0;
      }

      _pageController.animateToPage(
        _currentPage,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    });
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  _onPageChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
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

               child: Column(
                 children: <Widget>[
                   Container(
                    height: 320,
                     width: double.infinity,
                      color: Color(0xFFA7FFEB),
              // Expanded(
             child:Center(
               child: Stack(
                 alignment: AlignmentDirectional.bottomCenter,
                 children: <Widget>[
                   PageView.builder(
                     scrollDirection: Axis.horizontal,
                     controller: _pageController,
                     onPageChanged: _onPageChanged,
                     itemCount: slideList.length,
                     itemBuilder: (ctx, i) => SlideItem(i),
                   ),
                   Stack(
                     alignment: AlignmentDirectional.topStart,
                     children: <Widget>[
                       Container(
                         margin: const EdgeInsets.only(bottom:5),
                         child: Row(
                           mainAxisSize: MainAxisSize.min,
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: <Widget>[
                             for(int i = 0; i<slideList.length; i++)
                               if( i == _currentPage )
                                 SlideDots(true)
                               else
                                 SlideDots(false)
                           ],
                         ),
                       )
                     ],
                   )
                 ],
               ),
             )
                   ),
             SizedBox(
               height: 10,
             ),
               Column(
                children: <Widget>[
             Padding(
               padding: EdgeInsets.all(20),
               child: Column(
                 children: <Widget>[
                  SizedBox(height: 20.0,),
                   buildTextField("Work Email",  false),
                   buildTextField("New Password",  true),
                  SizedBox(height: 20.0,),
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) =>Forgetpassword()));
                        },
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Forgot Password?',
                              style:kSubtitlestyle,
                            ),
                          ]
                      )
                  ),
                  SizedBox(height: 20.0,),
                  Text("New User?", style:kSubtitlestyle,textAlign:TextAlign.center,),
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
              ]
               )
           ]
              ),
          //  ),
          ))),
    );
  }
}