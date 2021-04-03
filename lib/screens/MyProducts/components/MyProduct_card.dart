import 'package:sellerapplication/models/MyProducts/MyProductsItem.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/size_config.dart';


class MyProductsCard extends StatelessWidget {
  final String serverUrl = "http://192.168.43.92:8000/storage/product";
  MyProductsCard({
    Key key,
    this.myProductItem,
  }) : super(key: key);

   MyProductsItem myProductsItem;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 88,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(getProportionateScreenWidth(10)),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.network(serverUrl+myProductsItem.product.images[0]),
            ),
          ),
        ),
        SizedBox(width: 20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              myProductsItem.product.productName,
              style: TextStyle(color: Colors.black, fontSize: 16),
              maxLines: 2,
            ),
            SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${myProductsItem.product.price}",
                style: TextStyle(
                    fontWeight: FontWeight.w600, color: kPrimaryColor),
              ),
            )
          ],
        )
      ],
    );
  }
}
