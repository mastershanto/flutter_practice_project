import "package:flutter/material.dart";
import 'package:intl/intl.dart';


void main() {
  runApp(MyApp());
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

  int totalConsume=0;
  List<WaterTrack> consumeList=[];
TextEditingController _amountOfGlassTEController=TextEditingController(text: "1");
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Water Consume Tracker"),
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Water Tracker",style:Theme.of(context).textTheme.titleLarge,),
                Text("${consumeList.length}",style:Theme.of(context).textTheme.titleLarge),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 50,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        controller: _amountOfGlassTEController,
                        decoration: InputDecoration(
                          hintText: "Enter water....",
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(),
                        ),
                      ),
                    ),
                    SizedBox(width: 10,),
                    ElevatedButton(onPressed: (){
                      setState(() {
                        int amount=int.tryParse(_amountOfGlassTEController.text.trim())??1;
                        WaterTrack waterTrack=WaterTrack(time: DateTime.now(), nosOfGlass: amount);
                        consumeList.add(waterTrack);
                      });
                    }, child: Text("ADD")),
                    Text(""),
                  ],
                ),
                Expanded(
                  child: ListView.separated(
                      // scrollDirection: ,
                    // shrinkWrap: ,
                    // reverse: true,
                      itemBuilder: (context,index){
                    String formatted_DateTime=DateFormat("dd/MM/yyyy (HH:mm:ssa)").format(consumeList[index].time);
                    return ListTile(
                      leading: CircleAvatar(child: Text("${index+1}"),),
                      title: Text("${formatted_DateTime}"),
                      trailing: Text("${consumeList[index].nosOfGlass}"),
                    );
                  }, separatorBuilder: (context,index){
                    return Divider(height: 0,);
                  },   itemCount: consumeList.length),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
class WaterTrack{
final DateTime time;
final int nosOfGlass;
WaterTrack({required this.time,required this.nosOfGlass});

}