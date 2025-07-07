import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MySlider extends StatefulWidget {
  const MySlider({super.key});

  @override
  State<MySlider> createState() => _MySliderState();
}

class _MySliderState extends State<MySlider> {
  double _sliderValue = 10.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Slider")),
      body: Column(
        children: [
          Slider(
            value: _sliderValue,
            min: 1.0,
            max: 20.0,
            divisions: 20,
            label: "${_sliderValue.toInt()}",
            onChanged: (val) {
              debugPrint("${val.toInt()} ====================");
              setState(() {
                _sliderValue = val.toInt().toDouble();
              });
            },
            thumbColor: Colors.green,
            activeColor: Colors.green,
            inactiveColor: Colors.red,
          ),
          CupertinoSlider(
            value: _sliderValue,
            min: 1.0,
            max: 20.0,
            onChanged: (val) {
              setState(() {
                _sliderValue = val.toInt().toDouble();
              });
            },
          ),
        ],
      ),
    );
  }
}
