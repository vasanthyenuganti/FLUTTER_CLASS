import 'package:flutter/material.dart';

class MyShorts extends StatelessWidget {
  MyShorts({super.key});

  final List<ShortModel> shortsData = [
    ShortModel(
      color: Colors.deepPurple,
      likes: 182,
      dislikes: 20,
      comments: 3,
      shares: 0,
      channelName: "vasanthyenuganti",
    ),
    ShortModel(
      color: Colors.redAccent,
      likes: 540,
      dislikes: 12,
      comments: 34,
      shares: 18,
      channelName: "techwithsam",
    ),
    ShortModel(
      color: Colors.blue,
      likes: 320,
      dislikes: 25,
      comments: 15,
      shares: 5,
      channelName: "codewithme",
    ),
    ShortModel(
      color: Colors.green,
      likes: 780,
      dislikes: 5,
      comments: 65,
      shares: 30,
      channelName: "dailydev",
    ),
    ShortModel(
      color: Colors.orange,
      likes: 150,
      dislikes: 10,
      comments: 12,
      shares: 2,
      channelName: "funnyshorts",
    ),
    ShortModel(
      color: Colors.teal,
      likes: 900,
      dislikes: 18,
      comments: 40,
      shares: 12,
      channelName: "fitnesszone",
    ),
    ShortModel(
      color: Colors.indigo,
      likes: 210,
      dislikes: 7,
      comments: 19,
      shares: 3,
      channelName: "travelgram",
    ),
    ShortModel(
      color: Colors.pink,
      likes: 1050,
      dislikes: 40,
      comments: 78,
      shares: 25,
      channelName: "lifebyemma",
    ),
    ShortModel(
      color: Colors.cyan,
      likes: 670,
      dislikes: 22,
      comments: 29,
      shares: 7,
      channelName: "gaminghub",
    ),
    ShortModel(
      color: Colors.yellow,
      likes: 455,
      dislikes: 15,
      comments: 23,
      shares: 9,
      channelName: "foodiefriday",
    ),
    ShortModel(
      color: Colors.brown,
      likes: 310,
      dislikes: 8,
      comments: 10,
      shares: 1,
      channelName: "cinemagic",
    ),
    ShortModel(
      color: Colors.lightBlue,
      likes: 860,
      dislikes: 11,
      comments: 60,
      shares: 20,
      channelName: "naturewalks",
    ),
    ShortModel(
      color: Colors.deepOrange,
      likes: 235,
      dislikes: 6,
      comments: 8,
      shares: 2,
      channelName: "quickdiy",
    ),
    ShortModel(
      color: Colors.grey,
      likes: 100,
      dislikes: 4,
      comments: 5,
      shares: 0,
      channelName: "minimalstyle",
    ),
    ShortModel(
      color: Colors.purpleAccent,
      likes: 490,
      dislikes: 14,
      comments: 26,
      shares: 6,
      channelName: "musicvibes",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        itemCount: shortsData.length,
        itemBuilder: (context, index) => ShortView(data: shortsData[index]),
      ),
    );
  }
}



class ShortView extends StatelessWidget {
  final ShortModel data;
  const ShortView({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: data.color,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Text(data.channelName[0].toUpperCase()),
            ),
            title: Text("@${data.channelName}"),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Column(children: [Text("Like")]),
          ),
        ],
      ),
    );
  }
}

class ShortModel {
  final Color color;
  final int likes;
  final int dislikes;
  final int comments;
  final int shares;
  final String channelName;
  ShortModel({
    required this.color,
    required this.likes,
    required this.dislikes,
    required this.comments,
    required this.shares,
    required this.channelName,
  });
}
