import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAnimi extends StatefulWidget {
  const MyAnimi({super.key});

  @override
  State<MyAnimi> createState() => _MyAnimiState();
}

class _MyAnimiState extends State<MyAnimi> {
  bool _isCircle = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: AnimatedAlign(
              duration: Duration(milliseconds: 1000),
              alignment: _isCircle ? Alignment.topLeft : Alignment.bottomRight,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isCircle = !_isCircle;
                  });
                },
                child: AnimatedContainer(
                  height: _isCircle ? 100 : 250,
                  width: _isCircle ? 100 : 200,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(_isCircle ? 90 : 0),
                  ),
                  duration: Duration(milliseconds: 300),
                ),
              ),
            ),
          ),

          AnimatedContainer(
            duration: Duration(milliseconds: 1000),
            child: ExpansionTile(
              title: Text("Card"),
              // onExpansionChanged: ,
              children: [
                Container(color: Colors.orange, width: 500, height: 200),
              ],
            ),
          ),
          AnimatedOpacity(
            opacity: _isCircle ? 0.25 : 1,
            duration: Duration(milliseconds: 1000),
            child: ClipPath(
              clipper: HeartClip(),
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(color: Colors.red),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class HeartClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, 75);
    // path.lineTo(size.width, 0);
    path.quadraticBezierTo(size.width, 25, size.width / 2, size.height);
    // path.lineTo(size.width / 2, size.height);
    path.quadraticBezierTo(0, 25, size.width / 2, 75);
    // path.lineTo(0, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
