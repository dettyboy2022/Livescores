import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List icons = [Icons.person, Icons.mail, Icons.phone, Icons.location_city];
  List title = ['Name', 'Email', 'Phone', 'Address'];
  List subtitle = [
    'Charles Ayomide',
    'dettyboy@icloud.com',
    '+2349020551592',
    'Lagos, Nigeria'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF181829),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 80),
        child: Center(
            child: Column(
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/manchester.png'),
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Charles Ayomide',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text(
              '#GLORY GLORY Manchster 🔥',
              style: TextStyle(color: Colors.grey, fontSize: 16),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffF4A58A)),
                    onPressed: () {},
                    child: const Text('My Profile')),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {}, child: const Text('Activity')),
                const SizedBox(
                  width: 10,
                ),
                TextButton(onPressed: () {}, child: const Text('Settings'))
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: icons.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ListTile(
                        leading: Icon(
                          icons[index],
                          color: Colors.grey,
                        ),
                        title: Text(
                          title[index],
                          style: const TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w800),
                        ),
                        subtitle: Text(
                          subtitle[index],
                          style: const TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                        trailing: const Icon(
                          Icons.navigate_next,
                          color: Colors.white,
                        ),
                      ),
                      const Divider(
                        color: Colors.grey,
                        height: 10,
                        endIndent: 70,
                        indent: 70,
                        thickness: 1,
                      )
                    ],
                  );
                })
          ],
        )),
      ),
    );
  }
}
