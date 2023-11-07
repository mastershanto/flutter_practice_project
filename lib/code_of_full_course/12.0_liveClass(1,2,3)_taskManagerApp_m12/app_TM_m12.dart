import 'package:flutter/material.dart';
import 'screens/product_list_screen.dart';

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_task_manager_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

        useMaterial3: true,
      ),
      home: const ProductListScreen(title: 'Task Manager App'),
    );
  }
}

