import 'package:flutter/material.dart';

class StackUiScreen extends StatefulWidget {
  const StackUiScreen({super.key});

  @override
  State<StackUiScreen> createState() => _StackUiScreenState();
}

class _StackUiScreenState extends State<StackUiScreen> {

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          index: index,
          children: [
            Container(
              color: Colors.red,
            ),
             Container(
              color: Colors.orange,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        setState(() {
          index++;
          debugPrint("Latest index $index");
        });
      }),
    );
  }
}