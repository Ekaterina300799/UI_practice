import 'package:flutter/material.dart';
import 'package:screens_vsu/screens/contacts/contacts_screen.dart';

// ignore: must_be_immutable
class BodyListView extends StatelessWidget {
  String name;
  String email;

  BodyListView({this.name, this.email});
  // final items = List<String>.generate(10, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        elevation: 5,
        shadowColor: Colors.black26,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20)),
        child: ListTile(
          title: Text(name),
          leading: CircleAvatar(
            backgroundColor: Colors.blueGrey[50],
            child: Text(name[0].toUpperCase(),
                style: TextStyle(
                    fontFamily: 'Cormorant',
                    fontWeight: FontWeight.w500,
                    color: Colors.grey[800])),
          ),
          subtitle: Text(email),
        ),
      ),
    );
  }
}
