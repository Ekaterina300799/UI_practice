import 'package:flutter/material.dart';

class FourthScreen extends StatelessWidget {
  const FourthScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: _buildMainColumn()),
      ),
    );
  }

  Widget _buildMainColumn() => Center(
        child: ListView(
          children: [
            Image.asset('assets/images/done.png'),
            Text(
              'Congratulations!!!',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(),
            Text(
              'Your order have been taken and\nis being attended to',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w300),
              textAlign: TextAlign.center,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                onPressed: () {},
                color: Color(0xffFFA451),
                shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(10)),
                child: Text(
                  'Track order',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 100),
              child: Material(
                color: Colors.white,
                child: Ink(
                  padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xffFFA451),
                      width: 0.9,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  // height: 40,
                  // width: 40,
                  child:Text(
                    'Continue shopping',
                    style: TextStyle(color: Color(0xffFFA451)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
