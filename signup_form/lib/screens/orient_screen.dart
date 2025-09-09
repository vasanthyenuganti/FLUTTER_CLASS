import 'package:flutter/material.dart';

class OrientScreen extends StatelessWidget {
  const OrientScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        if (orientation == Orientation.portrait) {
          return Scaffold(backgroundColor: Colors.green);
        } else {
          return Scaffold(backgroundColor: Colors.red);
        }
      },
    );
  }
}
