// class Product {
//   int id;
//   String name;
//   String price;
//   String desc;
//   String image;
//   String sellerId;
//   String createdAt;
//   String updatedAt;
//   double ratingsAvgRate;

//   Product(
//       {this.id,
//       this.name,
//       this.price,
//       this.desc,
//       this.image,
//       this.sellerId,
//       this.createdAt,
//       this.updatedAt,
//       this.ratingsAvgRate});

//   Product.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     price = json['price'];
//     desc = json['desc'];
//     image = json['image'];
//     sellerId = json['seller_id'];
//     createdAt = json['created_at'];
//     updatedAt = json['updated_at'];
//     ratingsAvgRate = zdouble.parse(json['ratings_avg_rate']  );
//   }

//   Map<String, dynamic> toJson() {
//     final Map<String, dynamic> data = new Map<String, dynamic>();
//     data['id'] = this.id;
//     data['name'] = this.name;
//     data['price'] = this.price;
//     data['desc'] = this.desc;
//     data['image'] = this.image;
//     data['seller_id'] = this.sellerId;
//     data['created_at'] = this.createdAt;
//     data['updated_at'] = this.updatedAt;
//     data['ratings_avg_rate'] = this.ratingsAvgRate;
//     return data;
//   }
// }





// To parse this JSON data, do
//
//     final product = productFromMap(jsonString);

import 'dart:convert';

List<Product> productFromMap(String str) => List<Product>.from(json.decode(str).map((x) => Product.fromMap(x)));

String productToMap(List<Product> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class Product {
    Product({
        this.id,
        this.name,
        this.price,
        this.desc,
        this.image,
        this.sellerId,
        this.createdAt,
        this.updatedAt,
        this.ratingsAvgRate,
    });

    int id;
    String name;
    String price;
    String desc;
    String image;
    String sellerId;
    DateTime createdAt;
    DateTime updatedAt;
    double ratingsAvgRate;

    factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        name: json["name"],
        price: json["price"],
        desc: json["desc"],
        image: json["image"],
        sellerId: json["seller_id"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        ratingsAvgRate: json["ratings_avg_rate"]  == null ? 0.0 : double.parse(json["ratings_avg_rate"]),
    );

    Map<String, dynamic> toMap() => {
        "id": id,
        "name": name,
        "price": price,
        "desc": desc,
        "image": image,
        "seller_id": sellerId,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "ratings_avg_rate": ratingsAvgRate == null ? null : ratingsAvgRate,
    };
}
