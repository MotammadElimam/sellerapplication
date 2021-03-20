import 'package:sellerapplication/models/Product/Product.dart';


class Wishlistitem {
  int id;
  Product product;

  Wishlistitem();
  
  Wishlistitem.fromData({
    this.product,
  });
}