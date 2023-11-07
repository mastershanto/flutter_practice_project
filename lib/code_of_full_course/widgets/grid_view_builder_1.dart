import 'package:flutter/material.dart';

import 'my_items_1.dart';




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
