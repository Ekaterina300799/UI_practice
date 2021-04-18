import 'dart:async';

import 'package:flutter/material.dart';

class Field extends StatelessWidget {
  String label;
  bool obscure;
  TextEditingController controller;
  Field({this.label, this.obscure, this.controller});

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      width: mq * 0.9,
      child: TextField(
        controller: controller,
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
      ),
    );
  }
}
