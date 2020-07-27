import 'package:flutter/material.dart';
import 'package:travel/screens/tabs/NotificationScreen.dart';
import 'package:travel/screens/tabs/LoginScreen.dart';
import 'package:travel/screens/tabs/ArticleScreen.dart';
import 'package:travel/screens/tabs/SearchScreen.dart';
import 'package:toast/toast.dart';

import 'tabs/ExploreScreen.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int selectedPosition = 0;
  final List<Widget> _children = [
    ExploreScreen(),
    SavedScreen(),
    TripsScreen(),
    InboxScreen(),
    LoginScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      body: _children[selectedPosition],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedPosition,
        // this will be set when a new tab is tapped
        items: [
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: new Icon(Icons.home),
            title: new Text('Articles'),
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search), title: Text('Search')),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), title: Text('Notifications')),
          BottomNavigationBarItem(
              icon: Icon(Icons.home), title: Text('Profile')),
        ],
        onTap: (position) {
          setState(() {
            selectedPosition = position;
          });
        },
      ),
    );
  }


}


