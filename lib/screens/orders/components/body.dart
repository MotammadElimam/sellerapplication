import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellerapplication/models/Orders/Orders_item.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/orders/components/orders_card.dart';
import 'package:provider/provider.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, ordersBody, child) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Expanded(
              child: ListView.builder(
          itemCount: ordersBody.orders.ordersitems.length,
          itemBuilder: (context, index) => Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Dismissible(
              key: Key(ordersBody.orders.ordersitems[index].product.id.toString()),
              direction: DismissDirection.endToStart,
              onDismissed: (direction) {
                 // ordersBody.removeFromWishlist(ordersBody.requests.OrdersItems[index]);
              },
              background: Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Color(0xFFFFE6E6),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Row(
                  children: [
                    Spacer(),
                    SvgPicture.asset("assets/icons/Trash.svg"),
                  ],
                ),
              ),
              child: OrdersCard(ordersItem: ordersBody.orders.ordersitems[index]),
            ),
          ),
        ),
      ),
    );
    });
  }
}
