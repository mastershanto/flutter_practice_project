/*
final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('yyyy-MM-dd');
final String formatted = formatter.format(now);
print(formatted); // something like 2013-04-20
  */


import 'package:flutter/material.dart';
import 'package:flutter_practice_project/widgets/alartMessage_2.dart';
import 'package:flutter_practice_project/widgets/listViewSeparated_9.dart';
import 'package:flutter_practice_project/widgets/myAppBar_8.dart';
import 'package:flutter_practice_project/widgets/gridViewBuilder_7.dart';
import 'package:flutter_practice_project/widgets/listViewBuilder_6.dart';
import 'package:flutter_practice_project/widgets/myItems_1.dart';
import 'package:flutter_practice_project/widgets/listView_3.dart';
import 'package:flutter_practice_project/widgets/navigator_5.dart';
import 'package:flutter_practice_project/widgets/textField_4.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'masterShanto App',
    );
  }
}

class HomeScreen extends StatelessWidget {

  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text('Home'),
        leading: Icon(
          Icons.add_business,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: /*ListViewBuilder_6()*/
      /*GridViewBuilder_7()*/
      /*ListViewSeparated_9()*/
      My_Navigator_5()

    );
  }
}
