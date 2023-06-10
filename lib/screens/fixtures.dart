import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sports/utils/fixtures_list.dart';

class Fixtures extends StatefulWidget {
  const Fixtures({super.key});

  @override
  State<Fixtures> createState() => _FixturesState();
}

class _FixturesState extends State<Fixtures> {
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    double displayWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      appBar: AppBar(
        title: const Text('Weekend Fixtures'),
        centerTitle: true,
        backgroundColor: const Color(0xFF181829),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SearchBar(
                backgroundColor: MaterialStatePropertyAll(Color(0xff222232)),
                elevation: MaterialStatePropertyAll(0),
                side: MaterialStatePropertyAll(BorderSide.none),
                shape: MaterialStatePropertyAll(RoundedRectangleBorder()),
                padding: MaterialStatePropertyAll(EdgeInsets.only(left: 20)),
                leading: Icon(Iconsax.search_normal, color: Colors.white),
                hintText: 'Search your team ....',
                hintStyle:
                    MaterialStatePropertyAll(TextStyle(color: Colors.white)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 15),
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
              const FixtureList()
            ],
          ),
        ),
      ),
    );
  }

  List<String> listOfString = [
    'Fixtures',
    'Tag',
    'News',
    'Stadium',
    'Captain',
    'Card',
  ];

  List<String> listOfImages = [
    'assets/api.png',
    'assets/hastag.png',
    'assets/newspapper.png',
    'assets/stadium.png',
    'assets/captain.png',
    'assets/yellowcard.png',
  ];
}
