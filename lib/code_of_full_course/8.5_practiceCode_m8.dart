///TODO: Ajijul Hoque, LiveClass-2 for Module-8, Flutter Batch-4, ostad.app;
///todo: AspectRatio,SizedBox, FractionallySizedBox,

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
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
    /*Size size1 = MediaQuery.of(context).size;
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
*/
    return Scaffold(
      appBar: AppBar(
        title: const Text("Responsive Widgets"),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///Ratio = width:height,
            ///Ratio= 16/16;
            ///100:100;
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,

              child: AspectRatio(
                aspectRatio: 16 / 16,
                child: Container(
                  color: Colors.red,
                  child: Image.network(
                    "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=0.88847xw:1xh;center,top&resize=1200:*",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            /*SizedBox(
              height: MediaQuery.of(context).size.height/5,
              width: MediaQuery.of(context).size.width/5,
            child: Container(color: Colors.red,),
            ),*/
            Container(
              width: 200,
              height: 200,
              color: Colors.brown,
              child: AspectRatio(
                aspectRatio: 1/.2,
                child: Container(
                  color: Colors.red,
                  child: Image.network(
                    "https://hips.hearstapps.com/hmg-prod/images/beautiful-smooth-haired-red-cat-lies-on-the-sofa-royalty-free-image-1678488026.jpg?crop=0.88847xw:1xh;center,top&resize=1200:*",
                    /*fit: BoxFit.cover,*/
                  ),
                ),
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.width/3,
              child: FractionallySizedBox(

                widthFactor: 1,
                heightFactor: 1,
                child: Container(color: Colors.green,),
              ),
            ),
            Container(
              width: 200,
              height: 200,
              child: FractionallySizedBox(

                widthFactor: 1,
                heightFactor: 1,
                child: Container(color: Colors.blue,),
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,
              child: FractionallySizedBox(

                widthFactor: 1,
                heightFactor: 1,
                child: Container(color: Colors.blue,),
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,
              child: FractionallySizedBox(

                widthFactor: .8,
                heightFactor: 5,
                child: Container(color: Colors.yellow,),
              ),
            ),
            Container(
              width:  MediaQuery.of(context).size.width/2,
              height: MediaQuery.of(context).size.height/3,
              child: FractionallySizedBox(

                widthFactor: .4,
                heightFactor: .4,
                child: Container(color: Colors.purpleAccent,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
