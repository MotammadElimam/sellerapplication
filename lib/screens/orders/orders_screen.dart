import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/controllers/sellerorders.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/orders/components/body.dart';

class OrdersScreen extends StatefulWidget {
  static String routeName = "/orders";

  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
   SellerOrders sellerOrders = new SellerOrders();
 @override
   void initState() {
     // TODO: implement initState
     super.initState();
    sellerOrders.loadData();
    sellerOrders.addListener(() {
      print("is loading ${sellerOrders.loading}");
      print("is error ${sellerOrders.error}");
      print("is data ${sellerOrders.orders}");
      //print("is Gby ${sellerOrders.}");
    });
   }
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 1,
      child: Scaffold(
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
              child: Text(
                "Pending Orders",
                style: TextStyle(
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ));
  }
}
