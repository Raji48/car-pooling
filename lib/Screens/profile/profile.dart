import 'package:flutter/material.dart';
class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        appBar: AppBar(
          title: const Text('My Profile'),
          backgroundColor: Colors.white,
        ),
        body:GestureDetector(
        onTap: (){
         FocusScope.of(context).unfocus();
           },
          child: SafeArea(
             child: SingleChildScrollView(
               child: Container(
                     child: Center(
                       child: Stack(children: [
                       CircleAvatar(
                         radius: 60.0,
                              backgroundImage:NetworkImage(//'http://www.personal.psu.edu/kbl5192/jpg.jpg')
                          'https://t4.ftcdn.net/jpg/03/46/93/61/360_F_346936114_RaxE6OQogebgAWTalE1myseY1Hbb5qPM.jpg')
                        ),
                       SizedBox(height: 10,),
                        RawMaterialButton(
                          onPressed: () {
                                 //Navigator.push(context, MaterialPageRoute(builder: (context) =>Passwordotp()));
                              },
                            elevation: 2.0,
                           fillColor:Colors.white,
                           child: Icon(
                             Icons.edit,
                              size: 20.0,
                             ),
                           padding: EdgeInsets.all(10.0),
                       shape: CircleBorder(),
                         ),
                  ],
                 )),

           ))),
        ));
  }
}
