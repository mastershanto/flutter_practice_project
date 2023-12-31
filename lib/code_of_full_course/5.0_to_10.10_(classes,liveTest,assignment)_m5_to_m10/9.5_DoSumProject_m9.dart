import "package:flutter/material.dart";
import "package:flutter_practice_project/code_of_full_course/9.9_waterTrackerApp/components/custom_style_p1.dart";


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Addition Calculator",
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
  Map<String, double> FormValue = {"num1": 0, "num2": 0, "num3": 0};
  double SUM=0;

  @override
  Widget build(BuildContext context) {
    MyInputOnChange(InputKey, InputValue) {
      setState(() {
        FormValue[InputKey]=double.parse(InputValue);
      });
    }
    AddAllNumbers(){
      setState(() {
        SUM = FormValue["num1"]!+FormValue["num2"]!+FormValue["num3"]!;
      });
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Addition Calculator"),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Addition is: ${SUM} ",
                style: bodyHeadlineExtraSmall(Colors.green),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (content) {
                  MyInputOnChange("num1", content);
                },
                decoration: textFormFieldGeneralStyle(labelText: "First Number"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (content) {
                  MyInputOnChange("num2", content);
                },
                decoration: textFormFieldGeneralStyle(labelText: "Second Number"),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                onChanged: (content) {
                  MyInputOnChange("num3", content);
                },
                decoration: textFormFieldGeneralStyle(labelText: "Third Number"),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    AddAllNumbers();
                  },
                  child: Text(
                    "Add",
                    style: bodyTextExtraSmall(context),
                  ),
                  style: elevatedButtonGeneralStyle(context: context
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
