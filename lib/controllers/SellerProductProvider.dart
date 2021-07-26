import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'package:sellerapplication/models/SellerProducts/SellerProducts.dart';

class SellerProductProvider extends ChangeNotifier {
  int id;
  double price = 0.0;
  SellerProducts sellerProducts = SellerProducts();
 

  String email;
  String password;
  String confirmPassword;
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

  String productName;
  String description;
  File image;
  final picker = ImagePicker();


  Future getImage() async {
    final imageFilePath = await picker.getImage(source: ImageSource.gallery);

    if (imageFilePath != null) {
      image = File(imageFilePath.path);
    } else {
      print('لم يتم اختيار اي صورة');
    }
  }
}
