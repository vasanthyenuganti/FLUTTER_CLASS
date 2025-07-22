import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:signup_form/models/user_model.dart';

class UsersDetailsScreen extends StatelessWidget {
  final UserModel user;
  const UsersDetailsScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ListTile(
          leading: CircleAvatar(child: Center(child: Text("1"))),
          title: Text(user.name),
          subtitle: Text(user.roll),
          trailing: CircularPercentIndicator(
            radius: 20,
            backgroundColor: Colors.grey,
            progressColor: Colors.green,
            percent: (user.attendance) / 100,
            center: Text("${user.attendance.toInt()}"),
          ),
        ),
      ),
    );
  }
}
