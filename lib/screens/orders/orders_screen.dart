import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/orders/components/body.dart';



class OrdersScreen extends StatelessWidget {
  static String routeName = "/orders";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your orders",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
