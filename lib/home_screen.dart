import 'package:flutter/material.dart';

import 'bottom_nav_pages/home.dart';
import 'bottom_nav_pages/explore.dart';
import 'bottom_nav_pages/profile.dart';
import 'bottom_nav_pages/standings.dart';

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
  int currentIndex = 0;

  List<Widget> pages = [
    const Home(),
    const Explore(),
    const Standings(),
    const Profile()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        currentIndex: currentIndex,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xff222232),
        showUnselectedLabels: false,
        fixedColor: const Color(0xff246BFD),
        unselectedLabelStyle: const TextStyle(color: Colors.grey),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.table_chart_sharp), label: 'Standings'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile')
        ],
      ),
    );
  }
}
