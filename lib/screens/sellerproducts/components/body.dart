import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/sellerproducts/components/products_card.dart';
import 'package:provider/provider.dart';


class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, sellerproductsbody, child) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: ListView.builder(
        itemCount: sellerproductsbody.product.productitem.length,
        itemBuilder: (context, index) => Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: Dismissible(
            key: Key(sellerproductsbody.product.productitem[index].product.id.toString()),
            direction: DismissDirection.endToStart,
            onDismissed: (direction) {
                sellerproductsbody.removeFromSellerProducts(sellerproductsbody.product.productitem[index]);
            },
            background: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Row(
                children: [
                  Spacer(),
                  SvgPicture.asset("assets/icons/Trash.svg"),
                ],
              ),
            ),
            child: ProductCard(productItem: sellerproductsbody.product.productitem[index]),
          ),
        ),
      ),
    );
    });
  }
}
