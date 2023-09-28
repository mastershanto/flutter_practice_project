import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (BuildContext context) {
      return MaterialApp(
        home: HomeScreen(),
      );
    });
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Text("Shanto"),
    );
  }
}
/*ResponsiveBuilder(
        builder: (context, sizeInformation) {
          return Center(
            child: Text(sizeInformation.deviceScreenType.toString()),
          );
        },
      ),*/
/*Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              child: Stack(
                children: [
                  Container(
              color: Colors.red,
                    width: 100,
                    height:100 ,
                  ),
                  Positioned(
                    left: 100,
                    bottom: 50,
                    child: Container(
                      color: Colors.amber,
                      width: 50,
                      height:50 ,
                    ),
                  ),
                  Positioned.fill(
                    right: 20,
                    bottom: 50,
                    child: Container(
                      color: Colors.purpleAccent,
                      width: 25,
                      height:25 ,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),*/
