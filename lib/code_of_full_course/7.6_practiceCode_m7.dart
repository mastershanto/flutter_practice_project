import 'package:flutter/material.dart';
import 'package:flutter_practice_project/components/styleCollections_1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          appBarTheme: AppBarTheme(),
          drawerTheme: DrawerThemeData(),
          navigationDrawerTheme: NavigationDrawerThemeData(),
          bottomNavigationBarTheme: BottomNavigationBarThemeData()),
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'Basic Navigator Activities',
    );
  }
}

class HomeScreen extends StatelessWidget {
  List<String> students = [
    'Rafat',
    'Azim',
    'Hakim',
    'Jawad',
    'Kanij',
    'Riad',
    'Jakir',
    'rohan'
  ];

  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator Home',style: headLine(context),),
      ),
      body: Scrollbar(
          thickness: 20,
          radius: Radius.circular(10),
          /*child: GridView.builder(
          itemCount: 100,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
          itemBuilder: (context, index) {
              return Column(
                children: [
                  Text(index.toString()),
                  Icon(Icons.adb_rounded),
                ],
              );
          },
        )*/
          // child : ListView.builder
          // child: ListView.separated(
          //   itemCount: 100,
          //   itemBuilder: (context, index) {
          //     return ListTile(
          //       title: Text('Item number $index'),
          //     );
          //   },
          //   separatorBuilder: (context, index) {
          //     return Column(
          //       children: [
          //         Text(index.toString()),
          //         Divider(),
          //       ],
          //     );
          //   },
          // ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(3),
                  width: 300,
                  height: 70,
                  color: Colors.black,
                  child: Center(
                    child: Text(
                      "HomeScreen",
                      style: TextStyle(
                          fontSize: 50,
                          color: Colors.purpleAccent,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SettingsScreen()));
                    },
                    child: Text("Go to SettingScreen")),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductListScreen(
                                    productList: students,
                                  )));
                    },
                    child: Text("Go to ProductListScreen")),
              ],
            ),
          )),
    );
  }
}

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SettingsScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              width: 350,
              height: 70,
              color: Colors.black,
              child: Center(
                child: Text(
                  "SettingScreen",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.green,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Home by pop")),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Home by pop")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text("Back to Home by push")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MediaScreen()));
                },
                child: Text("go to MediaCreen by push")),
          ],
        ),
      ),
    );
  }
}

class MediaScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SettingsScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              width: 350,
              height: 70,
              color: Colors.black,
              child: Center(
                child: Text(
                  "MediaScreen",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.red,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Home by pop")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text("Back to Home by push")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DataScreen()));
                },
                child: Text("go to DataScreen by push")),
          ],
        ),
      ),
    );
  }
}

class DataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SettingsScreen"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.all(3),
              width: 350,
              height: 70,
              color: Colors.black,
              child: Center(
                child: Text(
                  "DataScreen",
                  style: TextStyle(
                      fontSize: 50,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Back to Home by pop")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomeScreen()));
                },
                child: Text("go to settingScreen by push")),
          ],
        ),
      ),
    );
  }
}

class ProductListScreen extends StatelessWidget {
  final productList;

  ProductListScreen({super.key, required this.productList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductListScreen"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: HomeScreen().students.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${HomeScreen().students[index]}"),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetailsScreen(
                    productDetails: HomeScreen().students[index],
                  );
                })).then((value) => print(value));
              },
            );
          },
        ),
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final productDetails;

  ProductDetailsScreen({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductDetailsScreen"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("$productDetails"),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context,"masterShanto");
              },
              child: Text("Back"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}

/*class ProductDetailsScreen extends StatelessWidget {
  final productDetails;

  ProductDetailsScreen({super.key, required this.productDetails});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ProductDetailsScreen"),
      ),
      body: Center(
        child: Text("$productDetails"),
      ),
    );
  }
}*/
