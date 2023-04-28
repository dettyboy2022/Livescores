import 'package:flutter/material.dart';
import 'package:sports/bottom_nav_pages/explore.dart';

class LaligaTab extends StatelessWidget {
  const LaligaTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      backgroundColor: const Color(0xFF181829),
      floatingActionButton: SizedBox(
        width: 300,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: const Color(0xffF4A58A),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          onPressed: () {},
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Read More',
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
              ),
              Icon(Icons.arrow_downward)
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                      child: ClipRRect(
                    borderRadius: const BorderRadius.vertical(
                        bottom: Radius.circular(20)),
                    child: Image.asset(
                      'assets/saks.png',
                      fit: BoxFit.cover,
                      height: 400,
                    ),
                  )),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                ' Arsenal vs Aston Villa\n prediction',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w700,
                    fontSize: 25),
              ),
              ListTile(
                  leading: Image.asset('assets/photo profile.png'),
                  title: const Text(
                    'Brian Imanuel',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  ),
                  subtitle: const Text(
                    'May 15, 2020',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey),
                  ),
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      Icon(
                        Icons.heat_pump_rounded,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '1403',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.comment,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        '976',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )),
              const Text(
                'Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Artetas side had already surrendered points to Liverpool, Manchester City and    Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Artetas side had already surrendered points to Liverpool, Manchester City and Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Artetas side had already surrendered points to Liverpool, Manchester City and    Arsenal will have to grind it out against Aston Villa if they are to register League wins. The match is scheduled for Sunday at the Emirates.The Gunners put forth a real statement of intent after their 1-0 win against Manchester United. Mikel Artetas side had already surrendered points to Liverpool, Manchester City and',
                style: TextStyle(
                    height: 1.5,
                    fontSize: 16,
                    letterSpacing: 0.65,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: (context) => const Explore()));
                  },
                  child: const Icon(
                    Icons.navigate_before,
                    color: Colors.white,
                    size: 40,
                  ),
                ),
                Image.asset('assets/share.png')
              ],
            ),
          ),
          Positioned(top: 130, right: 10, child: Image.asset('assets/save.png'))
        ]),
      ),
    );
  }
}
