import 'package:flutter/material.dart';

import 'grid_view_builder_1.dart';
import 'list_view_builder_1.dart';



class MyNavigator extends StatelessWidget {
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