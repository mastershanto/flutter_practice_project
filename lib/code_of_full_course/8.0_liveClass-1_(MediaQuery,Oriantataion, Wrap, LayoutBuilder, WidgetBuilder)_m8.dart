//Todo: https://github.com/RafatMeraz/ostad_flutter_batch_four/blob/module-8-class-1/live_class_project/lib/home_screen.dart


import 'package:flutter/material.dart';

/// MediaQuery

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Size size = MediaQuery.of(context).size;
    // Size size = MediaQuery.sizeOf(context);
    // print(size);
    // print(size.width);
    // print(size.height);
    // print(size.aspectRatio);
    // print(size.flipped);
    // Orientation orientation = MediaQuery.orientationOf(context);
    // print(orientation);
    // List<DisplayFeature> displayFeatures = MediaQuery.displayFeaturesOf(context);
    // print(displayFeatures);
    // print(MediaQuery.devicePixelRatioOf(context));
    // print(MediaQuery.platformBrightnessOf(context));
    return Scaffold(
      appBar: AppBar(
        title: Text('Intro to RD'),
      ),
      body: LayoutBuilder(
          builder: (context, constraints) {
            print(constraints.maxWidth);
            if (constraints.maxWidth > 500) {
              return Center(child: Text('Too big screen'));
            } else {
              return Center(
                child: OrientationBuilder(
                    builder: (context, orientation) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(orientation == Orientation.portrait
                              ? 'Portrait'
                              : "Landscape"),
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.start,
                            children: [
                              Text('skdjfksjfkljasdkljf dsfk jksdjf kjsdkf jkfk ksdlfj klas'),
                              Text('skdjfksjfklj'),
                              Text('skdjfksjfkljasdkljf dsfk jksdjf kjsdkf jkfk ksdlfj klas'),
                              Text('skdjfksjfkljasdkljf dsfk jksdjf kjsdkf jkfk ksdlfj klas'),
                              Text('skdjfksjfkljasdkljf dsfk jksdjf kjsdkf jkfk ksdlfj klas'),
                              Text('skdjfksjfkljasd'),
                              Text('skdjfksjfkljasdkljf dsfk jksdjf kjsdkf jkfk ksdlfj klas'),
                            ],
                          )
                        ],
                      );
                    }
                ),
              );
            }
          }
      ),
    );
  }
}

/*import 'package:flutter/material.dart';
import 'package:live_class_project/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}*/