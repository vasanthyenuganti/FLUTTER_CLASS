import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome(),
    );
  }
}


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 300,
              width: 300,
              color: Colors.red,
            ),
            Positioned(
              bottom: -50,
              child: Container(
                height: 200,
                width: 200,
                color: Colors.orange,
              ),
            ),
            Positioned(
              bottom: -100,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.pink,
              ),
            ),
            // Positioned(
            //   left: -100,
            //   bottom: -100,
            //   child: Container(
            //     color: Colors.orange,
            //     width: 200,
            //     height: 200,
            //   ),
            // ),
            // Positioned(
            //   right: -100,
            //   top: -100,
            //   child: Container(
            //     color: Colors.black,
            //     width: 200,
            //     height: 200,
            //   ),
            // ),
           
          ],
        ),
      ),
    );
  }
}