import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool _isDarkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Visibility(
          visible: kIsWeb || Platform.isIOS || Platform.isMacOS,
          replacement: Switch(
            value: _isDarkMode,
            onChanged: (val) {
              setState(() {
                _isDarkMode = val;
              });
            },
          ),
          child: CupertinoSwitch(
            value: _isDarkMode,
            onChanged: (val) {
              setState(() {
                _isDarkMode = val;
              });
            },
          ),
        ),
      ),
    );
  }
}

class SwitchTask extends StatefulWidget {
  const SwitchTask({super.key});

  @override
  State<SwitchTask> createState() => _SwitchTaskState();
}

class _SwitchTaskState extends State<SwitchTask> {
  bool _isActive = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        spacing: 16,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: CupertinoSwitch(
              value: _isActive,
              onChanged: (val) {
                setState(() {
                  _isActive = val;
                });
              },
            ),
          ),
          Visibility(
            visible: _isActive,
            child: Container(
            height: 200,
            width: 200,
            color: Colors.red,
          ))
        ],
      ),
    );
  }
}
