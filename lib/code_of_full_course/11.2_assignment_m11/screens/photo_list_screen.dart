//Todo: Use of  "ExpansionTile";
//Todo: Github merging, Rebasing git,

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/11.2_assignment_m11/screens/photo_details_screen.dart';
import 'package:http/http.dart';

//Todo: Use of  "ExpansionTile";

//Todo: URI= Unique Resource Identifier

class PhotoInformationListScreen extends StatefulWidget {
  const PhotoInformationListScreen({super.key, required this.title});

  final String title;

  @override
  State<PhotoInformationListScreen> createState() =>
      _PhotoInformationListScreenState();
}

class _PhotoInformationListScreenState
    extends State<PhotoInformationListScreen> {
  // List<Product> productList = [];
  List<PhotoInformation> photoInformationList = [];

  // bool inProgress = false;

  @override
  void initState() {
    getPhotoInformationList();
    super.initState();
  }

  Future <List<PhotoInformation>> getPhotoInformationList() async {
    setState(() {
      photoInformationList.clear();
      // inProgress = true;
    });

   final Response getResponse =
        await get(Uri.parse("https://jsonplaceholder.typicode.com/photos"));
    print(getResponse);
    print(getResponse.body);
    print(getResponse.statusCode);

    var bodyData=jsonDecode(getResponse.body.toString());

    if(getResponse.statusCode==200){
      for(Map<String,dynamic>index in bodyData){
        photoInformationList.add(PhotoInformation(photoAlbumId: bodyData["albumId"] , photoId: bodyData["id"], photoTitle: bodyData["title"], photoUrl: bodyData["url"], photoThumbnailUrl: bodyData["thumbnailUrl"]));
      }
    }

    // inProgress = false;
    print("mastershanto:${photoInformationList.length} ");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
                onPressed: () {
                  getPhotoInformationList();
                },
                icon: Icon(Icons.refresh)),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
            itemCount: photoInformationList.length,
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
                            imageLink:
                                "https://images.pexels.com/photos/14918477/pexels-photo-14918477.jpeg?cs=srgb&dl=pexels-paul-jousseau-14918477.jpg&fm=jpg",
                            photoTitle: "jldjfljdf",
                            photoId: "lkjljdlfjldf",
                          );
                        }));
                      },
                      child: Row(
                        children: [
                          Image.network(
                            "https://images.pexels.com/photos/14918477/pexels-photo-14918477.jpeg?cs=srgb&dl=pexels-paul-jousseau-14918477.jpg&fm=jpg",
                            width: 150,
                            height: 150,
                            fit: BoxFit.fill,
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Container(
                            child: Flexible(
                              child: Text(
                                "sdjfl jdkfjlkd sdfjljkdf sdjfljsd dfjljdf dfjlsdjkf",
                                style: TextStyle(fontSize: 25),
                              ),
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

class PhotoInformation {
  final String photoAlbumId;
  final String photoId;
  final String photoTitle;
  final String photoUrl;
  final String photoThumbnailUrl;

  PhotoInformation({required this.photoAlbumId,required this.photoId,required this.photoTitle,
    required this.photoUrl,required this.photoThumbnailUrl});
}
