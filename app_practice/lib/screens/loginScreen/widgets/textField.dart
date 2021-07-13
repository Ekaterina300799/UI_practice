import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

class Field extends StatelessWidget {
  String label;
  bool obscure;
  bool isEmail;
  Field({this.label, this.obscure, this.isEmail});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: mq * 0.9,
      child: TextFormField(
        textAlign: TextAlign.center,
        obscureText: obscure,
        decoration: InputDecoration(
          labelText: "$label",
          labelStyle: TextStyle(color: Colors.grey[500]),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.grey[500]),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: Colors.purple[300]),
          ),
        ),
        cursorColor: Colors.purple[300],
        validator: MultiValidator([
          isEmail
              ? EmailValidator(errorText: "Invalid Email")
              : MinLengthValidator(8, errorText: "should be at least 8")
        ]),
      ),
    );
  }
}
