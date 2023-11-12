import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';


import '../12.0_liveClass(1,2,3)_taskManagerApp_m12/components/custom_style_p1.dart';


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
  final TextEditingController _textEditingController_1 = TextEditingController();
  final TextEditingController _textEditingController_2 = TextEditingController();
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
                      decoration: textFormFieldGeneralStyle(labelText: "1st Number"),
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
                      decoration: textFormFieldGeneralStyle(labelText: "2st Number"),
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
                      style: bodyTextExtraSmall(context),
                    ),
                  ],
                ),
              ),
            )));
  }
}
