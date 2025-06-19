import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  // runApp(MyApp());
  runApp(DevicePreview(builder: (BuildContext context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyDrawerClass());
  }
}

class MyDrawerClass extends StatefulWidget {
  const MyDrawerClass({super.key});

  @override
  State<MyDrawerClass> createState() => _MyDrawerClassState();
}

class _MyDrawerClassState extends State<MyDrawerClass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.red,
      appBar: AppBar(title: Text("Drawer"), backgroundColor: Colors.blue),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: ListView(
          children: [
            DrawerHeader(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 8,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                      "https://lh3.googleusercontent.com/W4QDMYeNtcm37g2JfKKj5lv8rJ6KGLb9vZdYUNEpjixpHDjjQ_hPrwnj5Ruo1ZYHyukHLRQCtXrzQV6gLzRSNE-w60QYjFcUZZ_2=w1064-v0",
                    ),
                  ),
                  Text("Vasanth Yenuganti"),
                  Text("vasanthyenuganti@gmail.com"),
                ],
              ),
            ),
            // UserAccountsDrawerHeader(
            //   accountName: Text("battu"),
            //   accountEmail: Text("battu@gmail.com"),
            // ),
            ListTile(
              title: Text("My Files"),
              leading: Icon(Icons.file_open_sharp),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DrawerLiveScreen(name: "My Files"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Starred"),
              leading: Icon(Icons.star),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.timelapse),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Uploads"),
              leading: Icon(Icons.upload),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("offline"),
              leading: Icon(Icons.offline_pin),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      // endDrawer: Drawer(),
    );
  }
}

class DrawerLiveScreen extends StatelessWidget {
  final String name;
  const DrawerLiveScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(name)),
      body: Center(child: Text(name)),
    );
  }
}
