import "package:flutter/material.dart";
import "package:flutter_practice_project/components/styles.dart";
import "package:responsive_builder/responsive_builder.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "TODO Application",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List my_TODO_Items = [];
  String item = "";

  @override
  Widget build(BuildContext context) {
    MyInputOnChange({InputValue}) {
      setState(() {
      item=InputValue;
      });
    }

    AddItems() {
      setState(() {
        my_TODO_Items.add({"item":item});
      });
    }

    RemoveItems(index){
      setState((){
        my_TODO_Items.removeAt(index);
      });
    }

    return ResponsiveBuilder(
      builder: (BuildContext context, SizingInformation sizingInformation) {
        return SafeArea(
          child: Scaffold(
            appBar: AppBar(
              title: Text("TODO Application"),
              centerTitle: true,
            ),
            body: Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 10,
                        child: TextFormField(onChanged: (content){
                          MyInputOnChange(InputValue: content);
                        }, decoration: AppInputStyle_1("Add your TODO"),),
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: () {AddItems();},style: AppButtonStyle_1(), child: Text("ADD"))
                    ],
                  ),
                  Expanded(
                    flex: 80,
                    child: ListView.builder(
                        itemCount: my_TODO_Items.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 20,
                            child: Padding(
                              padding:EdgeInsets.fromLTRB(20,10,20,10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${index+1}. ${my_TODO_Items[index]["item"]}"),
                                  TextButton(onPressed: () {RemoveItems(index);}, child: Icon(Icons.delete))
                                ],
                              ),
                            ),
                          );
                        }),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
