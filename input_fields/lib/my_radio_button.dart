import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyRadioButton extends StatefulWidget {
  const MyRadioButton({super.key});

  @override
  State<MyRadioButton> createState() => _MyRadioButtonState();
}

class _MyRadioButtonState extends State<MyRadioButton> {
  Gender? _gender;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RadioListTile<Gender>(
            
            value: Gender.Male,
            groupValue: _gender,
            onChanged: (Gender? val) {
              setState(() {
                // debugPrint("Clicked on ${_gender!.name}");
                _gender = val!;
              });
            },
            title: Text("Male"),
          ),   
          RadioListTile<Gender>(
            value: Gender.Female,
            groupValue: _gender,
            onChanged: (Gender? val) {
              setState(() {
                // debugPrint("Clicked on ${_gender!.name}");
                _gender = val!;
              });
            },
            title: Text("Female"),
          ),
        ],
      ),
    );
  }
}

enum Gender { Male, Female }
