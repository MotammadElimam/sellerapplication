class Product {
  int id;
  String name;
  var price;
  String desc;
  String image;
  var sellerId;
  String createdAt;
  String updatedAt;
  double ratingsAvgRate;

  Product(
      {this.id,
      this.name,
      this.price,
      this.desc,
      this.image,
      this.sellerId,
      this.createdAt,
      this.updatedAt,
      this.ratingsAvgRate});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    price = json['price'];
    desc = json['desc'];
    image = json['image'];
    sellerId = json['seller_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    ratingsAvgRate = json['ratings_avg_rate'];
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
    data['ratings_avg_rate'] = this.ratingsAvgRate;
    return data;
  }
}
