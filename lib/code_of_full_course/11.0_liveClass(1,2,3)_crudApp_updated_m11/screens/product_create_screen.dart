//Todo: http and Dio used for connecting project with API Internet

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/code_of_full_course/11.0_liveClass(1,2,3)_crudApp_updated_m11/components/custom_style_p1.dart';
import 'package:http/http.dart';
import 'package:flutter_practice_project/code_of_full_course/11.0_liveClass(1,2,3)_crudApp_updated_m11/screens/product.dart';


class ProductCreateScreen extends StatefulWidget {
  final Product? product;

  const ProductCreateScreen({super.key, this.product});

  @override
  State<ProductCreateScreen> createState() => _ProductCreateScreenState();
}

class _ProductCreateScreenState extends State<ProductCreateScreen> {
  final TextEditingController _imageTEController = TextEditingController();
  final TextEditingController _productCodeTEController =
      TextEditingController();
  final TextEditingController _productNameTEController =
      TextEditingController();
  final TextEditingController _quantityTEController = TextEditingController();
  final TextEditingController _priceTEController = TextEditingController();
  final TextEditingController _totalPriceTEController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool addInProgress = false;

  Future<void> createNewProduct() async {
    setState(() {
      addInProgress = true;
    });

    final Product product = Product(
        "",
        _productNameTEController.text.trim(),
        _productCodeTEController.text.trim(),
        _imageTEController.text.trim(),
        _priceTEController.text.trim(),
        _quantityTEController.text.trim(),
        _totalPriceTEController.text.trim());

    /*final Map<String, dynamic> inputMap = {
      "Img": _imageTEController.text.trim(),
      "ProductCode": _productCodeTEController.text.trim(),
      "ProductName": _productNameTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalPriceTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
    };*/


    final Response postResponse = await post(
      Uri.parse("https://crud.teamrabbil.com/api/v1/CreateProduct"),
      headers: {"content-type": "application/json"},
      body: jsonEncode(product.toJson()),
    );

    // print(response.request!.url);
    // print(response.statusCode);

    if (postResponse.statusCode == 200) {
      _imageTEController.clear();
      _productNameTEController.clear();
      _productCodeTEController.clear();
      _quantityTEController.clear();
      _priceTEController.clear();
      _totalPriceTEController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Content added, successfully!")));
    } else if (postResponse.statusCode == 400) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Product code should be unique!")));
    }

    setState(() {
      addInProgress = false;
    });
  }

  Future<void> updateProduct() async {
    setState(() {
      addInProgress = true;
    });

    final Map<String, dynamic> inputMap = {
      "Img": _imageTEController.text.trim(),
      "ProductCode": _productCodeTEController.text.trim(),
      "ProductName": _productNameTEController.text.trim(),
      "Qty": _quantityTEController.text.trim(),
      "TotalPrice": _totalPriceTEController.text.trim(),
      "UnitPrice": _priceTEController.text.trim(),
    };

    print(inputMap);

    final Response response = await post(
      Uri.parse(
          "https://crud.teamrabbil.com/api/v1/UpdateProduct/${widget.product?.id}"),
      headers: {"content-type": "application/json"},
      body: jsonEncode(inputMap),
    );

    print(response.request!.url);
    print(response.statusCode);
    if (response.statusCode == 200) {
      _imageTEController.clear();
      _productNameTEController.clear();
      _productCodeTEController.clear();
      _quantityTEController.clear();
      _priceTEController.clear();
      _totalPriceTEController.clear();

      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Content updated, successfully!")));
    } else if (response.statusCode == 400) {
      ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Product code should be unique!")));
    }

    setState(() {
      addInProgress = false;
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.product != null) {
      _productNameTEController.text = widget.product!.productName;
      _productCodeTEController.text = widget.product!.productCode;
      _imageTEController.text = widget.product!.image;
      _quantityTEController.text = widget.product!.quantity;
      _priceTEController.text = widget.product!.unitPrice;
      _totalPriceTEController.text = widget.product!.totalPrice;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product Create Page",
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.cyanAccent),
        ),
        backgroundColor: Colors.blueGrey,
      ),
      body: Stack(children: [
        // screenBackground(context),
        Container(
          padding: const EdgeInsets.all(2.0),
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    validator: isValidate,
                    controller: _productNameTEController,
                    onChanged: (content) {},
                    decoration: textFormFieldGeneralStyle(labelText: "Title"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: isValidate,
                    controller: _imageTEController,
                    onChanged: (content) {},
                    decoration: textFormFieldGeneralStyle(labelText: "Image"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: isValidate,
                    controller: _productCodeTEController,
                    onChanged: (content) {},
                    decoration:
                        textFormFieldGeneralStyle(labelText: "Product Code"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: isValidate,
                    controller: _quantityTEController,
                    onChanged: (content) {},
                    decoration:
                        textFormFieldGeneralStyle(labelText: "Quantity"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: isValidate,
                    controller: _priceTEController,
                    onChanged: (content) {},
                    decoration:
                        textFormFieldGeneralStyle(labelText: "Unit Price"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    validator: isValidate,
                    controller: _totalPriceTEController,
                    onChanged: (content) {},
                    decoration:
                        textFormFieldGeneralStyle(labelText: "Total Price"),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  DropdownButton(items: const [
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
                  SizedBox(
                    width: double.infinity,
                    child: addInProgress
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        :
                        // screenBackground(context),
                        ElevatedButton(
                            style:
                                elevatedButtonCircularStyle(context: context),
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                if (widget.product == null) {
                                  createNewProduct();
                                } else {
                                  updateProduct();
                                }
                              }
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: widget.product != null
                                  ? const Text("Update")
                                  : const Text("Add"),
                            )),
                  )
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }

  String? isValidate(String? value) {
    if (value?.trim().isNotEmpty ?? false) {
      return null;
    } else {
      return "Enter valid value..!";
    }
  }

  @override
  void dispose() {
    _productNameTEController.dispose();
    _imageTEController.dispose();
    _productCodeTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    super.dispose();
  }
}
