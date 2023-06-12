import 'package:flutter/material.dart';
import 'package:sports/utils/h2h.dart';
import 'package:sports/utils/lineup.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      appBar: AppBar(
        backgroundColor: const Color(0xFF181829),
        elevation: 0,
        title: const Text('UEFA Champions League'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Image.asset('assets/arsenal.png'),
            title: const Text(
              '2 - 3',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            trailing: Image.asset('assets/astonvilla.png'),
          ),
          const ListTile(
            leading: Text(
              'Arsenal',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            title: Text(
              '   90:00',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            trailing: Text(
              'Aston Villa',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const DetailsTab()
        ],
      ),
    );
  }
}

class DetailsTab extends StatefulWidget {
  const DetailsTab({super.key});

  @override
  State<DetailsTab> createState() => _DetailsTabState();
}

class _DetailsTabState extends State<DetailsTab> with TickerProviderStateMixin {
  late TabController tabControll;

  @override
  void initState() {
    tabControll = TabController(length: 3, vsync: this);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          unselectedLabelColor: Colors.grey,
          indicator: BoxDecoration(
              shape: BoxShape.rectangle,
              color: const Color(0xffF4A58A),
              borderRadius: BorderRadius.circular(25)),
          controller: tabControll,
          tabs: const [
            Tab(
              text: 'Match Detail',
            ),
            Tab(
              text: 'Line Up',
            ),
            Tab(
              text: 'H2H',
            ),
          ],
        ),
        SizedBox(
          height: 500,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TabBarView(
                controller: tabControll,
                children: const [Match(), LineUp(), H2H()]),
          ),
        ),
      ],
    );
  }
}

class Match extends StatefulWidget {
  const Match({super.key});

  @override
  State<Match> createState() => _MatchState();
}

class _MatchState extends State<Match> {
  var sta = ['8', '22', '42', '4', '8'];
  var acc = ['shooting', 'Attacks', 'Possesion', 'Cards', 'Corners'];
  var fig = ['12', '29', '58', '5', '7'];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          var stats = sta[index];
          var accs = acc[index];
          var figs = fig[index];

          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      stats,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      accs,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      figs,
                      style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    )
                  ],
                ),
              ),
            ],
          );
        });
  }
}
