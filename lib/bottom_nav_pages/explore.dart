import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sports/screens/fixtures.dart';
import 'package:sports/screens/table.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List content = [
    {
      'image': 'assets/lampard.png',
      'text': 'Roumor Has it: Lampard`s position under threat,....'
    },
    {
      'image': 'assets/news.png',
      'text': 'Arteta sees "natural leader" Tierney as a future,'
    },
    {
      'image': 'assets/saka.png',
      'text': 'Athletic Bilbao to appoint Marcelino as coach until, ...'
    },
    {
      'image': 'assets/lampard.png',
      'text': 'Barcelona suffer too much late in games, says Ter Stegen'
    },
    {
      'image': 'assets/bilbao.png',
      'text': 'Barcelona suffer too much late in games, says Ter Stegen'
    },
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
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                    filled: true,
                    fillColor: const Color((0xff222232)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10)),
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    hintText: 'Search for news, teams, match etc....',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 17),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: sports
                      .map((e) => GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.grey,
                              ),
                              margin: const EdgeInsets.only(left: 10),
                              width: 150,
                              height: 50,
                              child: Image.asset(e),
                            ),
                          ))
                      .toList(),
                ),
              ),
              ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: content.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: content
                          .map((e) => ListTile(
                                contentPadding: const EdgeInsets.all(10),
                                leading: Image.asset(
                                  e['image'],
                                  width: 120,
                                  fit: BoxFit.fitWidth,
                                ),
                                title: Text(e['text'],
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
                              ))
                          .toList(),
                    );
                    // return ListTile(
                    //   contentPadding: const EdgeInsets.all(10),
                    //   leading: Image.asset(
                    //     images[index],
                    //     width: 120,
                    //     fit: BoxFit.fitWidth,
                    //   ),
                    //   title: Text(news[index],
                    //       style: const TextStyle(
                    //           color: Colors.white,
                    //           fontSize: 16,
                    //           fontWeight: FontWeight.w600)),
                    //   subtitle: const Text(
                    //     '20 APRIL 2023',
                    //     style: TextStyle(
                    //         wordSpacing: 5,
                    //         color: Colors.grey,
                    //         fontWeight: FontWeight.w600,
                    //         fontSize: 13),
                    //   ),
                    //   trailing: const Icon(
                    //     Iconsax.save_2,
                    //     color: Colors.grey,
                    //   ),
                    // );
                  }),
              const Text(
                'Trending News',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 23,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const LaligaTab()));
                      },
                      child: Stack(children: [
                        Image.asset(
                          'assets/news.png',
                          width: 400,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Positioned(
                              bottom: 50,
                              child: Text(
                                'Arsenal vs Aston Villa\n Prediction',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ]),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Fixtures()));
                      },
                      child: Stack(children: [
                        Image.asset(
                          'assets/liverpool.png',
                          width: 400,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Positioned(
                              bottom: 50,
                              child: Text(
                                'Weekend Fixtures',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 27,
                                    fontWeight: FontWeight.bold),
                              )),
                        )
                      ]),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
