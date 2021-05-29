class CustomersOrders {
  String id;
  String productId;
  String sellerId;
  String orderId;
  String quantity;
  String price;
  String totalPrice;
  String createdAt;
  String updatedAt;

  CustomersOrders(
      {this.id,
      this.productId,
      this.sellerId,
      this.orderId,
      this.quantity,
      this.price,
      this.totalPrice,
      this.createdAt,
      this.updatedAt});

  CustomersOrders.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    productId = json['product_id'].toString();
    sellerId = json['seller_id'].toString();
    orderId = json['order_id'].toString();
    quantity = json['Quantity'].toString();
    price = json['price'].toString();
    totalPrice = json['total_price'].toString();
    createdAt = json['created_at'].toString();
    updatedAt = json['updated_at'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['product_id'] = this.productId;
    data['seller_id'] = this.sellerId;
    data['order_id'] = this.orderId;
    data['Quantity'] = this.quantity;
    data['price'] = this.price;
    data['total_price'] = this.totalPrice;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
