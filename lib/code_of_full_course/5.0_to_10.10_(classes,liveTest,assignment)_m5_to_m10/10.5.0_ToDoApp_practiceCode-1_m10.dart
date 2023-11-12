/// ToDo Application
/// CRUD -> Create, Read, Update, Delete

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "ToDo App-2",
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
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text("ToDo Application"),
        centerTitle: true,
      ),
      body: Center(
        child: ListView.separated(
            itemBuilder: (context, index) {
              return ListTile(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("Action"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(Icons.edit),
                                title: Text("Edit"),
                                onTap: (){
                                  //TODO: Update this item
                                },
                              ),
                              const Divider(
                                height: 0,
                              ),
                              ListTile(
                                onTap: (){
                                  //TODO: Delete this item
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
                title: const Text("masterShanto"),
                subtitle: const Text("20/08/2023"),
                trailing: const Text("Pending..."),
              );
            },
            separatorBuilder: (context, index) {
              return const Divider(
                height: 0,
              );
            },
            itemCount: 20),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return const AddTaskModal();
              });
        },
        child: const Icon(Icons.add),
        autofocus: true,
      ),
    ));
  }
}

class AddTaskModal extends StatelessWidget {
  const AddTaskModal({
    super.key,
  });

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
              Text("ADD TODO",
                  style: Theme.of(context).textTheme.titleLarge),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.cancel),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
                label: Text("Add TODO"),
                hintText: "Enter your TODO here",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Add TODO",
                  style: TextStyle(fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple),
              ))
        ],
      ),
    );
  }
}
class UpdateTaskModal extends StatelessWidget {
  const UpdateTaskModal({
    super.key,
  });

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
              Text("ADD TODO",
                  style: Theme.of(context).textTheme.titleLarge),
              IconButton(onPressed: (){
                Navigator.pop(context);
              }, icon: Icon(Icons.cancel),
              )
            ],
          ),
          const SizedBox(
            height: 16,
          ),
          TextFormField(
            maxLines: 4,
            decoration: const InputDecoration(
                label: Text("Add TODO"),
                hintText: "Enter your TODO here",
                border: OutlineInputBorder(),
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder()),
          ),
          const SizedBox(
            height: 16,
          ),
          SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  "Add TODO",
                  style: TextStyle(fontSize: 30),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple),
              ))
        ],
      ),
    );
  }
}
