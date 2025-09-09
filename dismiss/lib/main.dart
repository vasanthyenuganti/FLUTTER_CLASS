import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: ListView.builder(
          itemCount: 100,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              // direction: ,
              // confirmDismiss: (direction) {

              // },
              onDismissed: (direction) {},
              background: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.undo, color: Colors.green),
                  Icon(Icons.delete, color: Colors.red),
                ],
              ),

              key: ValueKey(index),
              child: ListTile(title: Text("Name $index")),
            );
          },
        ),
      ),
    );
  }
}
