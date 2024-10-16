import 'package:doc_appointment/mafdy_jana/profile/profile_Screen.dart';
import 'package:doc_appointment/screens/home_screen.dart';
import 'package:doc_appointment/screens/my_bookings_screen.dart';
import 'package:flutter/material.dart';

import '../widget/maps_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  void _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activeScreen = const HomeScreen();
    if (_selectedScreenIndex == 1) {
      activeScreen = MapsScreen();
    }
    if (_selectedScreenIndex == 2) {
      activeScreen = const MyBookingsScreen();
    }
    if (_selectedScreenIndex == 4) {
      activeScreen = ProfileScreen();
    }
    return Scaffold(
      body: activeScreen,
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          currentIndex: _selectedScreenIndex,
          unselectedItemColor: const Color.fromARGB(255, 159, 161, 162),
          selectedItemColor: const Color.fromARGB(255, 1, 101, 252),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on_rounded),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month),
              label: 'Bookings',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ]),
    );
  }
}
