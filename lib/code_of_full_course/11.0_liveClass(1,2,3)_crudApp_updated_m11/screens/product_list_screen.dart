//Todo: Use of  "ExpansionTile";
//Todo: Github merging, Rebasing git,

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/11.0_liveClass(1,2,3)_crudApp_updated_m11/screens/product_create_screen.dart';
import 'package:flutter_practice_project/code_of_full_course/11.0_liveClass(1,2,3)_crudApp_updated_m11/screens/product.dart';
import 'package:flutter_practice_project/code_of_full_course/11.0_liveClass(1,2,3)_crudApp_updated_m11/screens/product.dart';
import 'package:http/http.dart';

//Todo: Use of  "ExpansionTile";

//Todo: URI= Unique Resource Identifier

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key, required this.title});

  final String title;

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  List<Product> productList = [];

  bool inProgress = false;

  void getProductList() async {
    setState(() {
      productList.clear();
      inProgress = true;
    });

    Response getResponse =
        await get(Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct"));

    if (getResponse.statusCode == 200) {
      final Map<String, dynamic> getResponseData = jsonDecode(getResponse.body);
      if (getResponseData["status"] == "success") {
        for (Map<String, dynamic> productJson in getResponseData["data"]) {
          setState(() {
            productList.add(Product.fromJson(productJson));
          });
        }
      }
    }
    inProgress = false;
  }

  void deleteProduct(String productId) async {
    setState(() {
      productList.clear();
      inProgress = true;
    });

    Response deleteResponse = await get(Uri.parse(
        "https://crud.teamrabbil.com/api/v1/DeleteProduct/$productId"));

    if (deleteResponse.statusCode == 200) {
      getProductList();
    } else {
      setState(() {
        inProgress = false;
      });
    }
  }

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    /*Size size=MediaQuery.of(context).size;
    debugPrint(size as String?);*/
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: IconButton(
                onPressed: () {
                  getProductList();
                },
                icon: const Icon(Icons.refresh)),
          )
        ],
      ),
      body:
      RefreshIndicator(

        onRefresh: () async{
          getProductList();

        },
        child: inProgress
            ? const Center(child: CircularProgressIndicator())
            : ListView.separated(
                itemCount: productList.length,
                itemBuilder: (BuildContext context, int index) {
                  return ProductItem(
                    product: productList[index],
                    onPressDelete: (String productId) {
                      deleteProduct(productId);
                    },
                  );
                },
                separatorBuilder: (_, __) => const Divider(
                  height: 0,
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const ProductCreateScreen()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ProductItem extends StatelessWidget {
  const ProductItem(
      {super.key, required this.product, required this.onPressDelete});

  final Product product;
  final Function(String) onPressDelete;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.network(
        product.image,
        height: 80,
      ),
      title: Text(product.productName),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(child: Text("Product Code: ${product.productCode}")),
              const SizedBox(
                width: 16,
              ),
              Text("Total Price: ${product.totalPrice}"),
            ],
          ),
          Text("Product Quantity:${product.quantity}"),
        ],
      ),
      trailing: Text("\$${product.unitPrice}"),
      onTap: () {
        showDialog(
            context: context,
            builder: (context) {
              return productAlertDialog(context);
            });
      },
    );
  }

//Todo: /*ExpansionTile(
//             leading: Image.network("https://t4.ftcdn.net/jpg/05/68/21/53/360_F_568215312_8vJMbnp4wUQlQabXKrInGAulkn7nPzEz.jpg"),
//             title:const Text("Product Name"),
//             subtitle: const Text("Product Description"),
//             trailing: const Text("\$50.00"),
//             children: const [
//               Text("this is the part of expansion tile"),
//             ],
//           ),*/
  AlertDialog productAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text("Select Action"),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return ProductCreateScreen(
                  product: product,
                );
              }));
            },
            title: const Icon(Icons.edit),
            trailing: const Text(
              "Edit",
            ),
          ),
          ListTile(
            onTap: () {
              Navigator.pop(context);
              onPressDelete(product.id);
            },
            title: const Icon(Icons.delete),
            trailing: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}
