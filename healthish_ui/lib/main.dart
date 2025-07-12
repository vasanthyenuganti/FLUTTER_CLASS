import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:healthish_ui/screens/nav_bar_screen.dart';

void main() {
  runApp(kIsWeb ? DevicePreview(builder: (context) => MainApp()) : MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.transparent,
          titleSpacing: 0,
          titleTextStyle: TextStyle(color: Colors.white,fontSize: 18),
          iconTheme: IconThemeData(
            color: Colors.white
          )
        )
      ),
      home: NavBarScreen());
  }
}
