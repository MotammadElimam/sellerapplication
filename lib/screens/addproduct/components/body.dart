import 'package:flutter/material.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/screens/addproduct/components/addproductform.dart';
import 'package:sellerapplication/size_config.dart';

class Body extends StatelessWidget {
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
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                Text("Add Product", style: headingStyle),
                Text(
                  "Add the details for your product",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                AddProductForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
