import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/secondscreen/widgets/whitespace.dart';
import 'package:ui_food_app/screens/thirdscreen/thirdscreen.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      body: SafeArea(
        child: Container(child: _buildMainColumn()),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Material(
              color: Colors.white,
              child: Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xffFFF2E7),
                ),
                height: 50,
                width: 50,
                child: IconButton(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.orange,
                      size: 30,
                    ),
                    onPressed: () {}),
              ),
            ),
            FlatButton(
              padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Basket()));
              },
              color: Color(0xffFFA451),
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(10)),
              child: Text(
                'Add to busket',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _backBottom(),
          _imageWidget(),
          WhiteSpace(),
        ],
      );

  Widget _imageWidget() => Container(
        height: 200,
        child: Image.asset(
          'assets/images/foodpic3.png',
        ),
      );

  Widget _backBottom() => Padding(
        padding: const EdgeInsets.fromLTRB(20, 15, 260, 0),
        child: Container(
          child: RaisedButton(
            elevation: 0.0,
            color: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.pop(context);
            },
            child: Row(
              children: [
                Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                ),
                Text(
                  'Go back',
                  style: TextStyle(color: Colors.black, fontSize: 13),
                )
              ],
            ),
          ),
        ),
      );
}
