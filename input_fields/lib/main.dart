import 'package:flutter/material.dart';
import 'package:input_fields/my_insta_screen.dart';
import 'package:input_fields/my_slider.dart';
import 'package:input_fields/palt_prod_widget.dart';
// import 'flutter:device_preview/device_preview.dart';

void main() {
  runApp(const MainApp());
  // runApp(DevicePreview(buidler: (ctx) => MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHome());
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
      appBar: AppBar(title: Text("Home"), actions: [Icon(Icons.person)]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MySlider()),
                  );
                },
                child: Text("Slider", style: TextStyle()),
              ),
            ),
            SizedBox(height: 12),
            // SingleChildScrollView(
            //   scrollDirection : Axis.horizontal,
            //   child: Row(
            //     spacing : 12,
            //     children : List.filled(10, PlatProdWidget())
            //   ),
            // ),
            // GridView.count(crossAxisCount: 2, children: PlatProdWidget()),
            GridView.count(
              shrinkWrap: true,
              childAspectRatio: .70,
              mainAxisSpacing: 16,
              crossAxisSpacing: 16,
              padding: EdgeInsets.all(16),
              crossAxisCount: 2,
              children: List.filled(10, PlatProdWidget()),
            ),
          ],
        ),
      ),
    );
  }
}
