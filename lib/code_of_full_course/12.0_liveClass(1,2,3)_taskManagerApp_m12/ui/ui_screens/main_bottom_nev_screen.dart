

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/Progress_tasks_screen.dart';
// import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/add_new_tasks_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/cancelled_tasks_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/completed_tasks_screen.dart';

import 'New_tasks_screen.dart';
// import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/pin_verification_screen.dart';
// import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/sign_up_screen.dart';
// import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_widgets/body_background.dart';

class MainBottomNevScreen extends StatefulWidget {
  const MainBottomNevScreen({super.key});

  @override
  State<MainBottomNevScreen> createState() => _MainBottomNevScreenState();
}

class _MainBottomNevScreenState extends State<MainBottomNevScreen> {
  int _selectedIndex=0;
  final List<Widget> _screens=const<Widget>[
    NewTasksScreen(),
    ProgressTasksScreen(),
    CompletedTaskScreen(),
    CancelledTasksScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex=index;
          });

        },
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels:true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc),label: "New"),
          BottomNavigationBarItem(icon: Icon(Icons.change_circle_outlined),label: "In Progress"),
          BottomNavigationBarItem(icon: Icon(Icons.done),label: "Completed"),
          BottomNavigationBarItem(icon: Icon(Icons.close),label: "Canceled"),

        ],
      ),
    ));
  }
}
