import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/Product/product_item.dart';
import 'package:sellerapplication/models/Wishlist/Wishlist.dart';
import 'package:sellerapplication/models/Wishlist/wishlist_item.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/models/Cart/Cart.dart';
import 'package:sellerapplication/models/Cart/cart_item.dart';
import 'package:supercharged/supercharged.dart';

class ProductProvider extends ChangeNotifier {
  double price = 0.0;
  Cart cart = Cart();
  Wishlist wishlist = Wishlist();
  Product product = Product();



  String email;
  String password;
  String confirmPassword;
  String firstName;
  String lastName;
  String phoneNumber;
  String adress;




  String productName , description;
  File image;
  final picker = ImagePicker();

  

  addToCart(CartItem cartItem) {
    try {
      cart.cartItems.add(cartItem);
      getTotalPrice();
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }

  removeFromCart(CartItem cartItem) {
    try {
      cart.cartItems.remove(cartItem);
      getTotalPrice();
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }

  addToWishlist(Wishlistitem wishlistitem) {
    try {
      wishlist.wishlistitems.add(wishlistitem);
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }

  removeFromWishlist(Wishlistitem wishlistitem) {
    try {
      wishlist.wishlistitems.remove(wishlistitem);
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }
 
  addToSellerProducts(ProductItem productItem) {
    try {
      product.productitem.add(productItem);
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }

  removeFromSellerProducts(ProductItem productItem) {
    try {
      product.productitem.remove(productItem);
    } catch (e) {
      print('catch $e');
    }
    notifyListeners();
  }
  
  
  
  
  
  
  getTotalPrice() {
    price = cart.cartItems.sumByDouble((c) => c.getTotalPrice());
  }


Future getImage() async {
    final imageFilePath = await picker.getImage(source: ImageSource.gallery);

    
      if (imageFilePath != null) {
        image = File(imageFilePath.path);
      } else {
        print('No image selected.');
      }
  }



}


