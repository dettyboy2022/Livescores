import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sports/screens/fixtures.dart';
import 'package:sports/screens/table.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
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

  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 20),
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
              Container(
                margin: EdgeInsets.all(displayWidth * .05),
                height: displayWidth * .120,
                child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    itemBuilder: (context, index) => InkWell(
                          onTap: () {
                            setState(() {
                              currentIndex = index;
                              HapticFeedback.lightImpact();
                            });
                          },
                          child: Stack(children: [
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .32
                                  : displayWidth * .18,
                              alignment: Alignment.center,
                              child: AnimatedContainer(
                                duration: const Duration(seconds: 1),
                                curve: Curves.fastLinearToSlowEaseIn,
                                height: index == currentIndex
                                    ? displayWidth * .12
                                    : 0,
                                width: index == currentIndex
                                    ? displayWidth * .32
                                    : 0,
                                decoration: BoxDecoration(
                                    color: index == currentIndex
                                        ? const Color(0xffF4A58A)
                                        : Colors.transparent,
                                    borderRadius: BorderRadius.circular(50)),
                              ),
                            ),
                            AnimatedContainer(
                              duration: const Duration(seconds: 1),
                              curve: Curves.fastLinearToSlowEaseIn,
                              width: index == currentIndex
                                  ? displayWidth * .31
                                  : displayWidth * .18,
                              alignment: Alignment.center,
                              child: Stack(
                                children: [
                                  Row(
                                    children: [
                                      AnimatedContainer(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        width: index == currentIndex
                                            ? displayWidth * .13
                                            : 0,
                                      ),
                                      AnimatedOpacity(
                                        opacity: index == currentIndex ? 1 : 0,
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          index == currentIndex
                                              ? listOfString[index]
                                              : '',
                                          style: const TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      AnimatedContainer(
                                        duration: const Duration(seconds: 1),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        width: index == currentIndex
                                            ? displayWidth * .03
                                            : 20,
                                      ),
                                      Image.asset(listOfImages[index])
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        )),
              ),
              ListView.builder(
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

  List<String> listOfString = [
    'Soccer',
    'Basketball',
    'Football',
    'Volley',
    'Tennis',
    'Table',
  ];

  List<String> listOfImages = [
    'assets/soccer.png',
    'assets/basketball.png',
    'assets/football.png',
    'assets/volly.png',
    'assets/tennis.png',
    'assets/pingpong.png',
  ];
}
