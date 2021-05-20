import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/SellerProducts/SellerProductsItem.dart';
import 'package:sellerapplication/screens/Sellerproducts/components/body.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';

class MyProductsScreen extends StatelessWidget {
  static String routeName = "/MyProducts";
  SellerProductsItem sellerProductsItem = SellerProductsItem();

  MyProductsScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>
            Navigator.pushNamed(context, AddProductScreen.routeName),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
      bottomNavigationBar:
          CustomBottomNavBar(selectedMenu: MenuState.myproducts),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Products",
            style: TextStyle(color: Colors.black),
          ),
          /*Text(
            "${demoCarts.length} items",
            style: Theme.of(context).textTheme.caption,
          ),*/
        ],
      ),
    );
  }
}
