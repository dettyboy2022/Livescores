import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import '../bottom_nav_pages/home.dart';
import '../bottom_nav_pages/explore.dart';
import '../bottom_nav_pages/profile.dart';
import '../bottom_nav_pages/standings.dart';

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
        showSelectedLabels: true,
        fixedColor: const Color(0xff246BFD),
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 12,
        selectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.home),
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.global_edit),
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.trade5),
              ),
              label: 'Standings'),
          BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Iconsax.personalcard),
              ),
              label: 'Profile')
        ],
      ),
    );
  }
}
