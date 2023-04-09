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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 140),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'What sport do\n you Interest?',
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              ' You can choose more than one',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 300,
                child: GridView.builder(
                    shrinkWrap: true,
                    itemCount: 8,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            childAspectRatio: 1 / 2,
                            crossAxisCount: 3,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 20,
                        width: 30,
                        color: Colors.red,
                        child: Image.asset('assets/soccer.png'),
                      );
                    }),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  
                    backgroundColor: const Color(0xFF246BFD)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen()));
                },
                child: const Text('Continue')),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
