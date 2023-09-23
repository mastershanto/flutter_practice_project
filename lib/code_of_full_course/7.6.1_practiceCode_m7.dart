import 'package:flutter/material.dart';
import 'package:flutter_practice_project/components/styles.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Basic Navigator Activities',
    );
  }
}

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Column(
        children: [
          Switch(
            value: true,
            onChanged: (bool value) {},
          ),
          ElevatedButton(
              onPressed: () {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Alert!"),
                        content: Text("You are in danger!"),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("Cencel")),
                          TextButton(onPressed: () {}, child: Text("Okey")),
                        ],
                      );
                    });
              },
              child: Text("Show Dialog")),
          ElevatedButton(
              onPressed: () {
                showAboutDialog(
                    context: context,
                    applicationName: "myApplication",
                    applicationVersion: "10.01.26",
                    children: [
                      Text("This is for my working about to this work w"),
                    ]);
              },
              child: Text("Show about")),
          ElevatedButton(
              onPressed: () {
                showModalBottomSheet(
                    isDismissible: false,
                    barrierColor: Colors.green,
                    backgroundColor: Colors.yellow,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50),
                      ),
                    ),
                    context: context,
                    builder: (context) {
                      return Column(
                        children: [
                          Center(
                            child: Text("This is  our BottomSheet"),
                          ),
                        ],
                      );
                    });
              },
              child: Text("Show Bottom Sheet")),
        ],
      ),
    );
  }
}
