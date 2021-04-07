import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/addproduct/components/body.dart';



class AddProductScreen extends StatelessWidget {
  static String routeName = "/Add_product";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.myproducts),
    );
  }
}
