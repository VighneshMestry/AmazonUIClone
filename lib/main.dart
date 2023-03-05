import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding:
                const EdgeInsets.only(bottom: 10, left: 10, right: 10, top: 40),
            height: 115,
            color: Color.fromARGB(151, 76, 214, 227),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.,
              children: [
                Container(
                  // margin: const EdgeInsets.symmetric(vertical: 7),
                  height: 50,
                  width: 335,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(5)),
                      color: Colors.white,
                      border: Border.all(color: Colors.grey),
                      boxShadow: const [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(2, 2),
                            blurRadius: 2,)
                      ]),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 20,
                      ),
                      const Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search Amazon.in",
                        style: TextStyle(
                            color: Colors.grey.shade400, fontSize: 18),
                      ),
                      const SizedBox(width: 90),
                      const Icon(
                        Icons.qr_code_scanner,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Icon(
                  Icons.mic_none,
                  color: Colors.black,
                  size: 25,
                ),
              ],
            ),
          ),
          Container(
            height: 60,
            color: const Color.fromARGB(90, 150, 214, 214),
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                const Icon(
                  Icons.pin_drop,
                  color: Colors.black,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Deliver to Vighnesh - Mumbai 400042"),
                const SizedBox(
                  width: 10,
                ),
                Transform.rotate(
                  angle: 90 * math.pi / 180,
                  child: const Icon(Icons.arrow_forward_ios),
                ),
                // Icon(Icons.arrow_forward_ios_rounded, textDirection: )
              ],
            ),
          ),
          Container(
            height: 5,
            color: Colors.grey[400],
          )
        ],
      ),
    );
  }
}
