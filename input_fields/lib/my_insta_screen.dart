import 'package:flutter/material.dart';

class MyInstaScreen extends StatefulWidget {
  const MyInstaScreen({super.key});

  @override
  State<MyInstaScreen> createState() => _MyInstaScreenState();
}

class _MyInstaScreenState extends State<MyInstaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Instagram", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          // story ui with profile and username
          SizedBox(
            height: 100,
            child: ListView.separated(
              itemCount: 10,
              padding: EdgeInsets.symmetric(horizontal: 16),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Colors.purple,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "$index",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Text("$index user", style: TextStyle(color: Colors.white)),
                  ],
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(width: 16);
              },
            ),
          ),
          SizedBox(height: 8),
          // post ui layout
          Expanded(
            child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return SizedBox(
                  height: 500,
                  width: double.infinity,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      // profile and username
                      ListTile(
                        leading: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.purpleAccent,
                          ),
                          height: 50,
                          width: 50,
                        ),
                        title: Text(
                          "$index user",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      // post image or video UI
                      Container(
                        height: 375,
                        margin: EdgeInsets.all(16),
                        width: double.infinity,
                        decoration: BoxDecoration(color: Colors.purpleAccent),
                      ),

                      // buttons for (like,comment,share)
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.favorite_outline_rounded),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.chat_bubble_outline),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.send_outlined),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(height: 16);
              },
              itemCount: 100,
            ),
          ),
        ],
      ),
    );
  }
}
