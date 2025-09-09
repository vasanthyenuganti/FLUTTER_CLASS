import 'package:flutter/material.dart';

class ScreenSize extends StatelessWidget {
  const ScreenSize({super.key});

  @override
  Widget build(BuildContext context) {
    double hi = MediaQuery.sizeOf(context).height;
    double wi = MediaQuery.of(context).size.width;
    Size size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "(${wi.toInt()} X ${hi.toInt()}) ${size.aspectRatio}",
              style: TextStyle(fontSize: 32),
            ),
          ),
          Center(child: Text(getPlat(wi), style: TextStyle(fontSize: 32))),
        ],
      ),
    );
  }

  String getPlat(double width) {
    if (width <= 700) {
      return "Mobile";
    } else if (width <= 1024) {
      return "Tablet";
    } else {
      return "Desktop";
    }
  }
}
