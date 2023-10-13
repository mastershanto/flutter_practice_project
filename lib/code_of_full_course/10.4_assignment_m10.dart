import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


void main(){
  runApp(DevicePreview(builder: (BuildContext context) { return MyApp();},));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "flutter_assignment_m10",
      home:HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: const Text("CRUD",style:TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.black),),
        actions: const [Padding(
          padding: EdgeInsets.only(right: 30),
          child: Icon(Icons.search,size: 25,color: Colors.cyan,),
        )],
        backgroundColor: Colors.white,
      ),
      body:Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Items:", style: TextStyle(fontSize: 30,color: Colors.grey),),
          Row(
            children: [
              TextFormField(

                decoration: const InputDecoration(
                  hintText: "Write you doto",
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(),
                ),
              ),
              ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ), child: const Text("Add"),),
            ],
          ),
          /*Container(
              child: ListView.separated(itemBuilder: (context,index){
                return ListTile(
                  leading: CircleAvatar(child: Text("$index"),),
                  title: const Text("masterShanto"),
                  trailing: const Icon(Icons.arrow_right,size: 20,),
                );
              }, separatorBuilder: (context,index){
                return const Divider(height: 0,);
              }, itemCount: 50)
          )*/
        ],
      )) ,

    ));
  }
}

