import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:tab_bar_class/custom_tab_view.dart';

void main() {
  // runApp(MyApp());
  runApp(DevicePreview(builder: (context) => MyApp())); 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: CustomTabView());
  }
}

class NextPage extends StatelessWidget {
  final int n;
  const NextPage({super.key, required this.n});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text("$n")));
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int number = 0;
  bool isFavorite = false;

  @override
  void initState() {
    super.initState();
    number = 0;
  }

  @override
  void dispose() {
    number = 0;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Rebuild");
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => NextPage(n: number)),
              );
            },
            icon: Icon(Icons.send),
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("$number", style: TextStyle(fontSize: 54))),
          SizedBox(height: 12),
          IconButton(
            onPressed: () {
              setState(() => isFavorite = !isFavorite);
              debugPrint("toggled the bottom $isFavorite");
            },
            iconSize: number > 0 ? number.toDouble() : 24,
            icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border),
            color: isFavorite ? Colors.red : Colors.black,
          ),
        ],
      ),
      floatingActionButton: Column(
        spacing: 12,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number = 0;
              });
              debugPrint("clicked the reset $number");
            },
            child: Icon(Icons.exposure_zero),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number--;
              });
              debugPrint("clicked the decrement $number");
            },
            child: Icon(Icons.remove),
          ),
          FloatingActionButton(
            onPressed: () {
              setState(() {
                number++;
              });
              debugPrint("clicked the increment $number");
            },
            child: Icon(Icons.add),
          ),
        ],
      ),
    );
  }
}
// stf
// createState()
// initState()
// build()
// dispose()



// state mangement

 // provider 
 // getx
 // riverpod
 // bloc
 // redux
 // mobx
