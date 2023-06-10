import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ExploreList extends StatefulWidget {
  const ExploreList({super.key});

  @override
  State<ExploreList> createState() => _ExploreListState();
}

class _ExploreListState extends State<ExploreList> {
  List image = [
    'assets/lampard.png',
    'assets/news.png',
    'assets/saka.png',
    'assets/lampard.png',
    'assets/bilbao.png',
  ];

  List content = [
    'Roumor Has it: Lampard`s position under threat,....',
    'Arteta sees "natural leader" Tierney as a future,',
    'Athletic Bilbao to appoint Marcelino as coach until, ...',
    'Barcelona suffer too much late in games, says Ter Stegen',
    'Barcelona suffer too much late in games, says Ter Stegen'
  ];

  List sports = [
    'assets/soccer.png',
    'assets/football.png',
    'assets/pingpong.png',
    'assets/volly.png',
    'assets/basketball.png',
    'assets/tennis.png'
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.zero,
        primary: false,
        shrinkWrap: true,
        itemCount: content.length,
        itemBuilder: (context, index) {
          return ListTile(
            contentPadding: const EdgeInsets.all(10),
            leading: Image.asset(
              image[index],
              width: 120,
              fit: BoxFit.fitWidth,
            ),
            title: Text(content[index],
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600)),
            subtitle: const Text(
              '20 APRIL 2023',
              style: TextStyle(
                  wordSpacing: 5,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                  fontSize: 13),
            ),
            trailing: const Icon(
              Iconsax.save_2,
              color: Colors.grey,
            ),
          );
        });
  }
}
