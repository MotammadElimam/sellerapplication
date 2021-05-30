import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/home/components/icon_btn_with_counter.dart';
import 'package:sellerapplication/screens/home/components/search_field.dart';
import 'package:sellerapplication/size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {}
            //Navigator.pushNamed(context, WishListScreen.routeName),
          ),
        ],
      ),
    );
  }
}
