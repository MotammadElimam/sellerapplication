import 'package:sellerapplication/models/Product/Product.dart';


class MyProductItem {
  int id;
  Product product;
  int quantity = 0;
  int getTotalPrice() => product.price * quantity;

  MyProductItem();
  
  MyProductItem.fromData({
    this.product,
    this.quantity
  });
}