import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

/// Todo_Application
/// CRUD - Create, Read, Update, Delete

void main() {
  runApp(const TodoApp());
}

class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}


//Home Screen Added

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List<Todo> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Todos'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNewTaskModal(
                onAddTap: (Todo task) {
                  addTodo(task);
                },
              );
            },
          );
        },
        child: const Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          final Todo todo = todoList[index];
          final String formattedDate =
          DateFormat('hh:mm a dd-MM-yy').format(todo.createdDateTime);
          return ListTile(
            tileColor: todo.status == 'done' ? Colors.grey : null, // ternary
            onTap: () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Actions'),
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          ListTile(
                            leading: const Icon(Icons.edit),
                            title: const Text('Update'),
                            onTap: () {
                              Navigator.pop(context);
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return UpdateTaskModal(
                                      todo: todo,
                                      onTodoUpdate: (String updatedDetailsText) {
                                        updateTodo(index, updatedDetailsText);
                                      },
                                    );
                                  });
                            },
                          ),
                          const Divider(
                            height: 0,
                          ),
                          ListTile(
                            leading: const Icon(Icons.delete_outline),
                            title: const Text('Delete'),
                            onTap: () {
                              deleteTodo(index);
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      ),
                    );
                  });
            },
            onLongPress: () {
              String currentStatus = todo.status == 'pending' ? 'done' : 'pending';
              updateTodoStatus(index, currentStatus);
            },
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(todo.details),
            subtitle: Text(formattedDate),
            trailing: Text(todo.status.toUpperCase()),
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            height: 4,
          );
        },
      ),
    );
  }

  void addTodo(Todo todo) {
    todoList.add(todo);
    setState(() {});
  }

  void deleteTodo(int index) {
    todoList.removeAt(index);
    setState(() {});
  }

  void updateTodo(int index, String todoDetails) {
    todoList[index].details = todoDetails;
    setState(() {});
  }

  void updateTodoStatus(int index, String status) {
    todoList[index].status = status;
    setState(() {});
  }
}



class Todo {
  String details;
  DateTime createdDateTime, updatedDateTime;
  String status;

  Todo({
    required this.details,
    required this.createdDateTime,
    required this.updatedDateTime,
    this.status = 'pending',
  });
}


class AddNewTaskModal extends StatefulWidget {
  const AddNewTaskModal({
    super.key,
    required this.onAddTap,
  });

  final Function(Todo) onAddTap;

  @override
  State<AddNewTaskModal> createState() => _AddNewTaskModalState();
}

class _AddNewTaskModalState extends State<AddNewTaskModal> {
  final TextEditingController todoTEController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Add new todo',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            TextFormField(
              maxLines: 4,
              controller: todoTEController,
              decoration: const InputDecoration(
                hintText: 'Enter your todo here',
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(),
              ),
              validator: (String? value) {
                if (value?.isEmpty ?? true) {
                  return 'Enter a value';
                }
                return null;
              },
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Todo todo = Todo(details: todoTEController.text.trim(),
                        createdDateTime: DateTime.now(),
                        updatedDateTime: DateTime.now(),
                      );
                      widget.onAddTap(todo);
                      Navigator.pop(context);
                    }
                  },
                  child: const Text('Add'),
                ))
          ],
        ),
      ),
    );
  }
}

class UpdateTaskModal extends StatefulWidget {
  const UpdateTaskModal({
    super.key,
    required this.todo,
    required this.onTodoUpdate
  });

  final Todo todo;
  final Function(String) onTodoUpdate;

  @override
  State<UpdateTaskModal> createState() => _UpdateTaskModalState();
}

class _UpdateTaskModalState extends State<UpdateTaskModal> {
  late TextEditingController todoTEController;

  @override
  void initState() {
    super.initState();
    todoTEController = TextEditingController(text: widget.todo.details);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Update todo',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),
          const SizedBox(
            height: 24,
          ),
          TextFormField(
            controller: todoTEController,
            maxLines: 4,
            decoration: const InputDecoration(
              hintText: 'Enter your todo here',
              enabledBorder: OutlineInputBorder(),
              focusedBorder: OutlineInputBorder(),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  widget.onTodoUpdate(todoTEController.text.trim());
                  Navigator.pop(context);
                },
                child: const Text('Update'),
              ))
        ],
      ),
    );
  }
}

