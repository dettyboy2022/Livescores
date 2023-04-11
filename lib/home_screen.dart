import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 60, 20, 0),
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
            Image.asset('assets/cards.png'),
            const SizedBox(
              height: 25,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Card(
                    color: Colors.red,
                    child: Column(
                      children: [
                        Image.asset('assets/soccer.png'),
                         const Text('Soccer')
                      ],
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                ListTile(
                  leading: Image.asset(
                    'assets/laliga.png',
                  ),
                  title: const Text(
                    'La Liga',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  subtitle: const Text(
                    'Spain',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ),
                // Container(
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(20),
                //       color: Colors.black),
                //   child: ListTile(
                //     leading: Row(
                //       children: [
                //         Image.asset('assets/realmadrid.png'),
                //         Image.asset('assets/barcelona.png')
                //       ],
                //     ),
                //     title: const Text(
                //       'La Liga',
                //       style: TextStyle(
                //           color: Colors.white,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 18),
                //     ),
                //     subtitle: const Text(
                //       'Spain',
                //       style: TextStyle(
                //           fontSize: 16,
                //           fontWeight: FontWeight.w400,
                //           color: Colors.grey),
                //     ),
                //     trailing: const Icon(
                //       Icons.navigate_next,
                //       color: Colors.white,
                //     ),
                //   ),
                // ),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xff222232),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_sharp), label: 'Standings'),
          // BottomNavigationBarItem(icon: Icon(Icons.person),
          //     label: 'Profile'),
        ],
      ),
    );
  }
}
