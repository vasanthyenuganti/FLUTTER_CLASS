import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomeScreen());
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.green,
      appBar: AppBar(
        toolbarHeight: 200,
        title: Text("Home Screen"),
        // centerTitle: true,
        leading: Icon(Icons.menu),
        elevation: 100,
        shadowColor: Colors.red,
        scrolledUnderElevation: 100,
        actions: [
          Icon(Icons.search),
          SizedBox(width: 12,),
          Icon(Icons.more_vert),
          SizedBox(width: 12,),
        ],
        foregroundColor: Colors.red,
        backgroundColor: Colors.blue,
      ),
      // bottomNavigationBar: ,
      // drawer: ,
      // endDrawer: ,
      // floatingActionButton: ,
      
      body: Center(
        child: Icon(
          Icons.home_outlined,
          color: Colors.red,
          size: 100, // default size 24 px
        ),
      ),
    );
  }
}
