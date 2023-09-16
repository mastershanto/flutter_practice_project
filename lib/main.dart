/// Ajijul Hoque, live Test for Module-6, Flutter Batch-4, ostad.app;

import 'package:flutter/material.dart';

void main() {
  runApp(LiveTest_M6());
}

class LiveTest_M6 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      title: 'flutter liveText module-6',
    );
  }
}

class HomeScreen extends StatelessWidget {

 final myItemList = ["Apples", "Bananas", "Bread", "Milk", "Eggs"];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: Text('My Shopping List'),
        titleTextStyle: TextStyle(fontSize: 30, color: Colors.white),
        actions: [
          Icon(
            Icons.shopping_cart,
            color: Colors.white,
            size: 40,
          ),
          SizedBox(
            width: 25,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
            itemCount: myItemList.length,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.shopping_basket_sharp),
                    title: Text("${myItemList[index]}"),
                  )
                ],
              );
            }),
      ),
    );
  }
}
