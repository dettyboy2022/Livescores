import 'package:flutter/material.dart';
import 'package:sports/screens/fixtures.dart';
import 'package:sports/screens/table.dart';
import 'package:sports/utils/explore_list.dart';
import 'package:sports/utils/explore_swipe.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 70, 10, 20),
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
              const ExploreSwipe(),
              const ExploreList(),
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
