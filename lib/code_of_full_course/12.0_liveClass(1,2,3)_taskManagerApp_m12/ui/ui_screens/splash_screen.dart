import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/login_screen.dart';
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
          child: SvgPicture.asset(
            "assets/task_manager_project/images/rabbil_vai_logo.svg",
            width: 120,
          ),
        )
      )
    ));
  }
}
