import 'dart:async';

mixin Validators{

  var emailValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (email,sink){
        if(email.contains("@")){
          sink.add(email);
        }else{
          //sink.addError("Email is not valid");
          print("Email is not valid");
        }
      }
  );

  var passwordValidator = StreamTransformer<String,String>.fromHandlers(
      handleData: (password,sink){
        if(password.length>4){
          sink.add(password);
        }else{
          //sink.addError("Password length should be greater than 4 chars.");
          print("Password length should be greater than 4 chars.");
        }
      }
  );

}

/*
GlobalKey<FormState> _formKey = GlobalKey<FormState>();
var confirmPass;
TextFormField(
validator: (String value) {
confirmPass = value;
if (value.isEmpty) {
return "Please Enter New Password";
} else if (value.length < 8) {
return "Password must be atleast 8 characters long";
} else {
return null;
}
},
decoration: InputDecoration(
hintText: "Enter New Password",
hintStyle: TextStyle(color: Colors.grey),
border: new OutlineInputBorder(
borderRadius: const BorderRadius.all(
const Radius.circular(40.0),
),
),
),
),
),
SizedBox(height: 20),
Container(
child: TextFormField(
validator: (String value) {
if (value.isEmpty) {
return "Please Re-Enter New Password";
} else if (value.length < 8) {
return "Password must be atleast 8 characters long";
} else if (value != confirmPass) {
return "Password must be same as above";
} else {
return null;
}
},
decoration: InputDecoration(
hintText: "Re-Enter New Password",
hintStyle: TextStyle(color: Colors.grey),
border: new OutlineInputBorder(
borderRadius: const BorderRadius.all(
const Radius.circular(40.0),
),
),
),
),
),
*/