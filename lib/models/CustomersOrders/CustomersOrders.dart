import 'package:meta/meta.dart';


class CustomersOrders {
 final String productId;
 final String sellerId;
 final  String orderId;
 final String quantity;
 final String price;
 final String totalPrice;

 const CustomersOrders(
      {
       @required this.productId,
       @required this.sellerId,
       @required  this.orderId,
       @required this.quantity,
       @required this.price,
       @required  this.totalPrice,
        });

 static CustomersOrders fromJson(json) => CustomersOrders(
        productId: json['productId'],
        sellerId: json['sellerId'],
        orderId: json['orderId'],
        quantity: json['quantity'],
        price:json['price'],
        totalPrice: json['totalPrice']
      );

  // Map<String, dynamic> toJson() {
  //   final Map<String, dynamic> data = new Map<String, dynamic>();
  //   data['id'] = this.id;
  //   data['product_id'] = this.productId;
  //   data['seller_id'] = this.sellerId;
  //   data['order_id'] = this.orderId;
  //   data['Quantity'] = this.quantity;
  //   data['price'] = this.price;
  //   data['total_price'] = this.totalPrice;
  //   data['created_at'] = this.createdAt;
  //   data['updated_at'] = this.updatedAt;
  //   return data;
  // }
}
