import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:login_class/login_page.dart';

void main() {
  runApp(DevicePreview(builder: (val) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}


