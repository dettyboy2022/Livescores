import 'package:flutter/material.dart';

import 'home_screen.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PageInterest(),
    );
  }
}

class PageInterest extends StatefulWidget {
  const PageInterest({Key? key}) : super(key: key);

  @override
  State<PageInterest> createState() => _PageInterestState();
}

class _PageInterestState extends State<PageInterest> {
  List sports = [
    {
      'image': 'assets/soccer.png',
      'text': 'Soccer',
      'color': const Color(0xffF4A58A)
    },
    {
      'image': 'assets/basketball.png',
      'text': 'Basketball',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/football.png',
      'text': 'Football',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/baseball.png',
      'text': 'Baseball',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/tennis.png',
      'text': 'Tennis',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/volly.png',
      'text': 'Volley',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/pingpong.png',
      'text': 'Ping Pong',
      'color': const Color(0xff222232)
    },
    {
      'image': 'assets/badminton.png',
      'text': 'Badminton',
      'color': const Color(0xff222232)
    }
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What sport do\n you Interest?',
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 36,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' You can choose more than one',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: SizedBox(
                height: 300,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: sports.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1,
                            crossAxisCount: 3,
                            mainAxisSpacing: 20,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(100),
                                // color: const Color(0xffF4A58A),
                                color: sports[index]['color']),
                            padding: const EdgeInsets.all(30),
                            child: Image.asset(
                              sports[index]['image'],
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            sports[index]['text'],
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w500),
                          )
                        ],
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15)),
                    minimumSize: const Size(double.infinity, 50),
                    backgroundColor: const Color(0xFF246BFD)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400),
                )),
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                'Skip',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 18),
              ),
            )
          ],
        ),
      ),
    );
  }
}
