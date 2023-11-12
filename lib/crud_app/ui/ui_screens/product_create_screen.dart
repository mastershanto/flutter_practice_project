//Todo: http and Dio used for connecting project with API Internet

import 'package:flutter/material.dart';
import 'package:flutter_practice_project/crud_app/ui/Styles/styles_one_crud.dart';

class ProductCreateScreenForCrudApp extends StatefulWidget {
  const ProductCreateScreenForCrudApp({super.key});

  @override
  State<ProductCreateScreenForCrudApp> createState() =>
      _ProductCreateScreenForCrudAppState();
}

class _ProductCreateScreenForCrudAppState
    extends State<ProductCreateScreenForCrudApp> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Create Product",
            style: Theme.of(context).textTheme.headlineSmall,
          ),
        ),
        body: Stack(
          children: [
            Image.network("asset/crud_app"),
            SingleChildScrollView(
              child: Container(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    TextFormField(
                      onChanged: (value) {},
                      decoration: textFromFieldStyleOneForCrudApp(label: "Product Name"),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      onChanged: (value) {},
                      decoration: textFromFieldStyleOneForCrudApp(label: "Product Code"),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      onChanged: (value) {},
                      decoration: textFromFieldStyleOneForCrudApp(label: "Product Image"),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      onChanged: (value) {},
                      decoration: textFromFieldStyleOneForCrudApp(label: "Unit Price"),
                    ),
                    const SizedBox(height: 16,),
                    TextFormField(
                      onChanged: (value) {},
                      decoration: textFromFieldStyleOneForCrudApp(label: "Total Price"),
                    ),
                    const SizedBox(height: 16,),
                    SizedBox(
                      width: double.infinity,
                      height: 50,
                      child: ElevatedButton(
                        onPressed: (){}, child: const Text("Add"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
