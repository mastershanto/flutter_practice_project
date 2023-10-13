import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}

//Home Screen Added

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, dynamic>> fruitsList = [
    {"fruit": "Apple", "status": ""},
    {"fruit": "Banana", "status": ""},
    {"fruit": "Cherry", "status": ""},
    {"fruit": "Elderberry", "status": ""},
    {"fruit": "Fig", "status": ""},
    {"fruit": "Grapes", "status": ""},
    {"fruit": "Honeydew Melon", "status": ""},
    {"fruit": "Kiwi", "status": ""},
    {"fruit": "Lemon", "status": ""},
    {"fruit": "Mango", "status": ""},
    {"fruit": "Nectarine", "status": ""},
    {"fruit": "Orange", "status": ""},
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Selection Screen'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        body: ListView.separated(
          itemCount: fruitsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              leading: CircleAvatar(
                child: Text("$index"),
              ),
              title: Text("${fruitsList[index]["fruit"]}"),
              trailing: Text("${fruitsList[index]["status"]}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider(
              height: 4,
            );
          },
        ),
      ),
    );
  }
}
