import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/%2011.0_liveClas-1_CRUD_APP_m11/components/custom_style_p1.dart';


void main() {
  runApp(DevicePreview(builder: (context) {
    return const MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Sum Calculator",
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController _textEditingController_1 = TextEditingController();
  TextEditingController _textEditingController_2 = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  double result = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: const Text("SUM CALCULATOR"),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Form(
                key: _globalKey,
                child: Column(
                  children: [
                    Text(
                      "ADD ALL NUMBERS",
                      style: bodyTextExtraSmall(context),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _textEditingController_1,
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        if (value?.isEmpty ?? true) {
                          return "Enter the valid value";
                        }
                        return null;
                      },
                      decoration: AppInputStyle_1("1st Number"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _textEditingController_2,
                      keyboardType: TextInputType.number,
                      validator: (String? value) {
                        /*if(value==null){
                          return "Enter a valid value.";
                        }
                        if(value.trim().isEmpty){
                          return "Enter a valid number.";
                        }*/

                        if (value?.isEmpty ?? true) {
                          return "Enter the valid value";
                        }
                        return null;
                      },
                      decoration: AppInputStyle_1("2nd Number"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    ButtonBar(
                      children: [
                        ElevatedButton.icon(
                          onPressed: () {
                            if(_globalKey.currentState!.validate()){
                              double firstNumber=double.parse(_textEditingController_1.text.trim());
                              double secondNumber=double.parse(_textEditingController_2.text.trim());
                              print(firstNumber);
                              print(secondNumber);
                              setState(() {
                                result  =firstNumber+secondNumber;
                              });

                            }
                          },
                          icon: Icon(
                            Icons.add,
                          ),
                          label: Text("Add"),
                        )
                      ],
                    ),
                    Text(
                      "Result is: ${result}",
                      style: mSizedText(),
                    ),
                  ],
                ),
              ),
            )));
  }
}
