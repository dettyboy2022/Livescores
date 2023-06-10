import 'package:flutter/material.dart';

class FixtureList extends StatefulWidget {
  const FixtureList({super.key});

  @override
  State<FixtureList> createState() => _FixtureListState();
}

class _FixtureListState extends State<FixtureList> {
  List image1 = [
    'assets/barcelona.png',
    'assets/astonvilla.png',
    'assets/arsenal.png',
    'assets/juventus.png',
    'assets/chelsea.png',
    'assets/manchester.png',
    'assets/Dortmund.png',
    'assets/leicester.png',
    'assets/RBLeipzig.png',
  ];

  List image2 = [
    'assets/realmadrid.png',
    'assets/sevilla.png',
    'assets/manCity.png',
    'assets/Bayern.png',
    'assets/Atletico.png',
    'assets/liverlogo.png',
    'assets/Hannover96.png',
    'assets/everton.png',
    'assets/Wolfsburg.png',
  ];

  List text = [
    'Barcelona VS Real Madrid',
    'Aston Villa VS Bilbao',
    'Arsenal VS Manchester City',
    'Juventus VS Bayern',
    'Chelsea VS Atletico',
    'Manchester United  VS  Liverpool',
    'Borussia Dortmund  VS  Hannover96',
    'Leicester City  VS  Everton',
    'RB Leipzig  VS  Wolfsburg'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        itemCount: image1.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.asset(image1[index]),
                const SizedBox(
                  width: 20,
                ),
                Image.asset(image2[index])
              ],
            ),
            title: Text(
              text[index],
              style: const TextStyle(color: Colors.white),
            ),
            subtitle: const Text('Monday, 12 Feb 2021, 02:30pm',
                style: TextStyle(color: Colors.white)),
            trailing: const Icon(
              Icons.cancel,
              color: Colors.white,
            ),
          );
        });
  }
}
