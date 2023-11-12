///TODO: Flutter-4_Module-7_Assignment
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
  List<Map<String, dynamic>> productList = [
    {"name": "Apple", "price": 6.35, "quantity": 0},
    {"name": "Banana", "price": 8.75, "quantity": 0},
    {"name": "Orange", "price": 5.20, "quantity": 0},
    {"name": "Grape", "price": 9.10, "quantity": 0},
    {"name": "Strawberry", "price": 7.65, "quantity": 0},
    {"name": "Blueberry", "price": 11.40, "quantity": 0},
    {"name": "Raspberry", "price": 10.25, "quantity": 0},
    {"name": "Blackberry", "price": 12.80, "quantity": 0},
    {"name": "Lemon", "price": 6.90, "quantity": 0},
    {"name": "Lime", "price": 5.75, "quantity": 0},
    {"name": "Watermelon", "price": 9.60, "quantity": 0},
    {"name": "Cantaloupe", "price": 7.30, "quantity": 0},
    {"name": "Honeydew melon", "price": 8.95, "quantity": 0},
    {"name": "Pineapple", "price": 7.80, "quantity": 0},
    {"name": "Mango", "price": 10.70, "quantity": 0},
    {"name": "Papaya", "price": 8.45, "quantity": 0},
    {"name": "Kiwi", "price": 6.15, "quantity": 0},
    {"name": "Peach", "price": 7.95, "quantity": 0},
    {"name": "Plum", "price": 6.80, "quantity": 0},
    {"name": "Cherry", "price": 9.85, "quantity": 0},
    {"name": "Apricot", "price": 6.55, "quantity": 0},
    {"name": "Nectarine", "price": 8.20, "quantity": 0},
    {"name": "Pear", "price": 7.10, "quantity": 0},
    {"name": "Fig", "price": 5.60, "quantity": 0},
    {"name": "Avocado", "price": 12.15, "quantity": 0},
    {"name": "Cranberry", "price": 6.05, "quantity": 0},
    {"name": "Pomegranate", "price": 9.45, "quantity": 0},
    {"name": "Grapefruit", "price": 7.40, "quantity": 0},
    {"name": "Tangerine", "price": 6.50, "quantity": 0},
    {"name": "Passion fruit", "price": 10.50, "quantity": 0},
    {"name": "Guava", "price": 8.35, "quantity": 0},
    {"name": "Lychee", "price": 11.80, "quantity": 0},
    {"name": "Dragon fruit", "price": 9.75, "quantity": 0},
    {"name": "Coconut", "price": 8.00, "quantity": 0},
    {"name": "Olive", "price": 7.05, "quantity": 0},
    {"name": "Date", "price": 6.25, "quantity": 0},
    {"name": "Prickly pear", "price": 9.30, "quantity": 0},
    {"name": "Kiwifruit", "price": 6.70, "quantity": 0},
    {"name": "Star fruit", "price": 5.85, "quantity": 0},
    {"name": "Persimmon", "price": 7.20, "quantity": 0},
    {"name": "Jackfruit", "price": 8.10, "quantity": 0},
    {"name": "Black currant", "price": 6.40, "quantity": 0},
    {"name": "Red currant", "price": 8.55, "quantity": 0},
    {"name": "Gooseberry", "price": 7.15, "quantity": 0},
    {"name": "Elderberry", "price": 9.40, "quantity": 0},
    {"name": "Boysenberry", "price": 8.30, "quantity": 0},
    {"name": "Loganberry", "price": 10.65, "quantity": 0},
    {"name": "Marionberry", "price": 7.70, "quantity": 0},
    {"name": "Pawpaw", "price": 6.95, "quantity": 0},
    {"name": "Ackee", "price": 5.45, "quantity": 0},
    {"name": "Breadfruit", "price": 8.40, "quantity": 0},
    {"name": "Longan", "price": 9.25, "quantity": 0},
  ];

  /*double? itemsPrice(){
    double prices;
    for(int i=0; i<productList.length;i++){
      double pcs=productList[i]["price"];
      return  prices=pcs.toStringAsFixed(2) as double;
    };
  }*/

  int _counter=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Home Screen",
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: ListView.builder(
              itemCount: productList.length,
              itemBuilder: (context, index) {

                double prices=productList[index]["price"];
                int itemCount=0;
                return Column(
                  children: [
                    ListTile(
                      title: Text("${productList[index]["name"]}"),
                      subtitle: Text("\$${prices.toStringAsFixed(2)}"),

                      trailing: Column(
                        children: [
                          Text("Count ${productList[index]["quantity"]}"),
                          ElevatedButton(
                              onPressed: () {
                                if (productList[index]["quantity"] < 5) {
                                  setState(() {
                                    productList[index]["quantity"]++;
                                    _counter=productList[index]["quantity"]++;
                                  });
                                } else {
                                  showDialog(
                                      barrierDismissible: false,
                                      context: context,
                                      builder: (context) {
                                        return AlertDialog(
                                          title: Text("Congratulations!"),
                                          content: Text(
                                              "You've bought 5 Product${index}"),
                                          actions: [
                                            TextButton(
                                              onPressed: () {
                                                Navigator.pop(context);
                                              },
                                              child: Text("Okey"),
                                            ),
                                          ],
                                        );
                                      });
                                }
                              },
                              child: Text("Buy Now"))
                        ],
                      ),
                    ),
                  ],
                );
              }),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return CartScreen(countItems: _counter);
            }));
          },
          child: Icon(Icons.shopping_cart),
        ),
      ),
    );
  }
}

class ProductAmount extends StatefulWidget {
  const ProductAmount({super.key});

  @override
  State<ProductAmount> createState() => _ProductAmountState();
}

class _ProductAmountState extends State<ProductAmount> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              setState(() {
                counter++;
              });
            },
            child: Text("Buy Now"))
      ],
    );
  }
}

class CartScreen extends StatefulWidget {
  const CartScreen({super.key, required this.countItems});

  final countItems;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart Screen"),
      ),
      body: Center(
        child: Text(
          "Total Product: ${widget.countItems},",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
    );
  }
}
