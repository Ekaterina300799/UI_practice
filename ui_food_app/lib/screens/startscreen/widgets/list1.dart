import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/secondscreen/secondscreen.dart';

class RecomendedList extends StatefulWidget {
  const RecomendedList({Key key}) : super(key: key);

  @override
  _RecomendedListState createState() => _RecomendedListState();
}

class _RecomendedListState extends State<RecomendedList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Recommended Combo',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 23,
            ),
          ),
        ),
        Container(
          height: 230,
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                    width: MediaQuery.of(context).size.width / 2.4,
                    height: 150,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: _coverList(),
                  ),
              separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
              itemCount: 2),
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
              'assets/images/foodpic.png',
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Honey lime combo',
              style: TextStyle(
                fontWeight: FontWeight.w300,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '300 rub.',
                  style: TextStyle(
                    color: Colors.orange,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Material(
                  color: Colors.white,
                  child: Ink(
                    decoration: const ShapeDecoration(
                      shape: CircleBorder(),
                      color: Color(0xffFFF2E7),
                    ),
                    height: 30,
                    width: 30,
                    child: IconButton(
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 5),
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
