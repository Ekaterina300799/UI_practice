import 'package:app_practice/screens/loginScreen/widgets/background.dart';
import 'package:app_practice/screens/loginScreen/widgets/logCard.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Fon(),
          LoginCard(),
        ],
      ),
    );
  }
}
