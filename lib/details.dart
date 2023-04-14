import 'package:flutter/material.dart';

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
  var sta = [1, 2, 3, 4, 5, 6, 7];
  var acc = [1, 2, 3, 4, 5, 6, 7];
  var fig = [1, 2, 3, 4, 5, 6, 7];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const ListTile(
          // leading: Text('8'),
          // title: Text('Shooting'),
          // trailing: Text('12'),
          );
    });
  }
}

class LineUp extends StatelessWidget {
  const LineUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
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
            const SizedBox(
              height: 15,
            ),
          ],
        ));
  }
}

class H2H extends StatelessWidget {
  const H2H({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
