import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/Home/Homescreen.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  final appscreen = [
    const Homescreen(),
    Center(child: const Text("Home")),
    Center(child: const Text("tickets")),
    Center(child: const Text("profile")),
    Center(child: const Text("person")),
  ];

  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(
      () {
        _selectedIndex = index;
      },
    );
    print("tapped ${_selectedIndex}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appscreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.black54,
        showSelectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(
              icon: Icon(Icons.airplane_ticket), label: "tickets"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "profile"),
        ],
      ),
    );
  }
}
