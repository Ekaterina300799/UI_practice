import 'package:cuberto_bottom_bar/cuberto_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:screens_vsu/screens/contacts/contacts_screen.dart';
import 'package:screens_vsu/screens/home/home_screen.dart';
import 'package:screens_vsu/screens/settings/settings_screen.dart';
import 'package:screens_vsu/screens/wallet/wallet_screen.dart';

class NavBar extends StatefulWidget {
  NavBar({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _NavBarState createState() => _NavBarState();
}

class _NavBarState extends State<NavBar>
    with SingleTickerProviderStateMixin {
  int currentPage;
  Color currentColor = Colors.deepPurple;
  Color inactiveColor = Colors.black;
  PageController tabBarController;
  List<Tabs> tabs = new List();

  @override
  void initState() {
    super.initState();
    currentPage = 0;
    tabs.add(Tabs(
      Icons.home,
      "Home",
      Color(0xff005EA6),
      getGradient(Colors.white),
    ));
    tabs.add(Tabs(
      Icons.people_outline,
      "Contacts",
      Color(0xff005EA6),
      getGradient(Colors.white),
    ));
    tabs.add(Tabs(
      Icons.account_balance_wallet,
      "Wallet",
      Color(0xff005EA6),
      getGradient(Colors.white),
    ));
    tabs.add(Tabs(
      Icons.settings,
      "Settings",
      Color(0xff005EA6),
      getGradient(Colors.white),
    ));
    tabBarController = new PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
          controller: tabBarController,
          physics: NeverScrollableScrollPhysics(),
          children: <Widget>[
            HomePage(),
            ContactsPage(),
            WalletPage(),
            SettingsPage(),
          ]),
      bottomNavigationBar: CubertoBottomBar(
        barShadow: [],
        key: Key("BottomBar"),
        inactiveIconColor: inactiveColor,
        tabStyle: CubertoTabStyle.STYLE_FADED_BACKGROUND,
        selectedTab: currentPage,
        tabs: tabs
            .map((value) => TabData(
                key: Key(value.title),
                iconData: value.icon,
                title: value.title,
                tabColor: value.color,
                tabGradient: value.gradient))
            .toList(),
        onTabChangedListener: (position, title, color) {
          setState(() {
            currentPage = position;
            tabBarController.jumpToPage(position);
          });
        },
      ),
    );
  }

  @override
  void dispose() {
    tabBarController.dispose();
    super.dispose();
  }
}

class Tabs {
  final IconData icon;
  final String title;
  final Color color;
  final Gradient gradient;

  Tabs(this.icon, this.title, this.color, this.gradient);
}

getGradient(Color color) {
  return LinearGradient(
      colors: [color.withOpacity(0.1), color.withOpacity(0.1)],
      stops: [0.0, 0.1]);
}
