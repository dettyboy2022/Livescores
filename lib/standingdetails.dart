import 'package:flutter/material.dart';

class StandingDetails extends StatefulWidget {
  const StandingDetails({super.key});

  @override
  State<StandingDetails> createState() => _StandingDetailsState();
}

class _StandingDetailsState extends State<StandingDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181829),
        title: const Text('spain'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Image.asset('assets/liga.png'),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'La Liga',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22),
              ),
              Row(
                children: [
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF4A58A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child: const Text(
                        'All',
                        style: TextStyle(fontSize: 17),
                      )),
                  const SizedBox(
                    width: 25,
                  ),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xffF4A58A),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {},
                      child:
                          const Text('Home', style: TextStyle(fontSize: 17))),
                  const SizedBox(
                    width: 25,
                  ),
                  const Text(
                    'Away',
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )
                ],
              ),
              // DataTable(columns: const [
              //   DataColumn(label: Text('Team')),
              //   DataColumn(label: Text('D')),
              //   DataColumn(label: Text('L')),
              //   DataColumn(label: Text('Ga')),
              //   DataColumn(label: Text('Gd')),
              //   DataColumn(label: Text('Pts')),
              // ], rows: standingRows())
              DataTable(
                  horizontalMargin: 10,
                  dataRowMaxHeight: 70,
                  dataTextStyle:
                      const TextStyle(color: Colors.white, fontSize: 13),
                  columns: const [
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('D')),
                    DataColumn(label: Text('L')),
                    DataColumn(label: Text('Ga')),
                    DataColumn(label: Text('Gd')),
                    DataColumn(label: Text('Pts')),
                  ],
                  rows: [
                    DataRow(
                        color: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 101, 101, 170)),
                        cells: [
                          DataCell(Image.asset('assets/Atletico.png')),
                          const DataCell(Text('2')),
                          const DataCell(Text('1')),
                          const DataCell(Text('6')),
                          const DataCell(Text('23')),
                          const DataCell(Text('38')),
                        ]),
                    DataRow(
                        color: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 101, 101, 170)),
                        cells: [
                          DataCell(Image.asset('assets/barcelona.png')),
                          const DataCell(Text('4')),
                          const DataCell(Text('3')),
                          const DataCell(Text('7')),
                          const DataCell(Text('15')),
                          const DataCell(Text('37')),
                        ]),
                    DataRow(
                        color: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 101, 101, 170)),
                        cells: [
                          DataCell(Image.asset('assets/realmadrid.png')),
                          const DataCell(Text('4')),
                          const DataCell(Text('4')),
                          const DataCell(Text('9')),
                          const DataCell(Text('20')),
                          const DataCell(Text('34')),
                        ]),
                    DataRow(
                        color: const MaterialStatePropertyAll(
                            Color.fromARGB(255, 101, 101, 170)),
                        cells: [
                          DataCell(Image.asset('assets/sevilla.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                    DataRow(
                        color: MaterialStatePropertyAll(Colors.red.shade600),
                        cells: [
                          DataCell(Image.asset('assets/juventus.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                    DataRow(
                        color: MaterialStatePropertyAll(Colors.red.shade600),
                        cells: [
                          DataCell(Image.asset('assets/chelsea.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                    DataRow(
                        color: MaterialStatePropertyAll(Colors.red.shade600),
                        cells: [
                          DataCell(Image.asset('assets/chelsea.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                    DataRow(
                        color: MaterialStatePropertyAll(Colors.red.shade600),
                        cells: [
                          DataCell(Image.asset('assets/chelsea.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                    DataRow(
                        color: MaterialStatePropertyAll(Colors.red.shade600),
                        cells: [
                          DataCell(Image.asset('assets/chelsea.png')),
                          const DataCell(Text('8')),
                          const DataCell(Text('2')),
                          const DataCell(Text('10')),
                          const DataCell(Text('16')),
                          const DataCell(Text('32')),
                        ]),
                  ]),
            ],
          ),
        ),
      ),
    );
  }
}
