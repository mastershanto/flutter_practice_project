import 'package:flutter/material.dart';
import 'package:flutter_practice_project/widgets/alert_message_1.dart';
import 'package:flutter_practice_project/widgets/my_items_1.dart';
import 'package:flutter_practice_project/widgets/list_view_1.dart';
import 'package:flutter_practice_project/widgets/text_field.dart';


class ListViewSeparated_9 extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
   return ListView.separated(
       itemCount: MyItems_1().MyImages.length,
       separatorBuilder: (context,index){
         return Column(
           children: [
             Text("${MyItems_1().MyImages[index]["title"]}"),
             Divider(color: Colors.orange, thickness: 1,),
           ],
         );
       },
       itemBuilder: (context,indexNumber){
         return GestureDetector(
           onTap:(){AlartMessage_2().MySnackBar(MyItems_1().MyImages[indexNumber]["title"], context);},
           onDoubleTap:(){
             AlartMessage_2().MyAlartDialog1(context);

           },
           onLongPress: (){
           },

           child: Container(
             margin: EdgeInsets.all(5),
             width: double.infinity,
             height: 150,
             child: Image.network(MyItems_1().MyImages[indexNumber]["img"]!,fit: BoxFit.fill,),
           ),

         );
       });
  }
}