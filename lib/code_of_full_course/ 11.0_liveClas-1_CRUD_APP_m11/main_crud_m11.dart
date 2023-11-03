import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/%2011.0_liveClas-1_CRUD_APP_m11/components/custom_style_p1.dart';
import 'package:flutter_practice_project/code_of_full_course/%2011.0_liveClas-1_CRUD_APP_m11/screens/product_create_screen.dart';
import 'screens/product_list_screen.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_crud_app',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),

        useMaterial3: true,
      ),
      home: const ProductListScreen(title: 'CRUD Application'),
    );
  }
}

