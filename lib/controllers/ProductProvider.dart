
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sellerapplication/models/MyProducts/MyProducts.dart';
import 'package:sellerapplication/models/Orders/Orders.dart';
import 'package:sellerapplication/models/Sales/Sales.dart';
import 'dart:io';

class ProductProvider extends ChangeNotifier {
  double price = 0.0;
  Myproduct myproduct = Myproduct();
  Orders orders = Orders();
  Sales sales = Sales();


  String email;
  String password;
  String confirmPassword;
  String firstName;
  String lastName;
  String phoneNumber;
  String adress;

  String productName;
  String description;
  File image;
   final picker = ImagePicker();




 

  // addToMyProducts(MyProductsItem myProductItem) {
  //   try {
  //     myproduct.myProductsItems.add(myProductItem);
  //     getTotalPrice();
  //   } catch (e) {
  //     print('catch $e');
  //   }
  //   notifyListeners();
  // }

  // removeFromMyProducts(MyProductsItem myProductItem) {
  //   try {
  //     myproduct.myProductsItems.remove(myProductItem);
  //     getTotalPrice();
  //   } catch (e) {
  //     print('catch $e');
  //   }
  //   notifyListeners();
  // }

  // getTotalPrice() {
  //   price = myproduct.myProductsItems.sumByDouble((c) => c.getTotalPrice());
  // }

  Future getImage() async {
    final imageFilePath = await picker.getImage(source: ImageSource.gallery);

    
      if (imageFilePath != null) {
        image = File(imageFilePath.path);
      } else {
        print('No image selected.');
      }
  }


}
