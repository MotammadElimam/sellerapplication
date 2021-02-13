import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/addproduct/body.dart';



class AddProductScreen extends StatelessWidget {
  static String routeName = "/Add_product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
