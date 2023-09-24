///TODO: Ajijul Hoque, LiveTest for Module-7, Flutter Batch-4, ostad.app;

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Counter App",
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter App",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          centerTitle: false,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count:", style: TextStyle(fontSize: 25)),
              Text("$counter",
                  style: TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        int _increase = 0;
                        setState(() {
                          if (counter < 5) {
                            _increase++;
                            counter = counter + _increase;
                          } else {
                            showDialog(
                                context: context,
                                builder: (context) {
                                  return AlertDialog(
                                    title: Text(
                                      "Button pressed 5 times",
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    actions: [
                                      TextButton(
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text("Close"))
                                    ],
                                  );
                                });
                          }
                        });
                      },
                      child: Text("+", style: TextStyle(fontSize: 30))),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (counter > 0) {
                          setState(() {
                            counter = counter - 1;
                          });
                        }
                      },
                      child: Text("-", style: TextStyle(fontSize: 30))),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
