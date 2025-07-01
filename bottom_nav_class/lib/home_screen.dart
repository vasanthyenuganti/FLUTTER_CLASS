import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    debugPrint("Home Rebuild");
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("$value", style: TextStyle(color: Colors.red, fontSize: 32)),
          Center(
            child: Icon(Icons.home_outlined, color: Colors.green, size: 100),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
