import "package:flutter/material.dart";
import "package:flutter_practice_project/code_of_full_course/9.9_waterTrackerApp/components/custom_style_p1.dart";
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
  List myTodoItems = [];
  String item = "";

  @override
  Widget build(BuildContext context) {
    myInputOnChange({InputValue}) {
      setState(() {
      item=InputValue;
      });
    }

    AddItems() {
      setState(() {
        myTodoItems.add({"item":item});
      });
    }

    RemoveItems(index){
      setState((){
        myTodoItems.removeAt(index);
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
                          myInputOnChange(InputValue: content);
                        }, decoration: textFormFieldGeneralStyle(labelText: "Add your TODO"),),
                      ),
                      SizedBox(width: 10,),
                      ElevatedButton(onPressed: () {AddItems();},style: elevatedButtonGeneralStyle(context: context), child: Text("ADD"))
                    ],
                  ),
                  Expanded(
                    flex: 80,
                    child: ListView.builder(
                        itemCount: myTodoItems.length,
                        itemBuilder: (context, index) {
                          return Card(
                            elevation: 20,
                            child: Padding(
                              padding:EdgeInsets.fromLTRB(20,10,20,10),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("${index+1}. ${myTodoItems[index]["item"]}"),
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
