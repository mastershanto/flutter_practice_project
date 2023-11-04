import 'package:flutter/material.dart';

class PhotoDetailsScreen extends StatefulWidget {
  const PhotoDetailsScreen(
      {super.key, this.imageLink, this.photoTitle, this.photoId});

  final imageLink;
  final photoTitle;
  final photoId;

  @override
  State<PhotoDetailsScreen> createState() => _PhotoDetailsScreenState();
}

class _PhotoDetailsScreenState extends State<PhotoDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Photo Details",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.cyanAccent,
          ),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AspectRatio(
              aspectRatio: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Image.network(
                  widget.imageLink,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                  text: "Title: ",
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: widget.photoTitle ?? "",
                      style:
                          const TextStyle(fontSize: 20, fontWeight: FontWeight.w100),
                    )
                  ]),
            ),
            const SizedBox(
              height: 8,
            ),
            RichText(
              text: TextSpan(
                  text: "Id: ",
                  style: const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  children: [
                    TextSpan(
                      text: widget.photoId ?? "",
                      style:
                          const TextStyle(fontSize: 30, fontWeight: FontWeight.w100),
                    )
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
