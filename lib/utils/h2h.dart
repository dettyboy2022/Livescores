import 'package:flutter/material.dart';

class H2H extends StatelessWidget {
  const H2H({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 1, 10, 26),
            ),
            child: ListTile(
              leading: const Column(
                children: [
                  Text('14 JAN', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 15,
                  ),
                  Text('FT', style: TextStyle(color: Colors.white))
                ],
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset('assets/arsenal.png'),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        'Arsenal',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Image.asset('assets/astonvilla.png'),
                      const SizedBox(
                        width: 15,
                      ),
                      const Text('Aston Villa',
                          style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
              trailing: const Column(
                children: [
                  Text('3', style: TextStyle(color: Colors.white)),
                  SizedBox(
                    height: 20,
                  ),
                  Text('1', style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
