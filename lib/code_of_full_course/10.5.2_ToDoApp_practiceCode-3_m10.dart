/// ToDo Application [Uncompleted];
/// CRUD -> Create, Read, Update, Delete

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Todo App Class-2",
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
  List todoList = [];

  ///By importing To_do Class for adding attribute from to_do class
  void addTodo(Todo todo) {
    setState(() {
      todoList.add(todo);
    });
  }

  /// Index Gotten from ListView.Separated for Removing Data
  void deleteTodo(int index) {
    setState(() {
      todoList.removeAt(index);
    });
  }

  /// Index from Update under ListView.builder and todoDetails from Update under TextFormField
  void updateTodo(int index, String todoDetails) {
    todoList[index].details = todoDetails;
  }

  /// index from main ListView.separated and todoStatus from TodoList[] from To_do Class
  void updateTodoStatus(int index, String todoStatus) {
    todoList[index].details = todoStatus;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("Todo App-2"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
          itemCount: todoList.length,
          itemBuilder: (context, index) {
            final Todo todoBuilder = todoList[index];
            final String formattedDate = DateFormat("hh:mm a dd-MM-yyyy").format(todoBuilder.createdTime);
            return ListTile(
              tileColor:
                  todoBuilder.todoStatus == "done" ? Colors.yellow : null,
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text("Actions"),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ListTile(
                              leading: Icon(Icons.edit),
                              title: Text("Edit"),
                              onTap: () {
                                Navigator.pop(context);

                                    }
                            ),
                            const Divider(
                              height: 0,
                            ),
                            ListTile(
                                onTap: () {
                                  deleteTodo(index);
                                  Navigator.pop(context);
                                },
                                leading: Icon(Icons.delete),
                                title: Text("Delete")),
                          ],
                        ),
                      );
                    });
              },
              leading: CircleAvatar(
                child: Text("${index + 1}"),
              ),
              title: Text(todoBuilder.todoDetails),
              subtitle: Text(formattedDate),
              trailing: Text("Pending..."),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
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
                return AddTaskModal_2(
                  onAddTap: (Todo task) {
                    addTodo(task);
                  },
                );
              });
        },
        child: const Icon(Icons.add),
        autofocus: true,
      ),
    ));
  }
}

class AddTaskModal_2 extends StatefulWidget {
  AddTaskModal_2({
    super.key,
    required this.onAddTap,
  });

  Function(Todo) onAddTap;

  @override
  State<AddTaskModal_2> createState() => _AddTaskModal_2State();
}

class _AddTaskModal_2State extends State<AddTaskModal_2> {
  TextEditingController _todoTEController = TextEditingController();
  GlobalKey<FormState> _todoGlobalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _todoGlobalKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("ADD TODO", style: Theme.of(context).textTheme.titleLarge),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.cancel),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: _todoTEController,
              validator: (String? content) {
                if (content?.isEmpty ?? true) {
                  return "Enter the valid value";
                }
                return null;
              },
              maxLines: 4,
              decoration: const InputDecoration(
                  // label: Text("Add Toto"),
                  hintText: "Enter your todo here.....",
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder()),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_todoGlobalKey.currentState!.validate()) {
                      Todo todo = Todo(
                          todoDetails: _todoTEController.text.trim(),
                          createdTime: DateTime.now(),
                          updatedTime: DateTime.now());
                      widget.onAddTap(todo); /// We used "widget.onAddTap" because "onAddTap" function contain the addNewTask_2.. not "_addNewTask_2State
                    }
                    Navigator.pop(context);
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: const Text(
                      "Add TODO",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(),
                ))
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
      this.todoStatus = "Pending"});
}
