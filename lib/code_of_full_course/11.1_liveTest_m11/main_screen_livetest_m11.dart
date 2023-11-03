import 'package:flutter/material.dart';

void main() {
  runApp(const CrudApp());
}

class CrudApp extends StatelessWidget {
  const CrudApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'weather_app',

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
  var providedJsonString = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather Info App",style:TextStyle(fontSize: 35,color: Colors.white, fontWeight: FontWeight.bold),),
        backgroundColor: Colors.blue,
        elevation: 2,
      ),
      body: Container(
        color: Colors.white,

        padding: EdgeInsets.all(16),
        child:ListView.separated(itemBuilder: (context,index){
          return Card(
            elevation: 20,
            child: ListTile(
              title: Text("City: ${providedJsonString[index]["city"]}",style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Temperature: ${providedJsonString[index]["temperature"]} ",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight:FontWeight.w800)),
                  Text("Condition: ${providedJsonString[index]["condition"]} ",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight:FontWeight.w800)),
                  Text("Humidity: ${providedJsonString[index]["humidity"]} ",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight:FontWeight.w800)),
                  Text("Wind Speed: ${providedJsonString[index]["windSpeed"]} ",style: TextStyle(fontSize: 15,color: Colors.grey,fontWeight:FontWeight.w800)),
                ],
              ),
            ),
          );
        }, separatorBuilder: (context,index){
          return Divider(height: 4);
        }, itemCount:providedJsonString.length) ,
      ),
    );
  }
}
