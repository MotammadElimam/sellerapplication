import 'package:flutter/material.dart';

import 'components/body.dart';

class OrderDetailsScreen extends StatelessWidget {
  static String routeName = "/order_details_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      body: Body(),
    );
  }
}
