import 'package:flutter/material.dart';

class Standings extends StatelessWidget {
  const Standings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Standings',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )),
    );
  }
}
