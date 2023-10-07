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
  List<dynamic> colorList = [Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.grey,];

  MyAlartDialog_1(context, {content, textSize_1}) {
    return showDialog(
        context: context,
        builder: (BuildContext Context) {
          return Expanded(
            child: AlertDialog(
              title: Text("Sized Quality!"),
              content: Text(content, style: textSize_1),
              actions: [
                TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("Ok")),
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
          padding: const EdgeInsets.all(10),
          child: Center(
            child: Wrap(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[0] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.orange,Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.grey,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 10, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Small Sized Button",
                            textSize_1: textSize_1);
                      },
                      child: Text("S")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[1] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.grey,Colors.orange,Colors.grey,Colors.grey,Colors.grey,Colors.grey,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Medium Sized Button",
                            textSize_1: textSize_1);
                      },
                      child: Text("M")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[2] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.grey,Colors.grey,Colors.orange,Colors.grey,Colors.grey,Colors.grey,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Large Sized Button",
                            textSize_1: textSize_1);
                      },
                      child: Text("L")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[3] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.grey,Colors.grey,Colors.grey,Colors.orange,Colors.grey,Colors.grey,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Extra Large Sized Button",
                            textSize_1: textSize_1);
                      },
                      child: Text("XL")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[4] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.orange,Colors.grey,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Double Extra Large Sized Button",
                            textSize_1: textSize_1);
                      },
                      child: Text("XXL")),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: colorList[5] ?? Colors.grey,
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                      ),
                      onPressed: () {
                        setState(() {
                          colorList = [Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.grey,Colors.orange,];
                        });
                        var textSize_1 = TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold);
                        MyAlartDialog_1(context,
                            content: "This is  Triple Extra Large Sized Button",
                            textSize_1: textSize_1);
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
