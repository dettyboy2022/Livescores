import 'package:flutter/material.dart';
import 'package:sports/utils/home_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List sports = [
    {'image': 'assets/soccer.png', 'text': 'Soccer'},
    {'image': 'assets/basketball.png', 'text': 'Basketball'},
    {'image': 'assets/football.png', 'text': 'Football'},
    {'image': 'assets/baseball.png', 'text': 'Baseball'},
    {'image': 'assets/tennis.png', 'text': 'Tennis'},
    {'image': 'assets/volly.png', 'text': 'Volley'},
    {'image': 'assets/pingpong.png', 'text': 'Ping Pong'},
    {'image': 'assets/badminton.png', 'text': 'Badminton'}
  ];

  Color _containerColor = const Color(0xFF222232);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'LiveScores',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 25),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Image.asset(
                        'assets/notif2.png',
                        color: Colors.white,
                      )
                    ],
                  )
                ],
              ),
              Row(
                children: [
                  Expanded(
                      child: Image.asset(
                    'assets/cards.png',
                    fit: BoxFit.fill,
                  )),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: sports
                      .map((e) => GestureDetector(
                            onTap: () {
                              setState(() {
                                _containerColor = Colors.red;
                              });
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  // color: const Color(0xffF4A58A),
                                  color: _containerColor),
                              margin: const EdgeInsets.symmetric(horizontal: 8),
                              padding: const EdgeInsets.all(20),
                              child: Column(children: [
                                Image.asset(e['image']),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  e['text'],
                                  style: const TextStyle(
                                      fontSize: 15, color: Colors.white),
                                )
                              ]),
                            ),
                          ))
                      .toList(),
                ),
              ),
              const HomeList()
            ],
          ),
        ),
      ),
    );
  }
}
