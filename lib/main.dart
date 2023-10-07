import "package:device_preview/device_preview.dart";
import "package:flutter/material.dart";

void main() {
  runApp(DevicePreview(builder: (context) {
    return MyApp();
  }));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Bag",
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
  List<Map<String, dynamic>> clothItemsList = [
    {
      "img":
      "https://static-01.daraz.com.bd/p/6b0e4bc323bf67dab47aa4b71b09621a.jpg",
      "title": "T-Shirt",
      "color": "Grey",
      "size": "M",
      "price": 25,
      "quantity": 0.00
    },
    {
      "img":
      "https://static-01.daraz.com.bd/p/836aef2e8c32652bb33636ffb3fdb254.jpg",
      "title": "Trouser",
      "color": "Black",
      "size": "L",
      "price": 15,
      "quantity": 0.00
    },
    {
      "img":
      "https://static-01.daraz.com.bd/p/711ebbff3382f0aafed12b70e1a4ddf1.jpg",
      "title": "Kurti",
      "color": "White-Black",
      "size": "S",
      "price": 18,
      "quantity": 0.00
    },
    {
      "img":
      "https://static-01.daraz.com.bd/p/46aac5861314653b49fec94593684390.jpg",
      "title": "Shalwar-Kamiz",
      "color": "Black",
      "size": "L",
      "price": 21,
      "quantity": 0.00
    },
  ];

  MySnackBar(message, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  double totalAmount = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          bottomOpacity: 0.0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 50, top: 25, bottom: 0),
              child: Icon(
                Icons.search,
                size: 35,
                color: Colors.black,
              ),
            ),
          ],
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "My Bag",
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: Container(
                      width: double.infinity,
                      child: ListView.builder(
                          itemCount: clothItemsList.length,
                          itemBuilder: (context, index) {
                            return Expanded(
                              flex: 10,
                              child: AspectRatio(
                                aspectRatio: 100 / 33,
                                child: Card(
                                  elevation: 20,
                                  child: Row(
                                    children: [
                                      Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.all(3.0),
                                            child: Stack(children: [
                                              AspectRatio(
                                                aspectRatio: 16 / 16,
                                                child: Card(
                                                  elevation: 15,
                                                  child: Container(
                                                    height: double.infinity,
                                                    width: double.infinity,
                                                    child: Image.network(
                                                      "${clothItemsList[index]["img"]}",
                                                      fit: BoxFit.fill,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ]),
                                          )),
                                      Expanded(
                                        flex: 2,
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                            children: [
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Column(
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                      mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                      children: [
                                                        Text(
                                                          "${clothItemsList[index]["title"]}",
                                                          style: TextStyle(
                                                              color: Colors.black,
                                                              fontSize: 20),
                                                        ),
                                                        Row(
                                                          children: [
                                                            RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                    fontSize: 15,
                                                                    color: Colors
                                                                        .grey),
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                      "Color: "),
                                                                  TextSpan(
                                                                      text:
                                                                      "${clothItemsList[index]["color"]}",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black)),
                                                                ],
                                                              ),
                                                            ),
                                                            SizedBox(
                                                              width: 10,
                                                            ),
                                                            RichText(
                                                              text: TextSpan(
                                                                style: TextStyle(
                                                                    fontSize: 15,
                                                                    color: Colors
                                                                        .grey),
                                                                children: [
                                                                  TextSpan(
                                                                      text:
                                                                      "Size: "),
                                                                  TextSpan(
                                                                      text:
                                                                      "${clothItemsList[index]["size"]}",
                                                                      style: TextStyle(
                                                                          color: Colors
                                                                              .black)),
                                                                ],
                                                              ),
                                                            ),
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                    Icon(Icons.more_vert)
                                                  ],
                                                ),
                                              ),
                                              Expanded(
                                                child: Row(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        TextButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              if (clothItemsList[
                                                              index][
                                                              "quantity"] >=
                                                                  1) {
                                                                clothItemsList[
                                                                index]
                                                                ["quantity"]--;
                                                                totalAmount =
                                                                    totalAmount -
                                                                        clothItemsList[
                                                                        index]
                                                                        [
                                                                        "price"];
                                                              }

                                                              if (clothItemsList[
                                                              index]
                                                              ["quantity"] >
                                                                  0) {}
                                                            });
                                                          },
                                                          child: Card(
                                                            shape: CircleBorder(),
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                              child: Icon(
                                                                Icons.remove,
                                                                color: Colors.grey,
                                                                size: 30,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                          EdgeInsets.all(2),
                                                          child: Text(
                                                            "${clothItemsList[index]["quantity"]}",
                                                            style: TextStyle(
                                                                fontSize: 30),
                                                          ),
                                                        ),
                                                        TextButton(
                                                          onPressed: () {
                                                            setState(() {
                                                              clothItemsList[index]
                                                              ["quantity"]++;
                                                              totalAmount =
                                                                  totalAmount +
                                                                      clothItemsList[
                                                                      index]
                                                                      ["price"];
                                                            });
                                                          },
                                                          child: Card(
                                                            child: Padding(
                                                              padding:
                                                              const EdgeInsets
                                                                  .all(5.0),
                                                              child: Icon(
                                                                Icons.add,
                                                                color: Colors.grey,
                                                                size: 30,
                                                              ),
                                                            ),
                                                            shape: CircleBorder(),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Text(
                                                      "${clothItemsList[index]["price"]}\$",
                                                      style:
                                                      TextStyle(fontSize: 20),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          }),
                    )),
                SizedBox(
                  height: 10,
                ),
                ListTile(
                  title: Text(
                    "Total Amount:",
                    style: TextStyle(fontSize: 20, color: Colors.grey),
                  ),
                  trailing: Text(
                    "${totalAmount}\$",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: Expanded(
                    flex: 2,
                    child: ElevatedButton(
                      onPressed: () {
                        if (totalAmount <= 0) {
                          MySnackBar(
                              "Sorry! No selected item has been selected. \nTotal Amount:\$${totalAmount}.",
                              context);
                        } else {
                          MySnackBar(
                              "Congratulations! You have bought successfully. \nTotal Amount:\$${totalAmount}.",
                              context);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
                        backgroundColor: Colors.red,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "CHECK OUT",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
