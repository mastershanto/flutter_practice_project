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
      title: "LiveTest for Module-9",
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
  ButtonStyle MyButtonStyle_2(){
    return ElevatedButton.styleFrom(
      padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
      backgroundColor: Colors.orange,

    );
  }
  MyAlartDialog_1(context) {
    return showDialog(
        context: context,
        builder: (BuildContext Context) {
          return Expanded(
            child: AlertDialog(
              title: Text("Alart___!"),
              content: Text("Do you want to delete?"),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("No")),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Size Selector"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Wrap(
              children: [
                Container(padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                    style: MyButtonStyle_2(),
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("S")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("M")),
                ),
                Container(padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("L")),
                ),
                Container(padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("XL")),
                ),
                Container(padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("XXL")),
                ),
                Container(padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      onPressed: () {
                        MyAlartDialog_1(context);
                      },
                      child: Text("XXXL")),
                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}
