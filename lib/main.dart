import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(DevicePreview(builder: (context){
    return LiveText_m10();
  }));
}

class LiveText_m10 extends StatelessWidget {
  const LiveText_m10({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "liveTest for Module-10",
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

  UpdateStatus(index, status) {
    setState(() {
      fruitsList[index]["status"] = status;
    });
  }

  int selectionCount=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Selection Screen'),
        ),
        body: ListView.separated(
          itemCount: fruitsList.length,
          itemBuilder: (context, index) {
            return ListTile(
              tileColor: fruitsList[index]["status"] == "Selected"
                  ? Colors.blue
                  : null,
              onTap: () {
                String fruitStatus =
                    fruitsList[index]["status"] == "" ? "Selected" : "";
                UpdateStatus(index, fruitStatus);
                if(fruitsList[index]["status"]=="Selected"){
                  selectionCount++;
                }else{
                  selectionCount--;
                }
              },
              leading: CircleAvatar(
                child: Text("${index + 1}"),
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
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text("Selected Items"),
                    content: Text("Number of selected items: ${selectionCount}"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Close"),
                      )
                    ],
                  );
                });
          },
          child: const Icon(
            Icons.check,
            size: 30,
          ),
        ),
      ),
    );
  }
}
