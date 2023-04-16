import 'package:flutter/material.dart';

class Explore extends StatelessWidget {
  const Explore({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
          child: Text(
        'Explore',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
      )),
    );
  }
}
