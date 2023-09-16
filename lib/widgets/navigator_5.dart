import 'package:flutter/material.dart';
import 'package:flutter_practice_project/widgets/listViewBuilder_6.dart';
import 'package:flutter_practice_project/widgets/gridViewBuilder_7.dart';
class My_Navigator_5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("HomeScreen"),
        ElevatedButton(onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => ListViewBuilder_6()));
        }, child: Text("Go to ListViewBuilder_6")),
        ElevatedButton(onPressed: (){
          Navigator.push(context,MaterialPageRoute(builder: (context)=> GridViewBuilder_7()));
        }, child: Text("Back to GrideViewBuilder")),

      ],
    );
  }

}