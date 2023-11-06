//Todo: Use of  "ExpansionTile";
//Todo: Github merging, Rebasing git,

import 'dart:convert';
import 'package:flutter/material.dart';

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

  @override
  void initState() {
    getProductList();
    super.initState();
  }

  /*void getProductList() async {
    setState(() {
      productList.clear();
      inProgress = true;
    });

    Response getResponse =
        await get(Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct"));
    print(getResponse);
    print(getResponse.body);

    if (getResponse.statusCode == 200) {
      final Map<String, dynamic> getResponseData = jsonDecode(getResponse.body);
      if (getResponseData["status"] == "success") {
        for (Map<String, dynamic> productJson in getResponseData["data"]) {
          setState(() {

            productList.add(Product(
                productJson["_id"] ?? "",
                productJson["ProductName"] ?? "",
                productJson["ProductCode"] ?? "",
                productJson["Img"] ?? "",
                productJson["UnitPrice"] ?? "",
                productJson["Qty"] ?? "",
                productJson["TotalPrice"] ?? ""));
          });

        }
      }
    }
    inProgress = false;
    print(productList.length);
  }*/

  void getProductList() async {
    setState(() {
      productList.clear();
      inProgress = true;
    });

    final Response response =
        await get(Uri.parse("https://crud.teamrabbil.com/api/v1/ReadProduct"));
    print(response.body);
    print(response.statusCode);

    if (response.statusCode == 200) {
      final Map<String, dynamic> responseBody = jsonDecode(response.body);
      if (responseBody["status"] == "success") {
        for (Map<String, dynamic> productJsonData in responseBody["data"]) {
          setState(() {
            productList.add(Product(
              productJsonData["_id"] ?? "",
              productJsonData["ProductName"] ?? "",
              productJsonData["ProductCode"] ?? "",
              productJsonData["Img"] ?? "",
              productJsonData["UnitPrice"] ?? "",
              productJsonData["Qty"] ?? "",
              productJsonData["TotalPrice"] ?? "",
            ));
          });
        }
      }
    }
    setState(() {});
    inProgress = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.title,
          style: appBarTitleSmall(context, color: Colors.cyanAccent),
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
      body: inProgress
          ? Center(child: CircularProgressIndicator())
          : ListView.separated(
              itemCount: productList.length,
              itemBuilder: (BuildContext context, int index) {
                return ProductItem(
                  product: productList[index],
                );
              },
              separatorBuilder: (_, __) => const Divider(
                height: 0,
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
  const ProductItem({super.key, required this.product});

  final Product product;

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
              Text("Product Code: ${product.productCode}"),
              const SizedBox(
                width: 16,
              ),
              Text("Total Price: ${product.totalPrice}"),
            ],
          ),
          const Text("Product Description:"),
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
                return const ProductCreateScreen();
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
            },
            title: const Icon(Icons.delete),
            trailing: const Text("Delete"),
          ),
        ],
      ),
    );
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPrice;
  final String quantity;
  final String totalPrice;

  Product(this.id, this.productName, this.productCode, this.image,
      this.unitPrice, this.quantity, this.totalPrice);
}
