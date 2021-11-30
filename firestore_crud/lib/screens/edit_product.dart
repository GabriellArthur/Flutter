import 'package:firestore_crud/providers/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class EditProduct extends StatefulWidget {
  @override
  _EditProductState createState() => _EditProductState();
}

class _EditProductState extends State<EditProduct> {
  @override
  Widget build(BuildContext context) {
    final productProvider = Provider.of<ProductProvider>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Edit Product")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: <Widget>[
            TextField(
              decoration: InputDecoration(hintText: "Product Name"),
              onChanged: (value) => productProvider.changeName(value),
            ),
            TextField(
              decoration: InputDecoration(hintText: "Product Price"),
              onChanged: (value) => productProvider.changePrice(value),
            ),
            SizedBox(height: 20.0),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.green,
              textColor: Colors.white,
              child: Text("Save"),
              onPressed: () {
                productProvider.saveProduct();
              },
            ),
            // ignore: deprecated_member_use
            RaisedButton(
              color: Colors.red,
              textColor: Colors.white,
              child: Text("Delete"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
