import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:screens_vsu/screens/navbar/navbar.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Body(),
    );
  }
}

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height,
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 0, 50),
            child: SvgPicture.asset(
              "assets/images/Group.svg",
              height: size.height * 0.08,
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: "Enter your name or e-mail",
                labelStyle: TextStyle(color: Colors.grey[500]),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            width: size.width * 0.9,
            child: TextField(
              textAlign: TextAlign.center,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(color: Colors.grey[500]),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            decoration: BoxDecoration(boxShadow: <BoxShadow>[
              BoxShadow(
                  blurRadius: 17.0,
                  color: Colors.black26,
                  offset: Offset(0.0, 0.1))
            ]),
            width: size.width * 0.8,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => NavBar()));
                },
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                color: Colors.blue[900],
                child: Text(
                  "Log in",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                child: GestureDetector(
                  onTap: () {},
                  child: Text(
                    "Having trouble logging in?",
                    style: TextStyle(color: Colors.grey[600]),
                  ),
                ),
              ),
              Divider(
                height: 50,
                thickness: 0.5,
                color: Colors.grey[300],
                indent: 150,
                endIndent: 150,
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Sign up",
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
