import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/Product/Product.dart';



class HomeProductsProvider extends ChangeNotifier {
  bool loading = false;
  List<Product> products;
  bool error = false;
  var producthelper = DatabaseHelper();
  
  
  loadData() async {
    try {
      loading = true;
      notifyListeners();

      var data = await producthelper.showAllProducts();
      print("_______________________$data");
      loading = false;
      products = data.map((e) => Product.fromMap(e)).toList();
      print("*************************${products.length}");
      notifyListeners();
    } on  Error catch (err) {
      print(err.stackTrace);
      error = true;
      notifyListeners();
    }
  }
}
