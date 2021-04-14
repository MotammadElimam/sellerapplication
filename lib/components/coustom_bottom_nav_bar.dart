import 'package:sellerapplication/screens/MyProducts/MyProducts_screen.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sellerapplication/screens/balance_page/balancePage.dart';
import 'package:sellerapplication/screens/checkout/checkout_screen.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:sellerapplication/screens/orders/orders_screen.dart';
import 'package:sellerapplication/screens/profile/profile_screen.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/orders/orders_screen.dart';
import 'package:sellerapplication/screens/sales/sales_screen.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key key,
    @required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/sales.svg",
                  width: 25,
                  height: 25,
                  color: MenuState.sales == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  ),
                onPressed: () {
                   Navigator.pushNamed(context, SalesScreen.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/orders.svg",
                  width: 40,
                  height: 40,
                  color: MenuState.orders == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, OrdersScreen.routeName),
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/productBox.svg",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: MenuState.myproducts == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  ),
                onPressed: () {
                  Navigator.pushNamed(context, MyProductsScreen.routeName);
                },
              ),
               IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/wallet.svg",
                  width: 25,
                  height: 25,
                  fit: BoxFit.contain,
                  color: MenuState.wallet == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                  ),
                onPressed: () {
                  Navigator.pushNamed(context, BalancePage.routeName);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, CheckoutScreen.routeName),
              ),
              
            ],
          )),
    );
  }
}
