import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Profile',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )),
    );
  }
}
