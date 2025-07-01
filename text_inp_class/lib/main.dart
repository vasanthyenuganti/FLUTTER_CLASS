import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';

void main() {
  // runApp(MyApp());
  runApp(DevicePreview(builder: (context) => MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyTextInp());
  }
}

class MyTextInp extends StatefulWidget {
  const MyTextInp({super.key});

  @override
  State<MyTextInp> createState() => _MyTextInpState();
}

class _MyTextInpState extends State<MyTextInp> {
  final nameCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  bool _isVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color(0xff008738),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                // prefix: ,
                // prefix: Icon(Icons.person_outline),
                icon: Icon(Icons.mail),
                hintText: "vasanth",
                labelText: "Name",
                prefixIcon: Icon(Icons.person_outline),
                suffixIcon: Icon(Icons.info_outline),
                prefixIconColor: Colors.blue,
                suffixIconColor: Colors.blue,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(36),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                // focusedErrorBorder: UnderlineInputBorder()
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
              onChanged: (val) {
                debugPrint(val);
              },
              controller: nameCtrl,
              onSubmitted: (val) {
                debugPrint("$val on submission");
              },
            ),
            SizedBox(height: 24),
            TextField(
              // enabled: false,
              obscureText: !_isVisible,
              decoration: InputDecoration(
                // prefix: ,
                // prefix: Icon(Icons.person_outline),
                icon: Icon(Icons.mail),
                hintText: "......",
                labelText: "Password",
                prefixIcon: Icon(Icons.person_outline),
                suffixIcon: IconButton(
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                  icon: Icon(
                    !_isVisible
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                  ),
                ),
                prefixIconColor: Colors.blue,
                suffixIconColor: Colors.blue,
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.orange),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blue),
                  borderRadius: BorderRadius.circular(36),
                ),
                errorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red),
                ),
                // focusedErrorBorder: UnderlineInputBorder()
                focusedErrorBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.yellow),
                ),
              ),
              onChanged: (val) {
                debugPrint(val);
              },
              controller: passCtrl,
              onSubmitted: (val) {
                debugPrint("$val on submission");
              },
            ),
          ],
        ),
      ),
    );
  }
}
