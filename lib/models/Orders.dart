// To parse this JSON data, do
//
//     final order = orderFromJson(jsonString);

import 'dart:convert';

List<Order> orderFromJson(String str) => List<Order>.from(json.decode(str).map((x) => Order.fromJson(x)));

String orderToJson(List<Order> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Order {
    Order({
        this.id,
        this.createdAt,
        this.updatedAt,
        this.productId,
        this.sellerId,
        this.orderId,
        this.quantity,
        this.price,
        this.totalPrice,
    });

    int id;
    DateTime createdAt;
    DateTime updatedAt;
    int productId;
    int sellerId;
    int orderId;
    int quantity;
    String price;
    String totalPrice;

    factory Order.fromJson(Map<String, dynamic> json) => Order(
        id: json["id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        productId: json["product_id"],
        sellerId: json["seller_id"],
        orderId: json["order_id"],
        quantity: json["Quantity"],
        price: json["price"],
        totalPrice: json["total_price"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "product_id": productId,
        "seller_id": sellerId,
        "order_id": orderId,
        "Quantity": quantity,
        "price": price,
        "total_price": totalPrice,
    };
}
