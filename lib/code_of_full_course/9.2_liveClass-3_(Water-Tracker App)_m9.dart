import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(builder: (context) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Water Tracker App",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> dateTime = [];
  int totalConsume = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Water Tracker Application"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(50),
        child: Column(
          children: [
            Text(
              "Total Consumed",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            Text(
              "${totalConsume}",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  totalConsume++;
                });
              },
              child: Text(
                "Add",
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
            Expanded(
                flex: 5,
                child: ListView.builder(
                    itemCount: 50,
                    itemBuilder: (context, index) {
                      return Card(
                        elevation: 20,
                          child: ListTile(
                            leading: CircleAvatar(
                              child: ClipOval(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO3lh5AYa46mVWLfp-jNv7fJW5AsXaWzYDsDJ1cWfX9w&s"))
                              /*  Text(
                                "${index + 1}"
                            ),*/
                            ),
                        title: Text("12:05AM 20-12-23"),
                      ));
                    }))
          ],
        ),
      ),
    ));
  }
}
