import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/complete_order/Body.dart';


class CompleteOrder extends StatelessWidget {
  static String routeName = "/complete_order_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Complete Order"),
      ),
      body: Body(),
    );
  }
}
