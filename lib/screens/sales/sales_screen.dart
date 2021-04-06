import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/sales/components/body.dart';

class SalesScreen extends StatelessWidget {
  static String routeName = "/slaes";
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child:   Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.sales),
    ),
    );
   
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Sales",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
     bottom: TabBar(
       
       tabs: [
         Tab(
           child : Text("Working on it",
         style: TextStyle(
           color: Colors.blue,
         ),
         ),
         
         ),
          Tab(
           child : Text("Sold Products",
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
