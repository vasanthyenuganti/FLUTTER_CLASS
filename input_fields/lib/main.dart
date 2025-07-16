import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:input_fields/my_check_box.dart';
import 'package:input_fields/my_date_picker.dart';
import 'package:input_fields/my_drop_down.dart';
import 'package:input_fields/my_insta_screen.dart';
import 'package:input_fields/my_radio_button.dart';
import 'package:input_fields/my_slider.dart';
import 'package:input_fields/my_switch.dart';
import 'package:input_fields/my_time_picker.dart';
import 'package:input_fields/palt_prod_widget.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  if (kIsWeb) {
    runApp(DevicePreview(builder: (BuildContext context) => MainApp()));
  } else {
    runApp(const MainApp());
  }
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
          spacing: 16,
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
            // SingleChildScrollView(
            //   scrollDirection : Axis.horizontal,
            //   child: Row(
            //     spacing : 12,
            //     children : List.filled(10, PlatProdWidget())
            //   ),
            // ),
            // GridView.count(crossAxisCount: 2, children: PlatProdWidget()),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => Scaffold(
                          appBar: AppBar(),
                          body: GridView.count(
                            shrinkWrap: true,
                            childAspectRatio: .70,
                            mainAxisSpacing: 16,
                            crossAxisSpacing: 16,
                            padding: EdgeInsets.all(16),
                            crossAxisCount: 2,
                            children: List.filled(10, PlatProdWidget()),
                          ),
                        ),
                  ),
                );
              },
              child: Text("Platify Grid", style: TextStyle()),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SwitchTask()),
                  );
                },
                child: Text("Switch", style: TextStyle()),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyCheckBoxTask()),
                  );
                },
                child: Text("Check Box", style: TextStyle()),
              ),
            ),
            Text(getPlatform(), style: TextStyle(fontSize: 64)),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyRadioButton()),
                  );
                },
                child: Text("Radio Btn", style: TextStyle()),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyDatePicker()),
                  );
                },
                child: Text("Date Picker", style: TextStyle()),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyTimePicker()),
                  );
                },
                child: Text("Time Picker", style: TextStyle()),
              ),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyDropDown()),
                  );
                },
                child: Text("Drop Down", style: TextStyle()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  String getPlatform() {
    if (kIsWeb) {
      return "Web";
    } else {
      if (Platform.isAndroid) {
        return "Android";
      } else if (Platform.isIOS) {
        return "IOS";
      } else if (Platform.isMacOS) {
        return "MacOS";
      } else if (Platform.isWindows) {
        return "WIN";
      } else if (Platform.isFuchsia) {
        return "Fuchsia";
      } else if (Platform.isLinux) {
        return "Linux";
      } else {
        return "None";
      }
    }
  }
}
