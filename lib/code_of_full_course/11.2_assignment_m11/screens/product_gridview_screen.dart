
//Todo: 1(MediaQuery,
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{
  @override
  Widget build(BuildContext context) {
    Size size=MediaQuery.of(context).size;
    debugPrint(size as String?);
    return Scaffold();

  }

}