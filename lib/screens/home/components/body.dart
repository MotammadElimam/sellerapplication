import 'package:sellerapplication/components/big_card_image_slide.dart';
import 'package:sellerapplication/demoData.dart';
import 'package:sellerapplication/screens/home/components/popular_product.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/home/components/home_header.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/home/components/categories.dart';


class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: BigCardImageSlide(images: demoBigImages),
            ),
            Categories(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
