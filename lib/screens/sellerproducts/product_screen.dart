import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/cart/components/body.dart';
//import 'package:sellerapplication/screens/sellerproducts/components/check_out_card.dart';


class ProductsScreen extends StatelessWidget {
  static String routeName = "/Products";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    //  bottomNavigationBar: CheckoutCard(),
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
