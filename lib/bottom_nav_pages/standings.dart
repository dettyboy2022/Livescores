import 'package:flutter/material.dart';
import 'package:sports/bottom_nav_pages/standingdetails.dart';

class Standings extends StatelessWidget {
  const Standings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 70, 0, 10),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      filled: true,
                      fillColor: const Color((0xff222232)),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10)),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      hintText: 'Search your competition...',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 17),
                      prefixIcon: const Icon(
                        Icons.search,
                        color: Colors.grey,
                      )),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const StandingDetails()));
                  },
                  child: ListTile(
                    leading: Image.asset('assets/laliga.png'),
                    title: const Text(
                      'La Liga',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                    ),
                    subtitle: const Text(
                      'Spain',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                    ),
                    trailing: const Icon(
                      Icons.navigate_next,
                      color: Colors.white,
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color((0xff222232)),
                  ),
                  child: DataTable(columns: const [
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('D')),
                    DataColumn(label: Text('L')),
                    DataColumn(label: Text('Ga')),
                    DataColumn(label: Text('Gd')),
                    DataColumn(label: Text('Pts')),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Image.asset('assets/Atletico.png')),
                      const DataCell(Text('2')),
                      const DataCell(Text('1')),
                      const DataCell(Text('6')),
                      const DataCell(Text('23')),
                      const DataCell(Text('38')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/realmadrid.png')),
                      const DataCell(Text('4')),
                      const DataCell(Text('3')),
                      const DataCell(Text('7')),
                      const DataCell(Text('15')),
                      const DataCell(Text('37')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/barcelona.png')),
                      const DataCell(Text('4')),
                      const DataCell(Text('4')),
                      const DataCell(Text('9')),
                      const DataCell(Text('20')),
                      const DataCell(Text('34')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/sevilla.png')),
                      const DataCell(Text('8')),
                      const DataCell(Text('2')),
                      const DataCell(Text('10')),
                      const DataCell(Text('16')),
                      const DataCell(Text('32')),
                    ]),
                  ]),
                ),
                const SizedBox(
                  height: 20,
                ),
                ListTile(
                  leading: Image.asset('assets/premierleague.png'),
                  title: const Text(
                    'Premier League',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w800),
                  ),
                  subtitle: const Text(
                    'England',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: const Icon(
                    Icons.navigate_next,
                    color: Colors.white,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: const Color((0xff222232)),
                  ),
                  child: DataTable(columns: const [
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('D')),
                    DataColumn(label: Text('L')),
                    DataColumn(label: Text('Ga')),
                    DataColumn(label: Text('Gd')),
                    DataColumn(label: Text('Pts')),
                  ], rows: [
                    DataRow(cells: [
                      DataCell(Row(
                        children: [
                          Image.asset('assets/manchester.png'),
                          // Text('la ligo')
                        ],
                      )),
                      const DataCell(Text('2')),
                      const DataCell(Text('1')),
                      const DataCell(Text('6')),
                      const DataCell(Text('23')),
                      const DataCell(Text('38')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/liverlogo.png')),
                      const DataCell(Text('4')),
                      const DataCell(Text('3')),
                      const DataCell(Text('7')),
                      const DataCell(Text('15')),
                      const DataCell(Text('37')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/manCity.png')),
                      const DataCell(Text('4')),
                      const DataCell(Text('4')),
                      const DataCell(Text('9')),
                      const DataCell(Text('20')),
                      const DataCell(Text('34')),
                    ]),
                    DataRow(cells: [
                      DataCell(Image.asset('assets/chelsea.png')),
                      const DataCell(Text('8')),
                      const DataCell(Text('2')),
                      const DataCell(Text('10')),
                      const DataCell(Text('16')),
                      const DataCell(Text('32')),
                    ]),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }
}
