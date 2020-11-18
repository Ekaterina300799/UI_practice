import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/secondscreen/widgets/counter.dart';

class WhiteSpace extends StatelessWidget {
  const WhiteSpace({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Quinoa Fruit Salad',
              style: TextStyle(
                fontSize: 30,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
            CounterWidget(),
            Divider(
              height: 70,
              color: Colors.black26,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 5, // Space between underline and text
              ),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.amber[700],
                    width: 3.0, // Underline thickness
                  ),
                ),
              ),
              child: Text(
                'One Pack Contains:',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Red Quinoa, Lime, Honey, Blueberries, Strawberries, Mango, Fresh mint.',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black,
              ),
            ),
            Divider(
              height: 70,
              color: Colors.black26,
            ),
            Text(
              'If you are looking for a new fruit salad to eat today, quinoa is the perfect brunch for you. make',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: 25,
            ),
          ],
        ),
      ),
    );
  }
}
