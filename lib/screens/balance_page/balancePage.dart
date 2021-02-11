import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';

class BalancePage extends StatelessWidget {
  static String routeName = "/wishlist";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      //body: 
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.wallet),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Balance",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}