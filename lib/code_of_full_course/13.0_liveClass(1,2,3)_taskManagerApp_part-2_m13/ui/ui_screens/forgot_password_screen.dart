

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_screens/pin_verification_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_screens/sign_up_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/13.0_liveClass(1,2,3)_taskManagerApp_part-2_m13/ui/ui_widgets/body_background.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
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
                  "Your Email Address",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(height: 8,),
                const Text(
                  "A 6 digit OTP will be sent to you email address",style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14,color: Colors.grey
                ),
                ),
                const SizedBox(height: 8,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                    hintText: "Email",
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),

                SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const PinVerificationScreen()));
                        },
                        child: const Icon(Icons.arrow_circle_right_outlined))),
                const SizedBox(
                  height: 48,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account?",style: TextStyle(color: Colors.black54, fontWeight:FontWeight.w600 , fontSize: 16)),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const SignUpScreen()));
                      },
                      child: const Text(
                        "Sign In",
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
