import 'package:flutter/material.dart';
import 'package:screens_vsu/screens/contacts/listviewcontacts.dart';

List<String> contactList = [
  "Andrew Dilan",
  "Alex Milton",
  "Don Norman",
  "Jason Craig",
  "Mike Rine",
  "Nick Aeron",
  "Vena Sunny",
  "Don Norman",
  "Jason Craig",
];

List<String> emails = [
  'andrew.dilan@gmail.com',
  'alxmilton@yahoo.com',
  'donnorman@gmail.com',
  'jcraig90@gmail.com',
  'mikerine@gmail.com',
  'aeronn@gmail.com',
  'vena@gmail.com',
  'donnorman@gmail.com',
  'jcraig90@gmail.com',
];

class ContactsPage extends StatefulWidget {
  // final List<String> emails;
  // final List<String> contactList;
  // ContactsPage({this.contactList, this.emails});

  @override
  _ContactsPageState createState() => _ContactsPageState();
}

class _ContactsPageState extends State<ContactsPage> {
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
        title: Text("Contacts",
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

  Widget _buildMainColumn() => ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            child: TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: "Enter your name or e-mail",
                labelStyle: TextStyle(color: Colors.grey[500]),
                prefixIcon: Icon(Icons.search, color: Colors.grey[500]),
                border: InputBorder.none,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(color: Colors.grey[200]),
                ),
              ),
            ),
          ),
          BodyListView(name: "Andrew Dilan", email: 'andrew.dilan@gmail.com'),
          BodyListView(name: "Alex Milton", email: 'alxmilton@yahoo.com'),
          BodyListView(name: "Don Norman", email: 'donnorman@gmail.com'),
          BodyListView(name: "Jason Craig", email: 'jcraig90@gmail.com'),
          BodyListView(name: "Mike Rine", email: 'mikerine@gmail.com'),
          BodyListView(name: "Nick Aeron", email: 'aeronn@gmail.com'),
          BodyListView(name: "Vena Sunny", email: 'vena@gmail.com'),
        ],
      );
}
