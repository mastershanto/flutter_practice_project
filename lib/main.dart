///TODO: Ajijul Hoque, LiveClass for Module-8, Flutter Batch-4, ostad.app;

import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
      title: "Counter App",
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
    Size size1 = MediaQuery.of(context).size;
    Size size2 = MediaQuery.sizeOf(context);

    /// Part-1
    print("size1:$size1");
    print("size2:$size2");
    print("size.width:${size1.width}");
    print("size.height:${size1.height}");
    print("size.aspectRatio:${size1.aspectRatio}");
    print("size.flipped:${size1.flipped}");

    /// Part-2
    Orientation orientation = MediaQuery.orientationOf(context);
    print(orientation);

    /// Part-3
    List<DisplayFeature> displayFeature = MediaQuery.displayFeaturesOf(context);
    print(displayFeature);

    /// Part-4
    print(MediaQuery.devicePixelRatioOf(context));

    return Scaffold(
      appBar: AppBar(
        title: Text("Responsive Widgets"),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          ///Properties of constraints
          print(constraints.flipped);
          print(constraints.maxWidth);
          print(constraints.maxHeight);
          print(constraints.widthConstraints());
          print(constraints.biggest);

          if (constraints.maxWidth > 500) {
            return Center(child: Text("masterShanto"));
          }
          ;
          return Column(
            children: [
              Center(
                child: OrientationBuilder(
                  builder: (context, orientation) {
                    return Text(orientation == Orientation.portrait
                        ? "Potrait"
                        : "Landscap");
                  },
                ),
              ),
              Wrap(alignment: WrapAlignment.center, children: [
                Text("kjkfjkdkfdjfldjfdf" ),
                SizedBox(width:5,),
                Text("kjkfjkdkfdjfldjfdf" ),
                SizedBox(width:5,),
                Text("kjkfjkdkfdjfldjfdf" ),
                SizedBox(width:5,),
                Text("kjkfjkdkfdjfldjfdf" ),

                Text("kjkfjkdkfdjfldjfddkfldjlf" ),
                SizedBox(width:5,),
                Text("dkfkdjfkdjfkjdlkjldjldjfljldjfldljldfjkjkfjkdkfdjfldjfdf" ),

              ]),
            ],
          );
        },
      ),
    );
  }
}
