/*
final DateTime now = DateTime.now();
final DateFormat formatter = DateFormat('yyyy-MM-dd');
final String formatted = formatter.format(now);
print(formatted); // something like 2013-04-20
  */

import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  // give me some widget
  runApp(MyApp());
}

// Hot reload => ctl + s
// Hot restart => ctl + shift + \

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: HomeScreen(),
      title: 'masterShanto App',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
        title: Text('Home'),
        leading: Icon(
          Icons.add_business,
          color: Colors.black,
          size: 40,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                alignment: Alignment.center,
                width: 300,
                height: 75,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Login Here",
                  style: TextStyle(
                      color: Colors.deepPurple,
                      fontSize: 45,
                      fontWeight: FontWeight.bold),
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.black,width: 2),
                  borderRadius: BorderRadius.circular(15),


                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                style: TextStyle(),
                decoration: InputDecoration(
                  label: Text("Email"),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter your email address.....",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.deepPurple,
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.deepPurple),
                  suffixIconColor: Colors.deepPurple,
                  prefixIconColor: Colors.deepPurple,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.red, width: 2)),
                  disabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2)),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                controller: TextEditingController(),
                style: TextStyle(),
                decoration: InputDecoration(
                  label: Text("Password"),
                  labelStyle: TextStyle(color: Colors.black),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: "Enter your email password.....",
                  hintStyle: TextStyle(color: Colors.blueGrey),
                  suffixIcon: Icon(
                    Icons.email,
                    color: Colors.deepPurple,
                  ),
                  prefixIcon: Icon(Icons.email, color: Colors.deepPurple),
                  suffixIconColor: Colors.deepPurple,
                  prefixIconColor: Colors.deepPurple,
                  border: OutlineInputBorder(),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                  disabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green),
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue)),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  foregroundColor: Colors.white,

                ),

              ),
            ],
          ),
        ),
      ),
    );
  }
}
