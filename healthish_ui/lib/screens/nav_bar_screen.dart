// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:healthish_ui/screens/doctor_screen.dart';
import 'package:healthish_ui/screens/health_screen.dart';
import 'package:healthish_ui/screens/home_screen.dart';
import 'package:healthish_ui/screens/profile_screen.dart';
import 'package:healthish_ui/widgets/tab_widget.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabCtrl;
  int index = 0;
  final _tabs = [
    TabNavModel(name: "Home", icon: Icons.home_outlined),
    TabNavModel(name: "Health", icon: Icons.favorite_border_outlined),
    TabNavModel(name: "Doctor", icon: Icons.safety_check_outlined),
    TabNavModel(name: "Profile", icon: Icons.person_outline_outlined),
  ];

  @override
  void initState() {
    _tabCtrl = TabController(initialIndex: index, length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: HomeScreen(),
      body: IndexedStack(
        index: index,
        children: [
          HomeScreen(),
          HealthScreen(),
          DoctorScreen(),
          ProfileScreen(),
        ],
      ),
    );
  }

  Widget tabView() {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(color: Colors.black.withOpacity(.5)),
      ),
      child: TabBar(
        indicatorSize: TabBarIndicatorSize.tab,
        splashBorderRadius: BorderRadius.circular(0),
        overlayColor: WidgetStatePropertyAll(Colors.transparent),
        dividerHeight: 0,
        labelColor: Colors.white,
        unselectedLabelColor: Colors.black,
        splashFactory: NoSplash.splashFactory,
        indicator: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(50),
        ),
        labelPadding: EdgeInsets.all(0),
        onTap: (val) {
          setState(() {
            index = val;
          });
        },
        tabs:
            List.generate(
              _tabs.length,
              (i) => Tab(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 4,
                  children: [
                    Icon(_tabs[i].icon),
                    Visibility(visible: index == i, child: Text(_tabs[i].name)),
                  ],
                ),
              ),
            ).toList(),
        controller: _tabCtrl,
      ),
    );
  }
}
