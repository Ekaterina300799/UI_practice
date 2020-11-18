import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/secondscreen/secondscreen.dart';

class MenuList extends StatefulWidget {
  const MenuList({Key key}) : super(key: key);

  @override
  _MenuListState createState() => _MenuListState();
}

class _MenuListState extends State<MenuList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 200,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 200,
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.black12,
                      //     blurRadius: 10,
                      //     spreadRadius: 2,
                      //   ),
                      // ],
                      color: index % 2 == 0 ? Colors.pink[50] : Colors.yellow[50],
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: _coverList(),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
              itemCount: 3),
        ),
      ],
    );
  }

  Widget _coverList() => Container(
        child: Column(
          children: [
            Container(
              alignment: Alignment.bottomRight,
              height: 33,
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.orange,
                ),
                onPressed: () {},
              ),
            ),
            Image.asset(
              'assets/images/foodpic2.png',
            ),
            // SizedBox(height: 5,),
            Text('Berry mango combo'),
            // SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '280 rub.',
                  style: TextStyle(color: Colors.orange, fontSize: 20, ),
                ),
                Material(
                  color: Colors.transparent,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color(0xffFFF2E7),
                    ),
                    height: 30,
                    width: 30,
                    child: IconButton(
                      padding: EdgeInsets.symmetric(vertical:5, horizontal: 5),
                        icon: Icon(
                          Icons.add,
                          color: Colors.orange,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SecondPage()));
                        }),
                  ),
                )
              ],
            ),
          ],
        ),
      );
}
