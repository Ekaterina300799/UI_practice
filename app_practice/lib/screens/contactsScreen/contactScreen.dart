import 'package:app_practice/data/api.dart';
import 'package:app_practice/data/dataModel.dart';
import 'package:app_practice/screens/contactsScreen/widgets/error.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatefulWidget {
  ContactsList({Key key}) : super(key: key);

  @override
  _ContactsListState createState() => _ContactsListState();
}

class _ContactsListState extends State<ContactsList> {
  var _pinned = true;
  List<User> _user;
  bool _loading;

  @override
  void initState() {
    super.initState();
    _loading = true;
    UserApi.getUsers().then((users) {
      setState(() {
        _user = users;
        _loading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_loading) {
      return Scaffold(
        body: Center(
          child: CircularProgressIndicator(
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.purple[300]),
          ),
        ),
      );
    } else {
      if (_user.isEmpty) {
        return ErrorScreen();
      } else {
        return Scaffold(
          body: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: _pinned,
                expandedHeight: 100.0,
                flexibleSpace: const FlexibleSpaceBar(
                  title: Text(
                    "Your contacts",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
                backgroundColor: Colors.white,
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (BuildContext context, int index) {
                    User user = _user[index];
                    return Container(
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.black26,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(20)),
                        child: ListTile(
                          title: Text(
                            user.name,
                            style: TextStyle(
                              fontSize: 23,
                            ),
                          ),
                          leading:
                              Image.asset("assets/images/bx-user-circle.png"),
                          subtitle: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(user.email),
                              Text(
                                user.company.name,
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                  childCount: _user.length,
                ),
              ),
            ],
          ),
        );
      }
    }
  }
}
