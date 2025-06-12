import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyTabView extends StatelessWidget {
  const MyTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 9,
      child: Scaffold(
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
            tabAlignment: TabAlignment.center,
            onTap: (n){
              debugPrint(n.toString());
            },
            splashBorderRadius: BorderRadius.circular(0),
            splashFactory: NoSplash.splashFactory,
            isScrollable: true,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            labelStyle: TextStyle(fontSize: 24),
            unselectedLabelStyle: TextStyle(fontSize: 18),
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            dividerColor: Colors.transparent,
            dividerHeight: 0,
            indicatorAnimation: TabIndicatorAnimation.elastic,
            // indicatorPadding: EdgeInsets.all(10),
            // indicatorWeight: 10,
            // indicator: BoxDecoration(
            //   color: Colors.red,
            //   // borderRadius: BorderRadius.circular(28),
            //   // shape: BoxShape.circle
            // ),

            tabs: [
              Tab(icon: Icon(Icons.chat_outlined), text: "Chat"),
              Tab(icon: Icon(Icons.stacked_bar_chart_outlined), text: "Status"),
              Tab(icon: Icon(Icons.phone_outlined), text: "Calls"),
              Tab(icon: Icon(Icons.chat_outlined), text: "Chat"),
              Tab(icon: Icon(Icons.stacked_bar_chart_outlined), text: "Status"),
              Tab(icon: Icon(Icons.phone_outlined), text: "Calls"),
              Tab(icon: Icon(Icons.chat_outlined), text: "Chat"),
              Tab(icon: Icon(Icons.stacked_bar_chart_outlined), text: "Status"),
              Tab(icon: Icon(Icons.phone_outlined), text: "Calls"),
            ],
          ),
        ),
        body: TabBarView(
          viewportFraction: 1,
          // physics: NeverScrollableScrollPhysics(),
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_outlined, size: 100),
                SizedBox(width: 12),
                Text("Chat")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.stacked_bar_chart_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_outlined, size: 100),
                SizedBox(width: 12),
                Text("Chat")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.stacked_bar_chart_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.chat_outlined, size: 100),
                SizedBox(width: 12),
                Text("Chat")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,

              children: [
                Icon(Icons.stacked_bar_chart_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone_outlined, size: 100),
                SizedBox(width: 12),
                Text("Status")
              ],
            ),
          ],
        ),
      ),
    );
  }
}
