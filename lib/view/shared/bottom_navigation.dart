import 'package:flutter/material.dart';
import 'package:space_trader_game/view/pages/create_event_page.dart';
import 'package:space_trader_game/view/pages/news_page.dart';
import 'package:space_trader_game/view/pages/profil_page.dart';

import '../pages/signup_page.dart';

class BottomNavigationBarElement extends StatefulWidget {
  const BottomNavigationBarElement({super.key});

  @override
  State<BottomNavigationBarElement> createState() =>
      _BottomNavigationBarElementState();
}

class _BottomNavigationBarElementState
    extends State<BottomNavigationBarElement> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final pages = [
    News(),
    Event(),
    Profil()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.newspaper),
            label: 'News',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'Evenement',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          )
        ],
        currentIndex: _selectedIndex,
        //  selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}

/*
BottomNavigationBar(
items: const <BottomNavigationBarItem>[
BottomNavigationBarItem(
icon: Icon(Icons.newspaper),
label: 'News',
),
BottomNavigationBarItem(
icon: Icon(Icons.event),
label: 'Evenement',
),
BottomNavigationBarItem(
icon: Icon(Icons.person),
label: 'Profil',
),
],
currentIndex: _selectedIndex,
selectedItemColor: Colors.deepPurple,
onTap: _onItemTapped,
));
*/
