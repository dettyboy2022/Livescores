import 'package:flutter/material.dart';
import 'package:sports/screens/details.dart';

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        primary: false,
        padding: EdgeInsets.zero,
        itemCount: con.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Details()));
                },
                child: ListTile(
                  leading: Image.asset(con[index]['flag']),
                  title: Text(
                    con[index]['league'],
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600),
                  ),
                  subtitle: Text(
                    con[index]['country'],
                    style: TextStyle(
                        color: Colors.grey.shade700,
                        fontSize: 15,
                        fontWeight: FontWeight.w400),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xff222232),
                ),
                child: ListTile(
                  leading: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(con[index]['team1']),
                      const SizedBox(
                        width: 10,
                      ),
                      Image.asset(con[index]['team2']),
                    ],
                  ),
                  title: Center(
                    child: Text(
                      con[index]['clubs'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  subtitle: Center(
                    child: Text(
                      con[index]['results'],
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  trailing: const Text(
                    'FT',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontSize: 15),
                  ),
                ),
              ),
            ],
          );
        });
  }

  List con = [
    {
      'flag': 'assets/laliga.png',
      'league': 'La Liga',
      'country': 'Spain',
      'team1': 'assets/arsenal.png',
      'team2': 'assets/astonvilla.png',
      'clubs': 'Arsenal vs Aston Villa',
      'results': '2 - 3'
    },
    {
      'flag': 'assets/premierleague.png',
      'league': 'Premier League',
      'country': 'England',
      'team1': 'assets/barcelona.png',
      'team2': 'assets/realmadrid.png',
      'clubs': 'Bracelona vs Real Madrid',
      'results': '1 - 3'
    },
    {
      'flag': 'assets/uefa.png',
      'league': 'Uefa Champions League',
      'country': 'Europe',
      'team1': 'assets/juventus.png',
      'team2': 'assets/Bayern.png',
      'clubs': 'Juventus vs Bayern Munich',
      'results': '2 - 2'
    }
  ];
}
