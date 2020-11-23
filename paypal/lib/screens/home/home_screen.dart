import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int segmentedControl = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: _buildMainColumn()),
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {}),
        centerTitle: true,
        title: Text("Activity",
            style: TextStyle(color: Colors.black, fontSize: 20)),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {})
        ],
      ),
    );
  }

  Widget _buildMainColumn() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: ListView(
          children: [
            _segmentControlWidget(),
            _listView1(),
            SizedBox(
              height: 20,
            ),
            _listView2(),
          ],
        ),
      );

  Widget _listView1() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Today',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.person, color: Colors.black),
                ),
                title: Text(
                  'Mike Rine',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('1 minute ago'),
                trailing: Text(
                  '+\$250',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.local_pizza, color: Colors.black),
                ),
                title: Text(
                  'Pizza Delivery',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('1 hours ago'),
                trailing: Text(
                  '-\$53.8',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.person, color: Colors.black),
                ),
                title: Text(
                  'Casey Smith',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('9 hours ago'),
                trailing: Text(
                  '+\$120',
                  style: TextStyle(color: Colors.greenAccent, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _listView2() => Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Yesterday',
              style: TextStyle(color: Colors.grey, fontSize: 15),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.shopping_basket, color: Colors.black),
                ),
                title: Text(
                  'IKEA',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Yesterday at 9:10 AM'),
                trailing: Text(
                  '-\$310',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.shop, color: Colors.black),
                ),
                title: Text(
                  'Play Market',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Yesterday at 11:45 AM'),
                trailing: Text(
                  '-\$3.9',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(20)),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blueGrey[50],
                  child: Icon(Icons.person, color: Colors.black),
                ),
                title: Text(
                  'Monika Drive',
                  style: TextStyle(fontSize: 20),
                ),
                subtitle: Text('Yesterday at 3:05 PM'),
                trailing: Text(
                  '-\$50',
                  style: TextStyle(color: Colors.redAccent, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      );

  Widget _segmentControlWidget() => Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40),
        child: Container(
          child: CupertinoSlidingSegmentedControl(
              groupValue: segmentedControl,
              children: <int, Widget>{
                0: Text(
                  "All",
                  style: TextStyle(
                      color: segmentedControl == 0 ? Colors.white : Colors.grey,
                      fontSize: 16),
                ),
                1: Text(
                  "Income",
                  style: TextStyle(
                      color: segmentedControl == 1 ? Colors.white : Colors.grey,
                      fontSize: 16),
                ),
                2: Text(
                  'Outcome',
                  style: TextStyle(
                      color: segmentedControl == 2 ? Colors.white : Colors.grey,
                      fontSize: 16),
                ),
              },
              thumbColor: Color(0xff005EA6),
              backgroundColor: Colors.blueGrey[50],
              onValueChanged: (value) {
                setState(() {
                  segmentedControl = value;
                });
              }),
        ),
      );
}
