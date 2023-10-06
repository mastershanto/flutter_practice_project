import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:responsive_grid/responsive_grid.dart';


void main() {
  runApp(DevicePreview(
    //true, false, kDebug,debug, hide
    enabled: true,
      builder: (BuildContext context){
    return MyApp();
  }) );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(builder:(cotext,oriantation, deviceType){
      return MaterialApp(
        locale: DevicePreview.locale(context),
        builder: DevicePreview.appBuilder,
        home: HomeScreen(),
      );
    });
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
    return Scaffold(
      appBar: AppBar(title: Text("Responsive Gride "),),
      body: Center(
        child: ResponsiveGridRow(

          children: [
            ResponsiveGridCol(xl: 4,lg: 6,md:8,sm: 9,xs: 12, child:Container(
              child: Text("masterShanto"),
              color: Colors.green,
              height:100,
            )),
            ResponsiveGridCol(xl: 4,lg: 6,md:8,sm: 9,xs: 12, child:Container(
              child: Text("masterShanto"),
              color: Colors.green,
              height: 100,
            )),
          ],
        ),
      ),
    ) ;
  }
}
