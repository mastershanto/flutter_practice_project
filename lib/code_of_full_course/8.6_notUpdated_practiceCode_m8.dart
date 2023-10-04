import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(builder: (BuildContext context) {
      return MaterialApp(
        home: HomeScreen(),
      );
    });
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //Photos Resource
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

  //Style Resource
  TextStyle mSizedText({color}){
    return TextStyle(fontSize: 20, color:color??Colors.black, fontWeight: FontWeight.w900);
  }
  //Oval Items
  Container Part_1_ClipOval_Image(){
    return Container(
        child: AspectRatio(
          aspectRatio: 5 / 5,
          child: Container(
            child: ClipOval(
              child: Image.network(
                  "data:image/jpeg;base64,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",
                  height: double.infinity,
                  width: double.infinity,
                  fit: BoxFit.cover),
            ),
          ),
        ));
  }

  //Items in Gride
  Center Part_2_GrideView_Image (){
    return Center(
      child:Container(child:AspectRatio(
        aspectRatio: 16/16,
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3), itemBuilder: (context,index){
          return Card(
            child: Image.network("${MyPhotoGallery[index]["img"]}"),
          );
        }),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    Orientation orientation1 = MediaQuery.orientationOf(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: LayoutBuilder(
          builder: (context, Contraints) {
            if (Contraints.maxWidth > 1950) {
              return Text("Too Big Screen");
            } else {
              return OrientationBuilder(
                builder: (context, orientation) {
                  return orientation1 == Orientation.portrait
                      ? Center(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                            children: [
                              Flexible(
                                flex: 5,
                                fit: FlexFit.loose,
                                child: Part_1_ClipOval_Image(),                                ),
                              Expanded(
                                child: Text(
                                  "What is Lorem?",style: mSizedText(color: Colors.black),),),
                              Expanded(
                                child: FractionallySizedBox(

                                  child: Text(
                                      "what is the lorem,fjld kdjf ljsdlf"+
                                          "dkjfl sdlfj ljds lfkjj fljldj fldfj dfl jdjf ljd fjl kjf"
                                              "ljdfljd lkfjls djflkjsdl kfj"),
                                ),),
                              Expanded(
                                flex: 3,
                                child: Part_2_GrideView_Image(),

                              ),
                            ]),
                      ))
                      : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Part_1_ClipOval_Image(),
                      ),
                      Expanded(
                        flex: 7,
                        child: Part_2_GrideView_Image(),
                      )
                    ],
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}

