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
      title: 'Flutter Assignment for Module-6',
    );
  }
}

class HomeScreen extends StatelessWidget {
  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage)));
  }

  final MyPhotoGallery = [
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIBvc6GVZc4rxXOl0l0pG5fsF42RL80VbSkQ&usqp=CAU",
      "title": "Photo 1"
    },
    {
      "img":
          "https://cdn.pixabay.com/photo/2014/11/30/14/11/cat-551554_1280.jpg",
      "title": "Photo 2"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7oHSo7LlQ86aP3ohc2QRzhqoUI-Krb_Qm7g&usqp=CAU",
      "title": "Photo 3"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0QXvUxsQuJMmCZLvQ6BfiQYnJouBLCiR27Q&usqp=CAU",
      "title": "Photo 4"
    },
    {
      "img":
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHQ4KlPQKj6Ie5OlJYg-sLRDMSU9Taed1Tyw&usqp=CAU",
      "title": "Photo 5"
    },
    {
      "img":
          "https://img.freepik.com/free-photo/closeup-vertical-shot-cute-european-shorthair-cat_181624-34587.jpg?size=626&ext=jpg&ga=GA1.2.649895941.1684173728&semt=sph",
      "title": "Photo 6"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.blue,
          title: Text('Photo Gallery'),
        ),
        body: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to My Photo Gallery!",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Container(
                width: double.infinity,
                height: 50,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search for photos...",
                    hintStyle: TextStyle(fontSize: 20),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Expanded(
                // flex: 3,
                child: GridView.builder(
                  itemCount: MyPhotoGallery.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 20,
                    crossAxisCount: 3,
                    crossAxisSpacing: 30,
                    childAspectRatio: 1,
                  ),
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        MySnackBar(
                            "You tapped on '${MyPhotoGallery[index]["title"]}'",
                            context);
                      },
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 100,
                            child: Image.network(
                              MyPhotoGallery[index]["img"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "${MyPhotoGallery[index]["title"]}",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              Expanded(
                  child: ListView.builder(
                      itemCount: MyPhotoGallery.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: ClipOval(
                            child: Image.network(
                              MyPhotoGallery[index]["img"]!,
                              fit: BoxFit.cover,
                            ),
                          ),
                          title: Text("${MyPhotoGallery[index]["title"]}"),
                          subtitle: Text("Description for photo ${index + 1}"),
                        );
                      })),
            ],
          ),
        ),
        floatingActionButton: Align(
          alignment: Alignment.bottomCenter,
          child: FloatingActionButton(
            onPressed: () {
              MySnackBar("Photos Uploaded Successfully!", context);
            },
            child: Icon(
              Icons.upload,
              size: 30,
            ),
          ),
        ),
      ),
    );
  }
}
