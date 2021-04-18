import 'package:app_practice/screens/contactsScreen/contactScreen.dart';
import 'package:app_practice/screens/loginScreen/widgets/textField.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginCard extends StatefulWidget {
  const LoginCard({Key key}) : super(key: key);

  @override
  _LoginCardState createState() => _LoginCardState();
}

class _LoginCardState extends State<LoginCard> {
  bool _isBtnEnabled = false;
  final _myController = TextEditingController();

  void _callback() {
    Navigator.push(
      context,
      CupertinoPageRoute(
        builder: (ctx) => ContactsList(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _myController.addListener(() {
      setState(() {
        _isBtnEnabled = _myController.value.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    var mq = MediaQuery.of(context).size.width;
    return Container(
      child: Positioned(
        bottom: mq * 0.5,
        left: 30,
        right: 30,
        top: mq * 0.5,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "LOG IN",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Card(
              elevation: 5,
              shadowColor: Colors.black26,
              shape: new RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  Field(
                    label: "E-mail",
                    obscure: false,
                  ),
                  Field(
                    label: "Password",
                    obscure: true,
                    controller: _myController,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(boxShadow: <BoxShadow>[
                      BoxShadow(
                          blurRadius: 17.0,
                          color: Colors.black12,
                          offset: Offset(0.0, 0.1))
                    ]),
                    width: mq * 0.8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: TextButton(
                        onPressed: _isBtnEnabled ? _callback : null,
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              _isBtnEnabled
                                  ? Colors.purple[300]
                                  : Colors.purple[200]),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                          ),
                        ),
                        child: Text(
                          "Log in",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
