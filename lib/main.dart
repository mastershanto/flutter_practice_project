///TODO: Flutter-4_Module-7_LiveClass-2_Commit-1 (Cupertino_IOS)

/*import 'package:flutter/cupertino.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        leading: Icon(CupertinoIcons.home),
        middle: Text('Home'),
        trailing: CupertinoSwitch(
          onChanged: (bool onChange) {},
          value: true,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            Text('Hello world'),
            CupertinoButton.filled(child: Text('sfd'), onPressed: () {}),
            CupertinoTextField(),
            CupertinoTabBar(items: [
              BottomNavigationBarItem(
                  label: 'sdfd', icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(
                  label: 'sdfd', icon: Icon(CupertinoIcons.home)),
              BottomNavigationBarItem(
                  label: 'sdfd', icon: Icon(CupertinoIcons.home)),
            ])
          ],
        ),
      ),
    );
  }
}*/

///TODO: Flutter-4_Module-7_LiveClass-2_Commit-2 (switch,alertDialog,bottomSheet)
/*
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        children: [
          Switch(value: true, onChanged: (bool value) {}),
          ElevatedButton(
            onPressed: () {
              showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: Text('Alert'),
                      content: Text('You are in danger'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text('Cancel')),
                        TextButton(
                            onPressed: () {
                              // ACTION
                            },
                            child: Text('Okay')),
                      ],
                    );
                  });
            },
            child: Text('Show dialog'),
          ),
          ElevatedButton(
            onPressed: () {
              showAboutDialog(
                  context: context,
                  applicationName: "PikaPie",
                  applicationVersion: '1.0.4',
                  children: [
                    Text('This application is good for regular uses!')
                  ]);
            },
            child: Text('show about'),
          ),
          ElevatedButton(
            onPressed: () {
              showModalBottomSheet(
                  isDismissible: false,
                  backgroundColor: Colors.grey.shade100,
                  barrierColor: Colors.black45,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      )
                  ),
                  context: context, builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Center(
                        child: Text('This is bottom sheet'),
                      )
                    ],
                  ),
                );
              });
            }, child: Text('show bottom sheet'),),
        ],
      ),
    );
  }
}
*/
