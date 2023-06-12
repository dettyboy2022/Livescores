import 'package:flutter/material.dart';

class LineUp extends StatelessWidget {
  const LineUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Formation',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 10,
                ),
                Text('(4-2-3-1)',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        color: Colors.grey)),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: [
                TextButton(
                    style: ButtonStyle(
                      shape: MaterialStatePropertyAll<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xffF4A58A)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Arsenal',
                      style: TextStyle(color: Colors.white),
                    )),
                const SizedBox(
                  width: 10,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Aston Villa',
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: Image.asset(
                'assets/fieldFootball.png',
                fit: BoxFit.fill,
                width: double.infinity,
              ),
            ),
          ],
        ));
  }
}