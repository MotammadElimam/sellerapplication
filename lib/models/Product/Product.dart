import 'package:flutter/material.dart';
import 'package:sellerapplication/models/Product/product_item.dart';

class Product {
  int id;
  String productName, description;
  String image;
  double rating;
  int price;
  
  //bool isFavourite, isPopular;

  Product({
    this.id,
    this.image,
    this.rating = 0.0,
    // this.isFavourite = false,
    // this.isPopular = false,
    this.productName,
    this.price,
    this.description,
  });
}








// Our demo Products

// List<Product> demoProducts = [
//   Product(
//     id: 1,
//     images: [
//       "assets/images/ps4_console_white_1.png",
//       "assets/images/ps4_console_white_2.png",
//       "assets/images/ps4_console_white_3.png",
//       "assets/images/ps4_console_white_4.png",
//     ],
//     productName: "Wireless Controller for PS4™",
//     price: 64.99,
//     description: description,
//     rating: 4.8,
//     // isFavourite: true,
//     // isPopular: true,
//   ),
//   Product(
//     id: 2,
//     images: [
//       "assets/images/Image Popular Product 2.png",
//     ],
//     productName: "Nike Sport White - Man Pant",
//     price: 50.5,
//     description: description,
//     rating: 4.1,
//     // isPopular: true,
//   ),
//   Product(
//     id: 3,
//     images: [
//       "assets/images/glap.png",
//     ],
//     productName: "Gloves XC Omega - Polygon",
//     price: 36.55,
//     description: description,
//     rating: 4.1,
//     // isFavourite: true,
//     // isPopular: true,
//   ),
//   Product(
//     id: 4,
//     images: [
//       "assets/images/wireless headset.png",
//     ],
//     productName: "Logitech Head",
//     price: 20.20,
//     description: description,
//     // rating: 4.1,
//     // // isFavourite: true,
//   ),
// ];

const String description =
    "Wireless Controller for PS4™ gives you what you want in your gaming from over precision control your games to sharing …";
