import 'package:firestore_crud/models/product.dart';
import 'package:firestore_crud/services/firestore_service.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

class ProductProvider with ChangeNotifier {
  final firestoreService = FirestoreService();
  late String _name;
  late double _price;
  // ignore: unused_field
  late String _productId;
  var uuid = Uuid();

  //Getters
  String get name => _name;
  double get price => _price;

  //Setters
  changeName(String value) {
    _name = value;
    notifyListeners();
  }

  changePrice(String value) {
    _price = double.parse(value);
    notifyListeners();
  }

  saveProduct() {
    var newProduct = Product(name: name, price: price, productId: uuid.v4());
    firestoreService.saveProduct(newProduct);
  }
}
