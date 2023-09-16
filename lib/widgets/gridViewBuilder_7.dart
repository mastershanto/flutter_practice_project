import 'package:flutter/material.dart';
import 'package:flutter_practice_project/widgets/alartMessage_2.dart';
import 'package:flutter_practice_project/widgets/myItems_1.dart';
import 'package:flutter_practice_project/widgets/listView_3.dart';
import 'package:flutter_practice_project/widgets/textField_4.dart';

class GridViewBuilder_7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        thickness: 20,
        radius: Radius.circular(15),
        child: GridView.builder(
            itemCount: MyItems_1().MyImages.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            itemBuilder: (context, index) {
              return Column(
                children: [  ElevatedButton(onPressed: (){
                  Navigator.pop(context);
                }, child: Text("Back to Home")),

                  Text("${MyItems_1().MyImages[index]["title"].toString()}"),
                  Image.network(MyItems_1().MyImages[index]["img"]!),
                ],
              );
            }));
  }
}
