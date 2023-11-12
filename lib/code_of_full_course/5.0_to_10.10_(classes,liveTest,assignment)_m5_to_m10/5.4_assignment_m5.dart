///TODO: https://github.com/mastershanto/flutter_practice_project/blob/flutter_assignment_m5/lib/main.dart


/// Ajijul Hoque, Assignment of Module-5, Flutter Batch-4, ostad.app;

import 'package:flutter/material.dart';

void main() {
  runApp(Flutter_Assignment_M5());
}

class Flutter_Assignment_M5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "flutter_assignment_m5",
      home: HomeActivity(),
      // debugShowCheckedModeBanner: true,
    );
  }
}

class HomeActivity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            toolbarHeight: 100,
            elevation: 70,
            backgroundColor: Colors.green,
            foregroundColor: Colors.white,
            title: Text(
              "Home",
            ),
            titleTextStyle: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w900),
            centerTitle: true,
            leading: Icon(
              Icons.add_business,
              size: 18,
            ),
            actions: [
              Icon(
                Icons.search,
                size: 18,
              ),
              SizedBox(
                width: 13,
              ),
            ],
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "This is mod 5 Assignment",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15),
                ),
                RichText(
                  text: TextSpan(
                    style: TextStyle(fontSize: 20, color: Colors.orange),
                    children: [
                      TextSpan(
                          text: 'My ', style: TextStyle(color: Colors.red)),
                      TextSpan(
                          text: 'phone ',
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 10, /*fontWeight: FontWeight.bold*/
                          )),
                      TextSpan(
                          text: 'name ',
                          style: TextStyle(
                              color: Colors.purpleAccent,
                              fontSize: 14,
                              fontWeight: FontWeight.bold)),
                      TextSpan(
                        text: 'Your phone name',
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )),
    );
  }
}