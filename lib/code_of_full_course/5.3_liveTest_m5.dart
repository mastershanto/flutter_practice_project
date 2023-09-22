///TODO: https://github.com/mastershanto/flutter_practice_project/blob/flutter_liveTest_m5/lib/main.dart


/// Ajijul Hoque, LiveTest of Module-5, Flutter Batch-4, ostad.app;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'live_test_m5',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Profile",
            ),
            titleTextStyle: TextStyle(fontSize: 25, color: Colors.white),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.account_circle,
                  color: Colors.green,
                  size: 60,
                ),
                Text(
                  "Sheikh Ajijul Hoque (Shanto)",
                  style: TextStyle(fontSize: 25, color: Colors.green),
                ),
                Text(
                  "Flutter Batch-4",
                  style: TextStyle(fontSize: 20, color: Colors.blue),
                ),
              ],
            ),
          ),
        ));
  }
}