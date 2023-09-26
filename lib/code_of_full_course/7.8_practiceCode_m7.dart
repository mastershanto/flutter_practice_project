import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Product {
  final String name;
  final double price;

  Product(this.name, this.price);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProductList(),
    );
  }
}

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product("Product 1", 10.0),
    Product("Product 2", 15.0),
    Product("Product 3", 20.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartPage(products)),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItem(products[index]);
        },
      ),
    );
  }
}

class ProductItem extends StatefulWidget {
  final Product product;

  ProductItem(this.product);

  @override
  _ProductItemState createState() => _ProductItemState();
}

class _ProductItemState extends State<ProductItem> {
  int itemCount = 0;

  void _buyProduct() {
    setState(() {
      itemCount++;
      if (itemCount == 5) {
        _showCongratulationDialog();
      }
    });
  }

  void _showCongratulationDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Congratulations!"),
          content: Text("You've bought 5 ${widget.product.name}!"),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(widget.product.name),
      subtitle: Text("\$${widget.product.price.toStringAsFixed(2)}"),
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Qty: $itemCount"),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              _buyProduct();
            },
          ),
        ],
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage(this.products);

  @override
  Widget build(BuildContext context) {
    // int totalItems = products.fold(0, (int sum, product) => sum + product.length);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Center(
        child: Text("Total Items in Cart: totalItems"),
      ),
    );
  }
}
