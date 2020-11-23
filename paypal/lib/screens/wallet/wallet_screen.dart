import 'package:flutter/material.dart';
import 'package:screens_vsu/screens/wallet/listviewhor.dart';

class WalletPage extends StatefulWidget {
  WalletPage({Key key}) : super(key: key);

  @override
  _WalletPageState createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(child: _buildMainColumn()),
      ),
    );
  }

  Widget _buildMainColumn() => ListView(
        children: [
          _blueWidget(),
          HorizontalWidgets(),
          _listView1(),
        ],
      );

  Widget _blueWidget() => Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/frame.png'),
            fit: BoxFit.cover,
            repeat: ImageRepeat.noRepeat,
          ),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Image.asset('assets/images/logo.png'),
                  Container(
                    child: ClipRRect(
                      child: Image.asset('assets/images/photo.png'),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Hello, Bob!',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 26,
              ),
              Text(
                '\$ 280',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Text(
                'Your Balance',
                style: TextStyle(color: Colors.white, fontSize: 18),
              )
            ],
          ),
        ),
      );

  Widget _listView1() => Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Activity',
              style: TextStyle(color: Colors.black, fontSize: 19),
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
}
