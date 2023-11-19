import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_screens/splash_screen.dart';


class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const SplashScreen(),
      title: "Task Manager App",
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
            padding: EdgeInsets.symmetric(vertical: 12),

          )
        )
      ),
    );
  }
}

