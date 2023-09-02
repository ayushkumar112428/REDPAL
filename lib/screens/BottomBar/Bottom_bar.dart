// ignore_for_file: file_names

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:myreadpal/screens/Home/body.dart';
import 'package:myreadpal/screens/Profile/profilelatout.dart';
import 'package:myreadpal/screens/library/library.dart';
import 'package:myreadpal/screens/search/bodySearch.dart';

class BottomNavBarNew extends StatefulWidget {
  const BottomNavBarNew({Key? key}) : super(key: key);

  @override
  State<BottomNavBarNew> createState() => _BottomNavBarNewState();
}

class _BottomNavBarNewState extends State<BottomNavBarNew> {
  int _selectedIndx = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const bodyhome(),
    const SearchBody(),
    const LibrayScreens(),
    const Myprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Center(
          child: Text(
            "MyReadPal",
            style: TextStyle(),
          ),
        ),
      ),
      body: Center(
        child: _widgetOption[_selectedIndx],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white,
        color: Colors.blue,
        onTap: _onItemTapped,
        animationDuration: Duration(milliseconds: 300),
        items: const [
          Icon(FluentSystemIcons.ic_fluent_home_regular,color: Colors.black,),
          Icon(FluentSystemIcons.ic_fluent_search_regular,color: Colors.black,),
          Icon(FluentSystemIcons.ic_fluent_book_formula_financial_filled,color: Colors.black,),
          Icon(FluentSystemIcons.ic_fluent_person_regular,color: Colors.black,),
        ],
      ),
    );
  }
}

/*
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndx = 0;
  static final List<Widget> _widgetOption = <Widget>[
    const bodyhome(),
    const SearchBody(),
    const LibrayScreens(),
    const Myprofile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
        title: const Center(
          child: Text(
            "MyReadPal",
            style: TextStyle(),
          ),
        ),
      ),
      body: Center(
        child: _widgetOption[_selectedIndx],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndx,
        onTap: _onItemTapped,
        elevation: 0,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
              label: "search"),
          BottomNavigationBarItem(
              icon: Icon(
                  FluentSystemIcons.ic_fluent_book_formula_financial_filled),
              activeIcon: Icon(
                  FluentSystemIcons.ic_fluent_book_formula_financial_filled),
              label: "Book"),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: "Profile"),
        ],
      ),
    );
  }
}
*/