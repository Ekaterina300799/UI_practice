import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/startscreen/widgets/list1.dart';
import 'package:ui_food_app/screens/startscreen/widgets/list2.dart';
import 'package:ui_food_app/screens/startscreen/widgets/tapbar.dart';

class StartPage extends StatelessWidget {
  const StartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(child: _buildMainColumn()),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _buttonRow(),
          _searchWidget(),
          RecomendedList(),
          SizedBox(
            height: 10,
          ),
          TabWidget(),
          MenuList(),
        ],
      );

  Widget _searchWidget() => Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(
              text: TextSpan(
                // Note: Styles for TextSpans must be explicitly defined.
                // Child text spans will inherit styles from parent
                style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w300,
                ),
                children: <TextSpan>[
                  new TextSpan(text: 'Hello Tony, '),
                  new TextSpan(
                    text: 'What fruit salad\ncombo do you want today?',
                    style: new TextStyle(
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 13,
            ),
            Row(
              children: [
                Expanded(
                  flex: 4,
                  child: TextField(
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.transparent),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelStyle: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                      labelText: 'Search for fruit salad combos',
                      filled: true,
                      fillColor: Colors.grey[200],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    icon: Icon(
                      Icons.dns,
                    ),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ],
        ),
      );

  Widget _buttonRow() => Container(
        height: 80,
        child: Row(
          children: [
            IconButton(
              icon: Icon(Icons.menu, color: Colors.black),
              onPressed: () {},
            ),
            SizedBox(
              width: 280,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  icon: Icon(
                    Icons.shopping_basket,
                    color: Colors.orange[400],
                  ),
                  onPressed: () {},
                ),
                Text(
                  'My basket',
                  style: TextStyle(
                    fontSize: 10,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
}
