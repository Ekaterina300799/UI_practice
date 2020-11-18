import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/startscreen/widgets/categorytitle.dart';

class TabWidget extends StatelessWidget {
  const TabWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                CategoryTitle(title: "Hottest", active: true,),
                CategoryTitle(title: "Top"),
                CategoryTitle(title: "Popular"),
                CategoryTitle(title: "Chinese"),
                CategoryTitle(title: "New"),
              ],
            ),
          ),
      
    );
  }
}
