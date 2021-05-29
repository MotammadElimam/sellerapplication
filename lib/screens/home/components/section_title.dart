import 'package:flutter/material.dart';
import 'package:sellerapplication/size_config.dart';


class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key key,
    @required this.title,
    @required this.press,
  }) : super(key: key);

  final String title;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontFamily: 'Tajawal',
            color: Colors.black,
          ),
        ),
        Text(
            "كل المنتجات",
            style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            fontFamily: 'Tajawal',
            color: Colors.black,
            ),
          ),
      
      ],
    );
  }
}
