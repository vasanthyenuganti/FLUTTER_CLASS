import 'package:bottom_nav_class/event_screen.dart';
import 'package:bottom_nav_class/home_screen.dart';
import 'package:bottom_nav_class/join_screen.dart';
import 'package:bottom_nav_class/profile_screen.dart';
import 'package:bottom_nav_class/stack_ui_screen.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({super.key});

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 0;
  final List<Widget> _navItems = [
    HomeScreen(),
    EventScreen(),
    StackUiScreen(),
    JoinScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: _navItems[_currentIndex],
      body: IndexedStack(
        index: _currentIndex,
        children: _navItems,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        showSelectedLabels: true,
        onTap: (val) {
          if (_currentIndex != val) {
            setState(() {
              _currentIndex = val;
              debugPrint("$_currentIndex index value of bottom nav");
            });
          }
        },
        elevation: 0,
        // type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.event_outlined),
            activeIcon: Icon(Icons.event),
            label: "Events",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_outlined),
            activeIcon: Icon(Icons.stacked_bar_chart),
            label: "UI",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.meeting_room_outlined),
            activeIcon: Icon(Icons.meeting_room),
            label: "Join",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
