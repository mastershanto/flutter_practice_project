import 'package:flutter/material.dart';
import 'package:flutter_practice_project/crud_app/ui/ui_screens/product_create_screen.dart';


class SplashScreenForCrudApp extends StatefulWidget {
  const SplashScreenForCrudApp({super.key});

  @override
  State<SplashScreenForCrudApp> createState() => _SplashScreenForCrudAppState();
}

class _SplashScreenForCrudAppState extends State<SplashScreenForCrudApp> {

  @override
  void initState() {
    super.initState();
    goToLongin();
  }

  void goToLongin(){
    Future.delayed(const Duration(seconds: 2)).then((value){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return const ProductCreateScreenForCrudApp() ;
      }), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:Center(
        child: Column(
          children: [
             Text("Well to new screen!")
          ],
        ),
      )
    ));
  }
}
