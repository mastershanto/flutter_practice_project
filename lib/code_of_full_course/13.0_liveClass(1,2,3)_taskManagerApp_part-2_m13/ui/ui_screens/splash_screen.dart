import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_screens/login_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../ui_widgets/body_background.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    goToLongin();
  }

  void goToLongin(){
    Future.delayed(const Duration(seconds: 2)).then((value){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context){
        return const LoginScreen() ;
      }), (route) => false);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body:BodyBackground(
        child: Center(
          child: /*Image.asset("assets/site.jpg"),*/
          SvgPicture.asset(
            "assets/logo.svg",
            width: 120,
          ),
        )
      )
    ));
  }
}
