import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List images = [
    'assets/lampard.png',
    'assets/news.png',
    'assets/saka.png',
    'assets/lampard.png',
  ];
  List news = [
    'Roumor Has it: Lampard`s position under threat,.... ',
    'Arteta sees "natural leader" Tierney as a future,',
    'Athletic Bilbao to appoint Marcelino as coach until, ...',
    'Barcelona suffer too much late in games, says Ter Stegen'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff222232),
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 80, 10, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                    hintText: 'Search for news, teams, match etc....',
                    hintStyle:
                        const TextStyle(color: Colors.grey, fontSize: 17),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: const EdgeInsets.all(10),
                      leading: Image.asset(
                        images[index],
                        width: 120,
                        fit: BoxFit.fitWidth,
                      ),
                      title: Text(news[index],
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w800)),
                      subtitle: const Text(
                        '20 APRIL 2023',
                        style: TextStyle(
                            wordSpacing: 5,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                            fontSize: 15),
                      ),
                      trailing: const Icon(
                        Icons.bookmark,
                        color: Colors.grey,
                      ),
                    );
                  }),
              const Text(
                'Transfer News',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Stack(children: [
                      Image.asset(
                        'assets/liverpool.png',
                        width: 400,
                        height: 300,
                        fit: BoxFit.fitWidth,
                      ),
                      const Positioned(
                          bottom: 100,
                          child: Text(
                            'Arsenal vs Aston Villa Prediction',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 27,
                                fontWeight: FontWeight.bold),
                          ))
                    ]),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      'assets/news.png',
                      width: 400,
                      height: 300,
                      fit: BoxFit.fitWidth,
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
