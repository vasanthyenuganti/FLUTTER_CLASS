import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyHero extends StatefulWidget {
  const MyHero({super.key});

  @override
  State<MyHero> createState() => _MyHeroState();
}

class _MyHeroState extends State<MyHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Hero(
            tag: "animi",
            child: Container(height: 100, width: 100, color: Colors.green),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MySecondHero()),
              );
            },
            child: Text("Second"),
          ),
        ],
      ),
    );
  }
}

class MySecondHero extends StatefulWidget {
  const MySecondHero({super.key});

  @override
  State<MySecondHero> createState() => _MySecondHeroState();
}

class _MySecondHeroState extends State<MySecondHero> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Hero(
        tag: "animi",
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(height: 200, width: 100, color: Colors.green),
        ),
      ),
    );
  }
}
