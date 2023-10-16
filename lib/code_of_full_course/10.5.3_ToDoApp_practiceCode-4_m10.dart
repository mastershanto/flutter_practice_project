///Todo: Completing Project has been done

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Todos-4",
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
  List<Todo> todoList = [];

  addTodo(Todo todo) {
    setState(() {
      todoList.add(todo);
    });
  }

  deleteTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  updateTodo(int index, String todoDetails) {
    // todoList.firstWhere((todo) => todo);
    setState(() {
      todoList[index].todoDetails = todoDetails;
    });
  }

  updateStatus(int index, String todoStatus) {
    // todoList.firstWhere((todo) => todo);
    setState(() {
      todoList[index].todoStatus = todoStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text(
                "Todo_4",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return NewTodoModal(
                        onAddTab: (todo) {
                          addTodo(todo);
                        },
                      );
                    });
              },
              child: Icon(Icons.add),
            ),
            body: Padding(
              padding: const EdgeInsets.all(2.0),
              child: ListView.separated(
                itemCount: todoList.length,
                itemBuilder: (context, index) {
                  Todo todoBuilder = todoList[index];
                  String formattedDateTime = DateFormat("dd-MM-yyyy, hh:mma")
                      .format(todoBuilder.createdTime);

                  return ListTile(
                    tileColor: todoBuilder.todoStatus=="Done"?Colors.grey:Colors.white,
                    onTap: () {
                      showDialog(
                          context: context,
                          builder: (context) {

                            return AlertDialog(
                              title: Container(
                                alignment: Alignment.center,
                                child: Text(
                                  "Action",
                                  style:
                                      Theme.of(context).textTheme.headlineLarge,
                                ),
                              ),
                              alignment: Alignment.center,
                              content: Container(
                                padding: EdgeInsets.all(16),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ListTile(
                                      onTap: () {
                                        showModalBottomSheet(context: context, builder: (context){
                                          return UpdateTodoModal(todo: todoBuilder,onTodoUpdateTab:(String todoDetails){
                                            updateTodo(index, todoDetails);
                                          });});
                                      },
                                      leading: Icon(Icons.edit),
                                      title: Text("Edit Todo"),
                                    ),
                                    ListTile(
                                      onTap: () {
                                        deleteTodo(index);
                                        Navigator.pop(context);
                                      },
                                      leading: Icon(Icons.delete),
                                      title: Text("Delete"),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          });
                    },
                    onLongPress: () {
                      String currentStatus= todoBuilder.todoStatus == "Pending..."
                          ? "Done"
                          : "Pending...";
                      updateStatus(index, currentStatus);
                    },
                    title: Text(todoList[index].todoDetails),
                    subtitle: Text(formattedDateTime),
                    trailing: Text(todoList[index].todoStatus),

                  );
                },
                separatorBuilder: (context, index) {
                  return Divider(
                    height: 0,
                  );
                },
              ),
            )));
  }
}

class NewTodoModal extends StatefulWidget {
  NewTodoModal({
    super.key,
    required this.onAddTab,
  });

  Function(Todo) onAddTab;

  @override
  State<NewTodoModal> createState() => _NewTodoModalState();
}

class _NewTodoModalState extends State<NewTodoModal> {
  TextEditingController _todoTEController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Form(
        key: _globalKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "ADD TODO",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 30,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _todoTEController,
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return "Input value value!";
                }
                return null;
              },
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Add you todo here...",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  if (_globalKey.currentState!.validate()) {
                    widget.onAddTab(Todo(
                        todoDetails: _todoTEController.text.trim(),
                        createdTime: DateTime.now(),
                        updatedTime: DateTime.now()));
                  }
                },
                child: Text("Add Todo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Todo {
  String todoDetails;
  DateTime createdTime, updatedTime;
  String todoStatus;

  Todo(
      {required this.todoDetails,
      required this.createdTime,
      required this.updatedTime,
      this.todoStatus = "Pending..."});
}

class UpdateTodoModal extends StatefulWidget {
  UpdateTodoModal(
      {super.key, required this.todo, required this.onTodoUpdateTab});

  final Todo todo;
  Function(String) onTodoUpdateTab;

  @override
  State<UpdateTodoModal> createState() => _UpdateTodoModalState();
}

class _UpdateTodoModalState extends State<UpdateTodoModal> {
  late final TextEditingController _todoTEController_Update;

  @override
  void initState() {
    super.initState();
    _todoTEController_Update =
        TextEditingController(text: widget.todo.todoDetails);
  }

  GlobalKey<FormState> _globalKey_Update = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.white,
      child: Form(
        key: _globalKey_Update,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "UPDATE TODO",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.cancel,
                        color: Colors.red,
                        size: 30,
                      ),
                    )),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _todoTEController_Update,
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return "Input valid value!";
                }
                return null;
              },
              maxLines: 4,
              decoration: InputDecoration(
                  hintText: "Update your todo here...",
                  focusedBorder: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder()),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  if (_globalKey_Update.currentState!.validate()) {
                    widget.onTodoUpdateTab(_todoTEController_Update.text.trim());
                  }
                },
                child: Text("Update Todo"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
