import 'package:carpooling/Utilis/function.dart';
import 'package:carpooling/Utilis/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:passwordfield/passwordfield.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}
class _RegisterState extends State<Register> {
  PickedFile _imageFile;
  final ImagePicker _picker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomPadding: false,
        resizeToAvoidBottomInset: true,
        body:GestureDetector(
            onTap: (){
              FocusScope.of(context).unfocus();
            },
            child: SafeArea(
                child: SingleChildScrollView(
                    child: Container(
                        //height: MediaQuery.of(context).size.height,
                        padding: EdgeInsets.all(17),
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(height: 10,),
                              Align(alignment: Alignment.topLeft,
                                  child:IconButton(
                                    icon: Icon(Icons.arrow_back, color: Colors.black),
                                    onPressed: () => Navigator.of(context).pop(),

                                  )),
                              SizedBox(height: 20,),
                              Text("Complete your Profile",style: kTitlestyle,),
                              SizedBox(height: 10,),
                              Text("Complete your registration process by filling the details below",style: kSubtitlestyle,),
                                SizedBox(height: 20,),
                              Center(
                                child: Stack(children: [
                                 CircleAvatar(
                                    radius: 60.0,
                                    backgroundImage:_imageFile == null ?   NetworkImage(//'http://www.personal.psu.edu/kbl5192/jpg.jpg')
                                        'https://t4.ftcdn.net/jpg/03/46/93/61/360_F_346936114_RaxE6OQogebgAWTalE1myseY1Hbb5qPM.jpg')
                                        :FileImage(File(_imageFile.path)),
                                  ),
                                Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: InkWell(
                                      onTap: () {
                                        showModalBottomSheet(
                                          context: context,
                                          builder: ((builder) => bottomSheet()),
                                        );
                                      },
                                  child:Container(
                                    height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 4,
                                         color: Theme.of(context).scaffoldBackgroundColor,
                                        ),
                                        color:Colors.white,
                                      ),
                                      child: Icon(
                                          Icons.camera_alt, color: Colors.grey,
                                          size: 28.0
                                      ),
                                    ),
                                  ),//),

                                  //)
                                )],
                                ),
                              ),
                              SizedBox(height: 10,),
                              FlatButton.icon(
                                  icon:Icon(Icons.info),
                                  label:Text("Basic details",style: TextStyle(color: Colors.black),) ),
                              SizedBox(height: 10),
                              buildTextField("First Name",false),
                              buildTextField("Last Name",false),

                              SizedBox(height: 10),

                             new Row(
                            //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children: <Widget>[
                           //SizedBox(width: 20.0,),
                             new Flexible(
                                   child: new TextField(
                                     keyboardType: TextInputType.phone,
                                     inputFormatters: <TextInputFormatter>[
                                       FilteringTextInputFormatter.digitsOnly
                                     ],
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Colors.grey, width: 2.0),),
                                      focusedBorder: OutlineInputBorder(
                                         borderSide: BorderSide(color: Colors.tealAccent )),
                                     //  prefixText: "+91 ",

                                          labelText: '+91',
                                  ),

                                  )
                                 ),
                                 SizedBox(width: 20.0,),
                                 new Flexible(

                                  child: new TextField(
                                      keyboardType: TextInputType.phone,
                                       inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter.digitsOnly
                                       ],
                                     decoration: InputDecoration(
                                   // contentPadding: EdgeInsets.all(10),
                                         enabledBorder: OutlineInputBorder(
                                           borderSide: BorderSide(color: Colors.grey, width: 2.0),),
                                         focusedBorder: OutlineInputBorder(
                                             borderSide: BorderSide(color: Colors.tealAccent )),
                                         // prefixText: "+91 ",
                                         labelText: 'phone number')

                                      ))

                                 ]
                             ),
                              SizedBox(height: 10.0,),
                              buildTextField("Work Email",false),
                              SizedBox(height: 10,),
                              FlatButton.icon(
                                  icon:Icon(Icons.lock),
                                  label:Text("Password details",style: TextStyle(color: Colors.black),) ),
                               SizedBox(height: 10,),
                              buildTextField("New Password",  false),
                              buildTextField("Confirm new Password",  false),
                              SizedBox(height: 20.0,),
                              Row(
                                  //mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children:<Widget>[
                                    ButtonTheme(
                                      // minWidth: 400,
                                      //  height: 40,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      child: RaisedButton(
                                        color: Colors.white,
                                        onPressed: () {
                                          Navigator.pop(context);
                                        },
                                        child: Text("CANCEL"),
                                      ),

                                    ),
                                    ButtonTheme(
                                      // minWidth: 400,
                                      //  height: 40,
                                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                                      child: RaisedButton(
                                        color: Colors.tealAccent,
                                        onPressed: () {

                                        },
                                        child: Text("SUBMIT&PROCEED"),
                                      ),

                                    ),
                                  ])
                            ]
                        )

                    ))  )
        )
    );
  }
  Widget bottomSheet(){
    return Container(
        height:100.0,
        width:MediaQuery.of(context).size.width,
        margin: EdgeInsets.symmetric(
          horizontal:20,vertical: 20,
        ),
        child:Column(
          children:<Widget>[
            Text("Choose Profile Photo",style:TextStyle(fontSize: 20),),
            SizedBox(
              height:20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                // ButtonTheme(
                //child:
                FlatButton.icon(onPressed: (){
                  takePhoto(ImageSource.camera);
                },
                  icon:Icon(Icons.camera),
                  label:Text("Camera"), ),
                FlatButton.icon(onPressed: (){
                  takePhoto(ImageSource.gallery);
                },
                  icon:Icon(Icons.image),
                  label:Text("Gallery"), ),

              ],
            ),
          ],
        )
    );
  }
  void takePhoto(ImageSource source) async{
    final pickedFile =await _picker.getImage(source: source,);
    setState(() {
      _imageFile = pickedFile;
    });

  }

}
