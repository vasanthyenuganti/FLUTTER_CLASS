import 'package:flutter/material.dart';

class MyDatePicker extends StatefulWidget {
  const MyDatePicker({super.key});

  @override
  State<MyDatePicker> createState() => _MyDatePickerState();
}

class _MyDatePickerState extends State<MyDatePicker> {
  DateTime? _dateTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Visibility(
          visible: _dateTime != null,
          child: Column(
            children: [
              Text(
                formatToDMY(_dateTime != null ? _dateTime.toString() : ""),
                style: TextStyle(fontSize: 32),
              ),
              Text(
                _dateTime != null
                    ? _dateTime!.millisecondsSinceEpoch.toString()
                    : "Select Date",
                style: TextStyle(fontSize: 32),
              ),
            ],
          ),
          // replacement: ,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          _dateTime = await showDatePicker(
            context: context,
            firstDate: DateTime(2000),
            lastDate: DateTime.now(),
            fieldHintText: "Pick the date",
            helpText: "Select DOB",
            initialEntryMode: DatePickerEntryMode.calendarOnly,
            selectableDayPredicate: (date) => date.weekday == 1,
            // currentDate: DateTime(2023),
            cancelText: "Remove",
            confirmText: "Submit",
          );
          if (_dateTime != null) {
            debugPrint(_dateTime.toString());
            debugPrint(_dateTime!.millisecondsSinceEpoch.toString());
          }
          setState(() {});
        },
        child: Icon(Icons.date_range),
      ),
    );
  }

  String formatToDMY(String date) {
    return date.split(" ").first.split("-").reversed.join("-");
  }
}
