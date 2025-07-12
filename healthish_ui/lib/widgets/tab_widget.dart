import 'package:flutter/material.dart';

class TabNavWidget extends StatefulWidget {
  final int index;
  const TabNavWidget({super.key, required this.index});

  @override
  State<TabNavWidget> createState() => _TabNavWidgetState();
}

class _TabNavWidgetState extends State<TabNavWidget> {
  final _tabs = [
    TabNavModel(name: "Home", icon: Icons.home_outlined),
    TabNavModel(name: "Health", icon: Icons.favorite_border_outlined),
    TabNavModel(name: "Doctor", icon: Icons.safety_check_outlined),
    TabNavModel(name: "Profile", icon: Icons.person_outline_outlined),
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      height: 50,
      child: Row(
        children:
            List.generate(_tabs.length, (i) {
              return AnimatedContainer(
                color:
                    widget.index == i ? Colors.blueAccent : Colors.transparent,
                duration: Duration(milliseconds: 300),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      _tabs[i].icon,
                      color: widget.index == i ? Colors.white : Colors.black,
                    ),
                  ],
                ),
              );
            }).toList(),
      ),
    );
  }
}

class TabNavModel {
  final String name;
  final IconData icon;

  TabNavModel({required this.name, required this.icon});
}
