import 'package:flutter/material.dart';
import 'package:flutter_practice_project/widgets/alert_message_1.dart';
import 'package:flutter_practice_project/widgets/my_items_1.dart';
import 'package:flutter_practice_project/widgets/list_view_1.dart';
import 'package:flutter_practice_project/widgets/text_field.dart';
import 'package:flutter_practice_project/widgets/grid_view_builder_1.dart';


class ListViewBuilder_6 extends StatelessWidget {


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