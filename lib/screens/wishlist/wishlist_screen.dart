import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/wishlist/components/body.dart';



class WishListScreen extends StatelessWidget {
  static String routeName = "/wishlist";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.wishlist),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Wishlist",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
