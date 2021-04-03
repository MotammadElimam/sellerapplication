import 'package:sellerapplication/models/Product/Product.dart';


class OrdersItem {
  int id;
  Product product;
  int quantity = 0;

  OrdersItem();
  
  OrdersItem.fromData({
    this.product,
  });
}