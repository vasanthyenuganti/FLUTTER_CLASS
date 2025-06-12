// PageView
// PageView.builder()
// PageView.custom()

import 'package:flutter/material.dart';
import 'dart:math';

import 'package:page_view_class/my_shorts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyShorts());
  }
}

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {

  final ran = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        scrollDirection: Axis.vertical,
        // physics: NeverScrollableScrollPhysics(),
        onPageChanged: (val){
          print("========$val========");
        },
        children: [
          Container(
            color: Colors.red,
          ),
          Container(
            color: Colors.pink,
          ),
          Container(
            color: Colors.orange,
          )
        ],
      ),
      // body: PageView.builder(
      //   itemCount: 100,
      //   scrollDirection: Axis.vertical,
      //   onPageChanged: (val) {},
      //   // reverse: true,
      //   itemBuilder: (context, index) {
      //     int r = ran.nextInt(255);
      //     int g = ran.nextInt(255);
      //     int b = ran.nextInt(255);
      //     double o = ran.nextDouble();
      //     Color color  = Color.fromRGBO(r, g, b, o);
      //     // Color color  = Color.fromARGB(r, g, b, o);
      //     // # = 0xff
      //     // Color color  = Color(0xffffffff);
      //     return Container(
      //       color: color,
      //       child: Center(
      //         child: Text("$index", style: TextStyle(fontSize: 54)),
      //       ),
      //     );
      //   },
      // ),
    );
  }
}
