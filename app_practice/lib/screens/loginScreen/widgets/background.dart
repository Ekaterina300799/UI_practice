import 'package:flutter/material.dart';

class Fon extends StatelessWidget {
  const Fon({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 500,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.png"),
              fit: BoxFit.cover,
              repeat: ImageRepeat.noRepeat,
            ),
          ),
        ),
      ],
    );
  }
}
