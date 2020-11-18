import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  CounterWidget({Key key}) : super(key: key);

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 1;

  void _addCounter() {
    setState(() {
      _counter++;
    });
  }

  void _removeCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 23),
      child: Container(
        child: Row(
          children: [
            Material(
              color: Colors.white,
              child: Ink(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.black38,
                    width: 0.9,
                  ),
                  borderRadius: BorderRadius.circular(20),
                ),
                height: 40,
                width: 40,
                child: IconButton(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.black,
                      size: 30,
                    ),
                    onPressed: () {
                      _removeCounter();
                    }),
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Text(
              '$_counter',
              style:TextStyle(fontSize: 27, color: Colors.black),
              
            ),
            SizedBox(
              width: 15,
            ),
            Material(
              color: Colors.white,
              child: Ink(
                decoration: const ShapeDecoration(
                  shape: CircleBorder(),
                  color: Color(0xffFFF2E7),
                ),
                height: 40,
                width: 40,
                child: IconButton(
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                    icon: Icon(
                      Icons.add,
                      color: Colors.orange,
                      size: 30,
                    ),
                    onPressed: () {
                      _addCounter();
                    }),
              ),
            ),
            SizedBox(width: 110,),
            Text(
              '300 rub.',
              style: TextStyle(fontSize: 30, color: Colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
