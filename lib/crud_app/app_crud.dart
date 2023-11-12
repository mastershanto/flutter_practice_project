import 'package:flutter/material.dart';
import 'package:flutter_practice_project/crud_app/ui/ui_screens/product_create_screen.dart';


class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ProductCreateScreenForCrudApp(),
      title: "Crud App",
      theme: ThemeData(
        inputDecorationTheme:const InputDecorationTheme(
            fillColor: Colors.white,
            filled: true,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(borderSide: BorderSide.none),
            focusedBorder: OutlineInputBorder(borderSide: BorderSide.none),
            disabledBorder: OutlineInputBorder(borderSide: BorderSide.none)
        ),
        textTheme: const TextTheme(
          titleLarge: TextStyle(fontSize: 32,fontWeight: FontWeight.w600)
        ),
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 12),

          )
        )
      ),
    );
  }
}

