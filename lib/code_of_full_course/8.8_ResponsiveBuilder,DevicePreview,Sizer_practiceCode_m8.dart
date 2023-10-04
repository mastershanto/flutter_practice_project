import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:sizer/sizer.dart';

/// ResponsiveBuilder [Used in HomeClassState]
/// DevicePreview [Used in Void Main() Function]
//// Sizer [Sizing anything as per Screen (fontSize: 50.sp /*sp, w,h*/)]: Height & Width



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
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
       return Center(child: Text(
         sizingInformation.deviceScreenType.toString(),style: TextStyle(fontSize: 20.sp /*sp, w,h*/,color: Colors.white),
       ),);

        /* // Check the sizing information here and return your UI
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return Container(color: Colors.blue);
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return Container(
              color: Colors.red,
              child: Text(
                "masterShanto",
                style: TextStyle(fontSize: 50, color: Colors.white),
              ));
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return Container(color: Colors.yellow);
        }

        return Container(color: Colors.purple);*/
      },
    );
  }
}
