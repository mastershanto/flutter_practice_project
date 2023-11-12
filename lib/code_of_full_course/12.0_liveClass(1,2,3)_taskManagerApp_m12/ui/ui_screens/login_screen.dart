//Todo: http and Dio used for connecting project with API Internet

import 'package:flutter/material.dart';
// import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/add_new_tasks_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/main_bottom_nev_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/sign_up_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_widgets/body_background.dart';

import 'forgot_password_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: BodyBackground(
        child: Container(
          padding: const EdgeInsets.all(24),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 80,
                ),
                Text(
                  "Get start with",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    hintText: "Password",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const MainBottomNevScreen()));
                          // Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()), (route) => false);Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>const AddNewTaskScreen()), (route) => false);
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined))),
                const SizedBox(
                  height: 48,
                ),
                Center(
                    child: TextButton(
                  onPressed: () {

                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const ForgotPasswordScreen()));
                  },
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle (color: Colors.grey, fontSize: 16,fontWeight: FontWeight.w600),
                  ),
                )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?",style: TextStyle(color: Colors.black54, fontWeight:FontWeight.w600 , fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),

                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
