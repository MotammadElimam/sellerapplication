import 'package:sellerapplication/models/Product/Product.dart';


class SalesItem {
  int id;
  Product product;
  int quantity = 0;

  SalesItem();
  
  SalesItem.fromData({
    this.product,
  });
}