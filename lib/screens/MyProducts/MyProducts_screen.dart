import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/Myproducts/components/body.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';


class MyProductsScreen extends StatelessWidget {
  static String routeName = "/MyProducts";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>  Navigator.pushNamed(context, AddProductScreen.routeName),
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.myproducts),
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
