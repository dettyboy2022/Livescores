import 'package:flutter/material.dart';
import 'package:sports/details.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 20),
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
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/soccer.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Soccer',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/basketball.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Basketball',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/baseball.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Baseball',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/tennis.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Tennis',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/volly.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Volley',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/pingpong.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Ping Pong',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xffF4A58A),
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Image.asset('assets/badminton.png'),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('Badminton',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 17))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              ListTile(
                leading: Image.asset('assets/laliga.png'),
                title: const Text(
                  'La Liga',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'Spain',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff222232),
                ),
                child: ListTile(
                  leading: Image.asset('assets/barcelona.png'),
                  title: const Text(
                    'Real Madrid  vs  Barcelona',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    '   2   -   0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  trailing: const Text(
                    'HT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff222232),
                ),
                child: ListTile(
                  leading: Image.asset('assets/sevilla.png'),
                  title: const Text(
                    'Sevilla  vs  Atletico',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    '   0   -   0',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  trailing: const Text(
                    'FT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/premierleague.png'),
                title: const Text(
                  'Premier League',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                      color: Colors.white),
                ),
                subtitle: const Text(
                  'England',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                      color: Colors.grey),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Details()));
                },
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xff222232),
                  ),
                  child: ListTile(
                    leading: Image.asset('assets/arsenal.png'),
                    title: const Text(
                      '  Arsenal  vs  Aston Villa',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                    subtitle: const Text(
                      '3   -  2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                          color: Colors.white),
                    ),
                    trailing: const Text(
                      'FT',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 17),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff222232),
                ),
                child: ListTile(
                  leading: Image.asset('assets/manchester.png'),
                  title: const Text(
                    'Man United  vs  Chelsea',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    '2  -  1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  trailing: const Text(
                    'FT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
              ListTile(
                leading: Image.asset('assets/uefa.png'),
                title: const Text(
                  'UEFA Champions League',
                  style: TextStyle(
                      fontWeight: FontWeight.w800,
                      fontSize: 17,
                      color: Colors.white),
                ),
                trailing: const Icon(
                  Icons.navigate_next,
                  color: Colors.white,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff222232),
                ),
                child: ListTile(
                  leading: Image.asset('assets/Bayern.png'),
                  title: const Text(
                    'Juventus  vs  Bayern',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    '1  -  1',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 17,
                        color: Colors.white),
                  ),
                  trailing: const Text(
                    'FT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 17),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}