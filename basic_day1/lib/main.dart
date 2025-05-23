import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

// stateless widget (static UI)
// stateful widget (dynamic UI)

// material theme (andriod)
// cupertino theme (iOS)

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // have to return the theme of the application
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.orange,
        body: Align(
          alignment: Alignment(.5,.5),
          child: Text("Orange"),
        ),
      )
    );
  }
}

