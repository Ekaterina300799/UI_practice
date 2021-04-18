import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  String name;
  String email;
  String company;

  UserCard({this.name, this.email, this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        elevation: 2,
        shadowColor: Colors.black26,
        shape: new RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(20)),
        child: ListTile(
          title: Text(
            name,
            style: TextStyle(
              fontSize: 23,
            ),
          ),
          leading: Image.asset("assets/images/bx-user-circle.png"),
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(email),
              Text(
                company,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
