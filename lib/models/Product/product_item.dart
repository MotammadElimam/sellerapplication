import 'package:sellerapplication/models/Product/Product.dart';


class ProductItem {
  int id;
  Product product;

  ProductItem();
  
  ProductItem.fromData({
    this.id,
    this.product,
  });
}