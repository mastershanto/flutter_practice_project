//todo: Ajijul Hoque, Assignment for Module-11, Ostad Flutter Batch-4

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'screens/photo_list_screen.dart';

void main() {
  runApp(DevicePreview(builder: (context){
    return const Assignment11();
  }));
}

class Assignment11 extends StatelessWidget {
  const Assignment11({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_assignment_module_11',
      home: const PhotoInformationListScreen(title: 'Photo Gallery App'),
    );
  }
}

