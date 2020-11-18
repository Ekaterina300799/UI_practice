import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/thirdscreen/widgets/list_dishes.dart';

class WhiteSpaceWidget extends StatelessWidget {
  const WhiteSpaceWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: MediaQuery.of(context).size.height,
      child: Column(
        children: [
          ListDishesWidget(),
          Divider(
            color: Colors.black26,
          ),
          ListDishesWidget(),
          Divider(
            color: Colors.black26,
          ),
          ListDishesWidget(),
        ],
      ),
    );
  }
}
