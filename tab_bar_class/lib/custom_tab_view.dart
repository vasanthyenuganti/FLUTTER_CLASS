import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTabView extends StatefulWidget {
  const CustomTabView({super.key});

  @override
  State<CustomTabView> createState() => _CustomTabViewState();
}

class _CustomTabViewState extends State<CustomTabView>
    with SingleTickerProviderStateMixin {
  late TabController tabCtrl;

  @override
  void initState() {
    super.initState();
    tabCtrl = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Whats App"),
        actions: [
          Icon(Icons.favorite_outline),
          SizedBox(width: 12),
          Icon(Icons.search_outlined),
          SizedBox(width: 12),
          Icon(Icons.more_vert),
          SizedBox(width: 12),
        ],
        bottom: TabBar(
          onTap: (n) {
            debugPrint(n.toString());
          },
          controller: tabCtrl,
          splashBorderRadius: BorderRadius.circular(0),
          splashFactory: NoSplash.splashFactory,
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          labelStyle: TextStyle(fontSize: 24),
          unselectedLabelStyle: TextStyle(fontSize: 18),
          indicatorColor: Colors.white,
          // indicatorSize: TabBarIndicatorSize.tab,
          dividerColor: Colors.transparent,
          dividerHeight: 0,
          indicatorAnimation: TabIndicatorAnimation.elastic,
          tabs: [
            Tab(icon: Icon(Icons.chat_outlined), text: "Chat"),
            Tab(icon: Icon(Icons.stacked_bar_chart_outlined), text: "Status"),
            Tab(icon: Icon(Icons.phone_outlined), text: "Calls"),
          ],
        ),
      ),
      body: TabBarView(
        viewportFraction: 1,
        controller: tabCtrl,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.chat_outlined, size: 100),
              SizedBox(width: 12),
              Text("Chat"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Icon(Icons.stacked_bar_chart_outlined, size: 100),
              SizedBox(width: 12),
              Text("Status"),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.phone_outlined, size: 100),
              SizedBox(width: 12),
              Text("Calls"),
            ],
          ),
        ],
      ),
    );
  }
}
