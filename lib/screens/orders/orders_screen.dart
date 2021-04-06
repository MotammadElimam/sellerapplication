import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/orders/components/body.dart';

class OrdersScreen extends StatelessWidget {
  static String routeName = "/orders";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child:   Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.orders),
    ),
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
     bottom: TabBar(
       
       tabs: [
         Tab(
           child : Text("Pending Orders",
         style: TextStyle(
           color: Colors.blue,
         ),
         ),
         
         ),
    
       ],
     )
    );
  }
}
