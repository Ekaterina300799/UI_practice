import 'package:flutter/material.dart';

class ListDishesWidget extends StatelessWidget {
  const ListDishesWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 30),
            height: 130,
            child: ListTile(
                title: Text(
                  "Quinoa fruit salad",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.w500),
                ),
                subtitle: Text(
                  "2packs",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.w300),
                ),
                leading: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.pink[50],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Image.asset(
                      'assets/images/foodpic.png',
                    ),
                  ),
                ),
                trailing: Text(
                  '300 rub.',
                  style: TextStyle(color: Colors.black, fontSize: 21),
                )),
          ),
        ],
      ),
    );
  }
}
