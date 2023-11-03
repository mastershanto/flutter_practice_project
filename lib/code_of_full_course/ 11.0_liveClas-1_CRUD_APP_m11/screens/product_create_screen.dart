//Todo: http and Dio used for connecting project with API Internet

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../components/custom_style_p1.dart';

class ProductCreateScreen extends StatefulWidget {
  const ProductCreateScreen({super.key});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {

  final TextEditingController _titleTEController = TextEditingController();
  final TextEditingController _productCodeTEController = TextEditingController();
  final TextEditingController _imageTEController = TextEditingController();

  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();
  final TextEditingController _descriptionTEController =
      TextEditingController();



  Future<void> createNewProduct() async {

    final Map<String,dynamic> inputJson={
      "Img":
      _imageTEController.text.trim(),
      "ProductCode":  _productCodeTEController.text.trim(),
      "ProductName": _titleTEController,
      "Qty": _quantityTEController,
      "TotalPrice": _totalPriceTEController,
      "UnitPrice": _priceTEController
    };

    final Response postResponse = await post(
        Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct"),
        headers: {
          "Content-Type":"application/json"
        },
        body: jsonEncode(inputJson),
    );

    print(postResponse.request?.url);
    print(postResponse.statusCode);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Product Create Page",
          style: appBarTitleSmall(context, color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(children: [
        // screenBackground(context),
        Container(
          padding: const EdgeInsets.all(2.0),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                TextFormField(
                  controller: _imageTEController,
                  onChanged: (content) {},
                  decoration: textFormFieldGeneralStyle(labelText: "Title"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _titleTEController,
                  onChanged: (content) {},
                  decoration: textFormFieldGeneralStyle(labelText: "Title"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _productCodeTEController,
                  onChanged: (content) {},
                  decoration:
                      textFormFieldGeneralStyle(labelText: "Product Code"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _quantityTEController,
                  onChanged: (content) {},
                  decoration: textFormFieldGeneralStyle(labelText: "Quantity"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _priceTEController,
                  onChanged: (content) {},
                  decoration:
                      textFormFieldGeneralStyle(labelText: "Unit Price"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _totalPriceTEController,
                  onChanged: (content) {},
                  decoration:
                      textFormFieldGeneralStyle(labelText: "Total Price"),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextFormField(
                  controller: _descriptionTEController,
                  onChanged: (content) {},
                  decoration:
                      textFormFieldGeneralStyle(labelText: "Description"),
                ),
                DropdownButton(items: [
                  DropdownMenuItem(
                    child: Text("Select Qt"),
                    value: "",
                  ),
                  DropdownMenuItem(
                    child: Text("2 Pcs"),
                    value: "2 pcs",
                  ),
                  DropdownMenuItem(
                    child: Text("3 Pcs"),
                    value: "3 pcs",
                  ),
                  DropdownMenuItem(
                    child: Text("4 Pcs"),
                    value: "4 pcs",
                  ),
                ], onChanged: (content) {}),
                ElevatedButton(
                    style: elevatedButtonCircularStyle(context: context),
                    onPressed: () {
                      createNewProduct();
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text("Add"),
                    ))
              ],
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _imageTEController.dispose();
    _titleTEController.dispose();
    _productCodeTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
