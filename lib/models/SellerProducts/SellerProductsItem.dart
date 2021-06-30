import 'package:sellerapplication/models/Product/Product.dart';


class SellerProductsItem {
  int id;
  Product product;
  int quantity = 0;
  //int getTotalPrice() => product.price * quantity;

  SellerProductsItem();
  
  SellerProductsItem.fromData({
    this.product,
    this.quantity
  });
}