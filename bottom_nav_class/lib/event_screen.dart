import 'package:flutter/material.dart';

class EventScreen extends StatelessWidget {
  const EventScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Events Rebuild");
    return Scaffold(
      body: Center(
        child: Icon(
          Icons.event_available_outlined,
          color: Colors.green,
          size: 100,
        ),
      ),
    );
  }
}
