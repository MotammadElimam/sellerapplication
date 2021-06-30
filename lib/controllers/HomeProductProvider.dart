import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/Product/Product.dart';



class HomeProductProvider extends ChangeNotifier {
  bool loading = false;
  List<Product> products;
  bool error = false;
  var producthelper = DatabaseHelper();
  
  
  loadData() async {
    try {
      loading = true;
      notifyListeners();

      var data = await producthelper.showAllProducts();

      loading = false;
      products = data.map((e) => Product.fromJson(e)).toList();
      notifyListeners();
    } catch (err) {
      print(err);
      error = true;
      notifyListeners();
    }
  }
}