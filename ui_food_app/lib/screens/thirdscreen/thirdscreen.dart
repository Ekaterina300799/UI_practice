import 'package:flutter/material.dart';
import 'package:ui_food_app/screens/fourthscreen/fourthscreen.dart';
import 'package:ui_food_app/screens/thirdscreen/widgets/whitespace.dart';

class Basket extends StatefulWidget {
  const Basket({Key key}) : super(key: key);

  @override
  _BasketState createState() => _BasketState();
}

class _BasketState extends State<Basket> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFFA451),
      floatingActionButton: _floatinfWidget(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Container(
          child: _buildMainColumn(),
        ),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _backBottom(),
          SizedBox(
            height: 20,
          ),
          WhiteSpaceWidget(),
        ],
      );

  Widget _backBottom() => Padding(
        padding: const EdgeInsets.all(20),
        child: Container(
          child: Row(
            children: [
              RaisedButton(
                elevation: 0.0,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
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
              SizedBox(
                width: 20,
              ),
              Text(
                'My Basket',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 25),
              ),
            ],
          ),
        ),
      );

  Widget _floatinfWidget() => Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  child: RichText(
                    text: TextSpan(
                      style: TextStyle(
                        fontSize: 19.0,
                        color: Colors.black,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w300,
                      ),
                      children: <TextSpan>[
                        new TextSpan(text: 'Total'),
                        new TextSpan(
                          text: '\n900 rub.',
                          style: new TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 23,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              FlatButton(
                padding: EdgeInsets.symmetric(vertical: 16, horizontal: 60),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FourthScreen()));
                },
                color: Color(0xffFFA451),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10)),
                child: Text(
                  'Checkout',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      );
}
