import 'package:sellerapplication/models/Product/Product.dart';


class RequestsItem {
  int id;
  Product product;
  int quantity = 0;

  RequestsItem();
  
  RequestsItem.fromData({
    this.product,
  });
}