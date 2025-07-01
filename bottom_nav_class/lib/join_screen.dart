import 'package:flutter/material.dart';

class JoinScreen extends StatelessWidget {
  const JoinScreen({super.key});

  @override
  Widget build(BuildContext context) {
    debugPrint("Join Rebuild");
    return Scaffold(
      body: Center(child: Icon(Icons.meeting_room_outlined, color: Colors.green, size: 100)),
    );
  }
}
