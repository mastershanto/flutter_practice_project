import 'package:flutter/material.dart';

import 'alert_message_1.dart';
import 'grid_view_builder_1.dart';
import 'my_items_1.dart';


class ListViewBuilder_6 extends StatelessWidget {
  const ListViewBuilder_6({super.key});



  @override
  Widget build(BuildContext context) {
   return ListView.builder(
       itemCount: MyItems_1().MyImages.length,
       itemBuilder: (context,indexNumber){
         return GestureDetector(
           onTap:(){AlartMessage_2().MySnackBar(MyItems_1().MyImages[indexNumber]["title"], context);},
           onDoubleTap:(){
             AlartMessage_2().MyAlartDialog1(context);

           },
           onLongPress: (){
           },

           child: Container(
             margin: EdgeInsets.all(10),
             width: double.infinity,
             height: 250,
             child:Column(
               children: [
                 ElevatedButton(onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=> GridViewBuilder_7()));
                 }, child: Text("Back to GrideViewBuilder")),
                 Text("${MyItems_1().MyImages[indexNumber]["title"]}"),
                 Image.network(MyItems_1().MyImages[indexNumber]["img"]!,fit: BoxFit.fill,)
               ],
             ) ,
           ),

         );
       });
  }
}