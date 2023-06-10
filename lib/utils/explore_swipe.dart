import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExploreSwipe extends StatefulWidget {
  const ExploreSwipe({super.key});

  @override
  State<ExploreSwipe> createState() => _ExploreSwipeState();
}

class _ExploreSwipeState extends State<ExploreSwipe> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
      height: displayWidth * .120,
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
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
                      height: index == currentIndex ? displayWidth * .12 : 0,
                      width: index == currentIndex ? displayWidth * .32 : 0,
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
