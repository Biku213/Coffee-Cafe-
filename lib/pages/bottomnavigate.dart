import 'package:coffee_store_ui/pages/favorite.dart';
import 'package:coffee_store_ui/pages/homepage.dart';
import 'package:coffee_store_ui/pages/profile.dart';
import 'package:coffee_store_ui/pages/shop_page.dart';
import 'package:flutter/material.dart';

class Bottomnavigate extends StatefulWidget {
  @override
  State<Bottomnavigate> createState() => _BottomnavigateState();
}

class _BottomnavigateState extends State<Bottomnavigate> {
  int _selectedIndex = 0;
  List<Widget> meroWidget = <Widget>[
    HomePage(),
    ShopPage(),
    Favorite(),
    Profile()
  ];

  _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: meroWidget.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.category_rounded),
          label: "Categories",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          label: "See all favorites",
          backgroundColor: Colors.black,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
          backgroundColor: Colors.black,
        ),
      ], currentIndex: _selectedIndex, onTap: _onItemTap),
    );
  }
}
