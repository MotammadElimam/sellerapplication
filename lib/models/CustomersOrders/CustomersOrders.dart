class Customerorders {
  String id;
  String productId;
  String sellerId;
  String orderId;
  String quantity;
  String price;
  String totalPrice;
  String createdAt;
  String updatedAt;
  Order order;
  Product product;

  Customerorders(
      {this.id,
      this.productId,
      this.sellerId,
      this.orderId,
      this.quantity,
      this.price,
      this.totalPrice,
      this.createdAt,
      this.updatedAt,
      this.order,
      this.product});

  Customerorders.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    productId = json['product_id'].toString();
    sellerId = json['seller_id'].toString();
    orderId = json['order_id'].toString();
    quantity = json['Quantity'].toString();
    price = json['price'].toString();
    totalPrice = json['total_price'].toString();
    createdAt = json['created_at'].toString();
    updatedAt = json['updated_at'].toString();
   order = json['order'] != null ? new Order.fromJson(json['order']) : null;
    product =json['product'] != null ? new Product.fromJson(json['product']) : null;
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
    if (this.order != null) {
      data['order'] = this.order.toJson();
    }
    if (this.product != null) {
      data['product'] = this.product.toJson();
    }
    return data;
  }
}

class Order {
  String id;
  String userId;
  String address;
  String totalPrice;
  String paymentType;
  String status;
  String createdAt;
  String updatedAt;
  User user;

  Order(
      {this.id,
      this.userId,
      this.address,
      this.totalPrice,
      this.paymentType,
      this.status,
      this.createdAt,
      this.updatedAt,
      this.user});

  Order.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    userId = json['user_id'].toString();
    address = json['address'].toString();
    totalPrice = json['total_price'].toString();
    paymentType = json['payment_type'].toString();
    status = json['status'].toString();
    createdAt = json['created_at'].toString();
    updatedAt = json['updated_at'].toString();
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['address'] = this.address;
    data['total_price'] = this.totalPrice;
    data['payment_type'] = this.paymentType;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String id;
  String email;
  String confirmPassword;
  String firstName;
  String lastName;
  String phoneNumber;
  String address;
  String emailVerifiedAt;
  String createdAt;
  String updatedAt;

  User(
      {this.id,
      this.email,
      this.confirmPassword,
      this.firstName,
      this.lastName,
      this.phoneNumber,
      this.address,
      this.emailVerifiedAt,
      this.createdAt,
      this.updatedAt});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    email = json['email'].toString();
    confirmPassword = json['confirm_password'].toString();
    firstName = json['first_name'].toString();
    lastName = json['last_name'].toString();
    phoneNumber = json['phone_number'].toString();
    address = json['Address'].toString();
    emailVerifiedAt = json['email_verified_at'].toString();
    createdAt = json['created_at'].toString();
    updatedAt = json['updated_at'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['confirm_password'] = this.confirmPassword;
    data['first_name'] = this.firstName;
    data['last_name'] = this.lastName;
    data['phone_number'] = this.phoneNumber;
    data['Address'] = this.address;
    data['email_verified_at'] = this.emailVerifiedAt;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Product {
  String id;
  String name;
  String price;
  String desc;
  String image;
  String sellerId;
  String createdAt;
  String updatedAt;

  Product(
      {this.id,
      this.name,
      this.price,
      this.desc,
      this.image,
      this.sellerId,
      this.createdAt,
      this.updatedAt});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'].toString();
    name = json['name'].toString();
    price = json['price'].toString();
    desc = json['desc'].toString();
    image = json['image'].toString();
    sellerId = json['seller_id'].toString();
    createdAt = json['created_at'].toString();
    updatedAt = json['updated_at'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['price'] = this.price;
    data['desc'] = this.desc;
    data['image'] = this.image;
    data['seller_id'] = this.sellerId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
