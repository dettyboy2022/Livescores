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
      backgroundColor: Colors.black54,
      body: Column(
        children: [
          Row(
            children: const [
              Text(
                'LIVESCORES',
                style: TextStyle(color: Colors.white),
              ),
              Icon(
                Icons.search,
                color: Colors.white,
              ),
              Icon(
                Icons.alarm,
                color: Colors.white,
              )
            ],
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        // backgroundColor: Colors.black45,
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
