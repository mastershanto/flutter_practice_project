///TODO: https://github.com/mastershanto/flutter_practice_project/blob/flutter_assignment_m10/lib/main.dart
/// Ajijul Hoque (Shanto), Assignment of Module-10, Flutter Batch-4, ostad.app;
/// Todo: This is a CRUD Project

import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (BuildContext context) {
      return MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "flutter_assignment_m10",
      home: HomeScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Products> myProductList = [];

  addItem(Products products) {
    setState(() {
      myProductList.add(products);
      if(products.description==""){
        products.description="This is description....";
      }
    });
  }

  deleteItem(index) {
    setState(() {
      myProductList.removeAt(index);
    });
  }

  updateItem(int index, String title, String description) {
    setState(() {
      myProductList[index].title = title;
      myProductList[index].description = description;
    });
  }

  addColor({required int index,required var color}){
    myProductList[index].color=color;
  }

  MySnackBar(massage, context) {
    return ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(massage,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.greenAccent,),textAlign: TextAlign.center,)));}

  TextEditingController title_TEController = TextEditingController();
  TextEditingController description_TEController = TextEditingController();
  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            actions: const [
              Padding(
                padding: EdgeInsets.only(right: 16),
                child: Icon(
                  Icons.search,
                  size: 35,
                  color: Colors.cyan,
                ),
              )
            ],
            backgroundColor: Colors.white,
          ),
          body: Padding(
            padding: const EdgeInsets.only(left: 4, right: 4, bottom: 4),
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              height: double.infinity,
              padding: EdgeInsets.only(left: 4, right: 4, bottom: 4),
              color: Colors.white,
              child: Form(
                key: _globalKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: title_TEController,
                      validator: (content) {
                        if (content?.isEmpty ?? true) {
                          return "Enter a valid value: Title!";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        hintText: "Add Title",
                        enabledBorder: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan, width: 2)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: description_TEController,

                      /*validator: (content) {
                    if (content?.isEmpty ?? true) {
                      return "Enter a valid value: Description!";
                    }
                    return null;
                  },*/
                      decoration: InputDecoration(
                        hintText: "Add description",
                        enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.cyan, width: 2)),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {
                          if (_globalKey.currentState!.validate()) {
                            addItem(Products(
                              title: title_TEController.text.trim(),
                              description:description_TEController.text.trim(),
                            ));
                            title_TEController.clear();
                            description_TEController.clear();
                          }
                        },
                        child: Padding(
                          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
                          child: Text("ADD"),
                        ),
                        style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.red),
                      ),
                    ),
                    SizedBox(
                      height: 32,
                    ),
                    Flexible(
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          // myProductList[index].color==Colors.purpleAccent ? addColor(index: index, color: Colors.red):addColor(index: index, color: Colors.purpleAccent);
                          if(index%2==0){
                            var color=Colors.blueGrey;
                            addColor(index: index,color: color);
                          }else{
                            var color=Colors.cyan;
                            addColor(index: index,color: color);
                          }

                          return Container(
                            width: double.infinity,
                            color: Color(0xffE0E0E0),
                            child: ListTile(
                              onLongPress: () {
                                showDialog(
                                    context: context,
                                    builder: (context) {
                                      return AlertDialog(
                                        titlePadding: EdgeInsets.only(right: 15,top: 0,left: 15,bottom: 0),
                                        title: Column(
                                          crossAxisAlignment: CrossAxisAlignment.center,
                                          children: [
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(" "),
                                                IconButton(onPressed: (){
                                                  Navigator.pop(context);
                                                },icon: Icon(Icons.cancel,size: 40,color: Colors.red)

                                                ),
                                              ],
                                            ),
                                            Text("Action",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                                          ],
                                        ),
                                        content: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                showModalBottomSheet(
                                                    context: context,
                                                    builder: (context){
                                                      return UpdateProductModal(
                                                        products:
                                                        myProductList[index],

                                                        onTab_updateProduct: (String
                                                        title,
                                                            String description,String mySnackMessage) {
                                                          updateItem(index, title,
                                                              description);
                                                          MySnackBar(mySnackMessage, context);},
                                                      );
                                                    });
                                              },
                                              child: Text(
                                                "Edit",
                                                style:
                                                TextStyle(color: Colors.cyan,fontSize: 20),
                                              ),
                                            ),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                                deleteItem(index);
                                              },
                                              child: Text(
                                                "Delete",
                                                style:
                                                TextStyle(color: Colors.cyan,fontSize: 20),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    });
                              },
                              leading: CircleAvatar(
                                  child: Text("${index + 1}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16,color: Colors.white),),
                                  backgroundColor: myProductList[index].color
                              ),
                              title: Text("${myProductList[index].title}"),
                              subtitle: Text("${myProductList[index].description}"),
                              trailing: IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.arrow_forward),
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return Divider(
                            height: 4,
                          );
                        },
                        itemCount: myProductList.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}

class Products {
  late  String title;
  late  String description;
  late Color color;

  Products(
      {required this.title,
        required this.description,
        this.color = Colors.red});
}

class UpdateProductModal extends StatefulWidget {
  const UpdateProductModal({
    super.key,
    required this.products,
    required this.onTab_updateProduct,

    // required this.productUpdateTab,
  });

  final Products products;
  final Function(String, String, String) onTab_updateProduct;

  @override
  State<UpdateProductModal> createState() => _UpdateProductModalState();
}

class _UpdateProductModalState extends State<UpdateProductModal> {
  late TextEditingController updateTitle_TEController;
  late TextEditingController upateDescription_TEController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateTitle_TEController =
        TextEditingController(text: widget.products.title);
    upateDescription_TEController =
        TextEditingController(text: widget.products.description);
  }

  GlobalKey<FormState> _globalKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _globalKey,
        child: Column(
          children: [
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: updateTitle_TEController,
              decoration: InputDecoration(
                hintText: "Add update title",
                enabledBorder: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan, width: 2)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            TextFormField(
              controller: upateDescription_TEController,
              decoration: InputDecoration(
                hintText: "Add update description",
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.cyan, width: 2)),
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  if (_globalKey.currentState!.validate()) {
                    Navigator.pop(context);
                    widget.onTab_updateProduct(
                        updateTitle_TEController.text.trim(),
                        upateDescription_TEController.text.trim(),"Edited successfully!");
                  }
                },
                child: Text("EDIT DONE"),
                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
              ),
            ),
            SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
