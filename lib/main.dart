import 'package:flutter/material.dart';

import 'screen2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sports',
      theme: ThemeData(
        // fontFamily: 'RobotoCondensed',
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Sports'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFF181829),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(30, 100, 30, 0),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset('assets/coverPicture.png'),
                const SizedBox(
                  height: 60,
                ),
                const Text(
                  ' Discover all\n about sports',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  ' Search millions of jobs and get the \n inside scoop on companies.\n Wait for what? Lets get start it!',
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    Expanded(
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                minimumSize: const Size(0, 50),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15)),
                                backgroundColor: const Color(0xff246BFD)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const PageInterest()));
                            },
                            child: const Text(
                              'Sign In',
                              style: TextStyle(
                                  fontWeight: FontWeight.w400, fontSize: 18),
                            ))),
                    const SizedBox(
                      width: 40,
                    ),
                    TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              context: context,
                              backgroundColor: const Color(0xff222232),
                              shape: const RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(30),
                                      topRight: Radius.circular(30))),
                              builder: ((context) {
                                return Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: Colors.grey),
                                            height: 5,
                                            width: 70,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const Text(
                                        'Welcome',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 35,
                                            color: Colors.white),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const TextField(
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            prefixIcon: Icon(
                                              Icons.email,
                                              color: Colors.grey,
                                            ),
                                            hintText: 'Email',
                                            hintStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                      const TextField(
                                        obscureText: true,
                                        decoration: InputDecoration(
                                            border: OutlineInputBorder(),
                                            suffixIcon: Icon(
                                              Icons.remove_red_eye_sharp,
                                              color: Colors.grey,
                                            ),
                                            prefixIcon: Icon(
                                              Icons.key,
                                              color: Colors.grey,
                                            ),
                                            hintText: 'Password',
                                            hintStyle:
                                                TextStyle(color: Colors.grey)),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Flexible(
                                            child: CheckboxListTile(
                                                activeColor: Colors.blue,
                                                title: const Text(
                                                  'Remember Me',
                                                  style: TextStyle(
                                                      color: Colors.grey),
                                                ),
                                                controlAffinity:
                                                    ListTileControlAffinity
                                                        .leading,
                                                value: isChecked,
                                                onChanged: (value) {
                                                  setState(() {
                                                    isChecked = value!;
                                                  });
                                                }),
                                          ),
                                          const Text(
                                            'Forgot Password',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 14),
                                          )
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Expanded(
                                              child: ElevatedButton(
                                                  style: ElevatedButton.styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          10)),
                                                      minimumSize:
                                                          const Size(0, 50),
                                                      backgroundColor:
                                                          const Color(
                                                              0xff246BFD)),
                                                  onPressed: () {},
                                                  child: const Text(
                                                    'SIgn In',
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        fontSize: 17),
                                                  )))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      const Center(
                                          child: Text(
                                        ' Dont have an account? Sign Up',
                                        style: TextStyle(
                                            color: Colors.grey,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 18),
                                      ))
                                    ],
                                  ),
                                );
                              }));
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 17),
                        )),
                  ],
                )
              ],
            ),
          ),
        )
        // This trailing comma makes auto-formatting nicer for build methods.
        );
  }

  bool isChecked = false;
}
