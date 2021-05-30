import 'package:flutter/material.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/screens/edit_product_details/components/Editproductform.dart';
import 'package:sellerapplication/size_config.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text("تعديل بيانات المنتج", style: headingStyle),
                // Text(
                //   "ادخل تفاصيل المنتج الخاص بك",
                //   textAlign: TextAlign.center,
                // ),
                EditProductForm(
                  product: product,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
