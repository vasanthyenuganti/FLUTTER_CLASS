import 'package:flutter/material.dart';

class LayoutScreen extends StatelessWidget {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 550) {
          return Scaffold(
            body: Column(
              children: [
                Expanded(flex: 9, child: Container(color: Colors.white)),
                Expanded(flex: 1, child: Container(color: Colors.green)),
              ],
            ),
          );
        } else if (constraints.maxWidth <= 1024) {
          return Scaffold(
            body: Row(
              children: [
                Expanded(flex: 1, child: Container(color: Colors.green)),
                Expanded(flex: 9, child: Container(color: Colors.white)),
              ],
            ),
          );
        } else {
          return Scaffold(
            body: Row(
              children: [
                Expanded(flex: 3, child: Container(color: Colors.green)),
                Expanded(
                  flex: 7,
                  child: Container(
                    color: Colors.white,
                    child: Center(child: Text("Desktop")),
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
