
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/11.2_assignment_m11/screens/photo_details_screen.dart';
import 'package:http/http.dart';

class PhotoInformationListScreen extends StatefulWidget {
  const PhotoInformationListScreen({super.key, required this.title});

  final String title;

  @override
  State<PhotoInformationListScreen> createState() =>
      _PhotoInformationListScreenState();
}

class _PhotoInformationListScreenState
    extends State<PhotoInformationListScreen> {
  var data;
  Future getData() async {
    var response =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));

    setState(() {
      var decode = json.decode(response.body); /// This system as per Afran Shaker
      data = decode;
    });
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,

      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, int index) {
              return SizedBox(
                width: double.infinity,
                height: 150,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return PhotoDetailsScreen(
                            imageLink: data[index]["thumbnailUrl"].toString(),
                            photoTitle: data[index]["title"].toString(),
                            photoId: data[index]["id"].toString(),
                          );
                        }));
                      },
                      child: Row(
                        children: [
                          Image.network(
                            data[index]["url"] ?? " ",
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          const SizedBox(
                            width: 16,
                          ),
                          Flexible(
                            child: Text(
                              data[index]["title"].toString(),
                              style: const TextStyle(fontSize: 25),
                            ),
                          ),
                        ],
                      )),
                ),
              );
            }),
      ),
    );
  }
}
