import 'package:sellerapplication/models/Product/Product.dart';


class MyProductsItem {
  int id;
  Product product;
  int quantity = 0;
  int getTotalPrice() => product.price * quantity;

  MyProductsItem();
  
  MyProductsItem.fromData({
    this.product,
    this.quantity
  });
}