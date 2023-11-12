//Todo: http and Dio used for connecting project with API Internet

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_screens/forgot_password_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/12.0_liveClass(1,2,3)_taskManagerApp_m12/ui/ui_widgets/body_background.dart';

import 'pin_verification_screen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
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
                  "Join with us",
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
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "First name ",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.text,
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Last name",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  obscureText: false,
                  decoration: const InputDecoration(
                    hintText: "Mobile",
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
                          Navigator.pushAndRemoveUntil(context,MaterialPageRoute(builder: (context)=> const PinVerificationScreen()), (rount)=>false);
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
                    const Text("have an account?",style: TextStyle(color: Colors.black54, fontWeight:FontWeight.w600 , fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: const Text(
                        "Sing In",
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
