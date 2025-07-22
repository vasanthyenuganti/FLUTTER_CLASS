import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:signup_form/models/user_model.dart';
import 'package:signup_form/screens/users_details_screen.dart';

class UsersScreen extends StatelessWidget {
  const UsersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final UserModel user = users[index];
          return ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => UsersDetailsScreen(user: user),
                ),
              );
            },
            leading: CircleAvatar(child: Center(child: Text("${index + 1}"))),
            title: Text(user.name),
            subtitle: Text(user.roll),
            trailing: CircularPercentIndicator(
              radius: 20,
              backgroundColor: Colors.grey,
              progressColor: Colors.green,
              percent: (user.attendance) / 100,
              center: Text("${user.attendance.toInt()}"),
            ),
          );
        },
        separatorBuilder: (context, index) => SizedBox(height: 12),
        itemCount: users.length,
      ),
    );
  }
}
