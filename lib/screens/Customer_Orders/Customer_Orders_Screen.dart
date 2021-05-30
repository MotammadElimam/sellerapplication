import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/models/SellerProducts/SellerProductsItem.dart';
import 'package:sellerapplication/screens/Customer_Orders/components/Body.dart';



// ignore: must_be_immutable
class CustomersOrdersScreen extends StatelessWidget {
  static String routeName = "/cutomerorders";
  SellerProductsItem sellerProductsItem = SellerProductsItem();

  CustomersOrdersScreen({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar:
      CustomBottomNavBar(selectedMenu: MenuState.orders),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "طلبات العملاء",
            style: TextStyle(color: Colors.black,fontFamily: 'Tajawal'),
          ),
        ],
      ),
    );
  }
}
