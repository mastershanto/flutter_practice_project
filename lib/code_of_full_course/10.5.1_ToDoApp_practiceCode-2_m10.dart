import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ToDo App-3",
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
var selected="ToDo Status";
  List MyToDoList = [];
  String contentObject = "";

  ToDoItemInput(content) {
    setState(() {
      contentObject = content;
    });
  }

  AddMyToDo() {
    setState(() {
      MyToDoList.add({"ToDo": contentObject,"status":""});
    });
  }

  RemoveItemToDo(index) {
    setState(() {
      MyToDoList.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.cyan,
          title: Text("TODO App"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: ListView.separated(
            itemCount: MyToDoList.length,
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          content: Padding(
                            padding: const EdgeInsets.all(1.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Container(
                                  width: double.infinity,
                                  padding: EdgeInsets.symmetric(vertical: 3),
                                  alignment: Alignment.center,
                                  color: Colors.cyan,
                                  child: Text(
                                    "Action",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                                Card(
                                  child: Column(
                                    children: [
                                      ListTile(
                                        leading: Icon(Icons.edit),
                                        title: Text("Edit"),
                                      ),
                                      ListTile(
                                          leading: Icon(Icons.update),
                                          title: Column(
                                            children: [
                                              Text("${selected}"),
                                          Container(
                                          child: DropdownButton(
                                          onChanged: (val){
                                      setState(() {
                                      MyToDoList[index]["status"]=val.toString();
                                      });
                                      },
                                        items: [
                                          DropdownMenuItem(
                                            value: "Panding...",
                                            child: Text("Panding"),
                                          ),
                                          DropdownMenuItem(
                                            value: "In Progress",
                                            child: Text("In Progress"),
                                          ),
                                          DropdownMenuItem(
                                            value: "Completed",
                                            child: Text("Completed"),
                                          ),
                                        ],
                                      ),
                          ),
                                            ],
                                          ),

                                      ),

                                      ListTile(
                                        onTap: () {
                                          RemoveItemToDo(index);
                                          Navigator.pop(context);
                                        },
                                        leading: Icon(Icons.delete),
                                        title: Text("Delete"),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                },
                leading: Text("${index + 1}"),
                title: Text("${MyToDoList[index]["ToDo"]}"),
                trailing: Text("${selected}"),

              );
            },
            separatorBuilder: (context, index) {
              return Divider(
                height: 0,
              );
            },
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              width: double.infinity,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.cyan,
                                borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(50),
                                  bottomLeft: Radius.circular(50),
                                ),
                              ),
                              child: Text("ADD NEW TODO",
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black)),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            TextFormField(
                              validator: (String? value) {
                                if (value?.isEmpty ?? true) {
                                  return "Enter the valid value";
                                }
                                return null;
                              },
                              onChanged: (content) {
                                ToDoItemInput(content);
                              },
                              maxLines: 4,
                              decoration: InputDecoration(
                                label: Text("Add your ToDo..."),
                                labelStyle: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                                hintText: "Enter your ToDo",
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.cyan,
                                    width: 2,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              width: double.infinity,
                              child: ElevatedButton(
                                onPressed: () {
                                  AddMyToDo();
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(5.0),
                                  child: Text(
                                    "ADD TODO",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50)),
                                  backgroundColor: Colors.cyan,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Positioned(
                        right: 0,
                        top: 0,
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.cancel,
                              color: Colors.red,
                              size: 30,
                            )),
                      )
                    ],
                  );
                });
          },
          child: Icon(
            Icons.add,
          ),
          backgroundColor: Colors.brown,
        ),
      ),
    );
  }
}
