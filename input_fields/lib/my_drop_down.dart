import 'package:flutter/material.dart';

class MyDropDown extends StatefulWidget {
  const MyDropDown({super.key});

  @override
  State<MyDropDown> createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  final List<String> _tech = [
    "FSD with React Native",
    "FSD with Flutter",
    "DS",
    "PEGA",
    "AWS",
    "SN",
  ];
  final TextEditingController _techSelect = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          child: DropdownMenu(
            // leadingIcon: ,
            width: double.infinity,

            hintText: "Select Technology",
            controller: _techSelect,
            dropdownMenuEntries: List.generate(_tech.length, (i) {
              return DropdownMenuEntry(value: "$i", label: _tech[i]);
            }),
            onSelected: (value) {
              debugPrint("${_techSelect.text} ============= $value");
            },
          ),
        ),
      ),
    );
  }
}
