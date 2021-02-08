import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:carpooling/Screens/signin/forgetpassword/setpassword.dart';

Widget buildTextField(
    String placeholder, bool isPasswordTextField) {
 // bool showPassword = false;

  return Padding(
    padding: const EdgeInsets.only(bottom: 10.0),
    child: TextField(
      // obscureText: isPasswordTextField ? showPassword : true,
      decoration: InputDecoration(
        suffixIcon: isPasswordTextField
            ? IconButton(
         /*onPressed: () {
            setState(() {
            showPassword = !showPassword;
            });
          },*/
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
}
