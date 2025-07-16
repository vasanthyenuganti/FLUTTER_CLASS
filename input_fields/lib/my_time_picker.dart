import 'package:flutter/material.dart';

class MyTimePicker extends StatefulWidget {
  const MyTimePicker({super.key});

  @override
  State<MyTimePicker> createState() => _MyTimePickerState();
}

class _MyTimePickerState extends State<MyTimePicker> {
  TimeOfDay? _time;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_time != null ? _time!.format(context) : "Select time"),
      ),
      body: Center(
        child: FloatingActionButton(
          onPressed: () async {
            _time = await showTimePicker(
              context: context,
              initialTime: TimeOfDay.now(),

              helpText: "Select Time of DOB",
              cancelText: "Remove",
              initialEntryMode: TimePickerEntryMode.dialOnly,
              builder: (context, chil) {
                return Theme(
                  data: ThemeData(
                    timePickerTheme: TimePickerThemeData(
                      backgroundColor: Colors.blue,
                      dialBackgroundColor: Colors.green,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(0),
                      // ),
                    ),
                  ),
                  child: chil!,
                );
              },
              // text
            );
            if (_time != null) {
              setState(() {});
            }
            // showDateRangePicker(context: context, firstDate: firstDate, lastDate: lastDate)
          },
        ),
      ),
    );
  }
}
