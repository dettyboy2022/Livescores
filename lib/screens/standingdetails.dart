import 'package:flutter/material.dart';
import 'package:sports/models/standing_model.dart';

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
              DataTable(
                  dataRowMaxHeight: 75,
                  dividerThickness: 10,
                  headingTextStyle: const TextStyle(color: Colors.white),
                  dataTextStyle: const TextStyle(color: Colors.white),
                  horizontalMargin: 5,
                  columns: const [
                    DataColumn(label: Text('Team')),
                    DataColumn(label: Text('D')),
                    DataColumn(label: Text('L')),
                    DataColumn(label: Text('Ga')),
                    DataColumn(label: Text('Gd')),
                    DataColumn(label: Text('Pts')),
                  ],
                  rows: standingRows())
            ],
          ),
        ),
      ),
    );
  }

  List<DataRow> standingRows() {
    return spanish
        .map((e) => DataRow(cells: [
              DataCell(Image.asset(e.image)),
              DataCell(Text(e.draw.toString())),
              DataCell(Text(e.lose.toString())),
              DataCell(Text(e.against.toString())),
              DataCell(Text(e.difference.toString())),
              DataCell(Text(e.points.toString())),
            ]))
        .toList();
  }
}
