import 'package:device_preview/device_preview.dart';
import "package:flutter/material.dart";
import 'package:intl/intl.dart';
import 'package:flutter_practice_project/code_of_full_course/waterTracker_Project/components/customStyle_p1.dart';

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
      title: "Water Tracker Application",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int totalConsume = 0;
  List<WaterTrack> consumeList = [];
  TextEditingController _amountOfGlassTEController =
      TextEditingController(text: "1");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "WATER TRACKER",
            style:
                appBarTitleMedium(context, color: Colors.yellow, sizeRatio: 30),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Water Tracker",
                  style: bodyTitleMedium(context),
                ),
                Divider(
                  height: 5,
                ),
                TextFormField(
                  decoration: textFormFieldCircularStyle(labelText: "Email"),
                ),
                Divider(
                  height: 5,
                ),
                TextFormField(
                  decoration:
                      textFormFieldRectangularStyle(labelText: "Password"),
                ),
                Divider(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonCircularStyle(context: context),
                  child: Container(
                    // padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TRACK",/*style: bodyHeadlineSmall(context,color: Colors.green),*/
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonGeneralStyle(context: context),
                  child: Container(
                    // padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TRACK",/*style: bodyHeadlineSmall(context,color: Colors.green),*/
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: elevatedButtonRectangularStyle(context: context),
                  child: Container(
                    // padding: const EdgeInsets.all(8.0),
                    child: Text(
                      "TRACK",/*style: bodyHeadlineSmall(context,color: Colors.green),*/
                    ),
                  ),
                ),
                Divider(
                  height: 5,
                ),
                Text("${consumeList.length}", style: bodyTextExtraSmall(context,sizeRatio: 50)),
                Divider(
                  height: 5,
                ),
                Text("${consumeList.length}", style: bodyTitleMedium(context)),
                Divider(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _amountOfGlassTEController,
                        decoration: textFormFieldRectangularStyle()
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      style: elevatedButtonCircularStyle(context: context),
                        onPressed: () {
                          setState(() {
                            int amount = int.tryParse(
                                    _amountOfGlassTEController.text.trim()) ??
                                1;
                            WaterTrack waterTrack = WaterTrack(
                                time: DateTime.now(), nosOfGlass: amount);
                            consumeList.add(waterTrack);
                          });
                        },
                        child: Text("ADD")),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                      // scrollDirection: ,
                      // shrinkWrap: ,
                      // reverse: true,
                      itemBuilder: (context, index) {
                        String formatted_DateTime =
                            DateFormat("dd/MM/yyyy (HH:mm:ssa)")
                                .format(consumeList[index].time);
                        return ListTile(
                          leading: CircleAvatar(
                            child: Text("${index + 1}"),
                          ),
                          title: Text("${formatted_DateTime}"),
                          trailing: Text("${consumeList[index].nosOfGlass}"),
                        );
                      },
                      separatorBuilder: (context, index) {
                        return Divider(
                          height: 0,
                        );
                      },
                      itemCount: consumeList.length),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class WaterTrack {
  final DateTime time;
  final int nosOfGlass;

  WaterTrack({required this.time, required this.nosOfGlass});
}
