import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';

class WalletPageScreen extends StatelessWidget {
  static String routeName = "/BalancePage";
  WalletPageScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Transform.translate(
          //   offset: Offset(30.5, 70.0),
          //   child: SvgPicture.string(
          //     _svg_7p1127,
          //     allowDrawingOutsideViewBox: true,
          //   ),
          // ),
          Transform.translate(
            offset: Offset(101.0, 373.0),
            child: Text(
              '0.0 جنيه',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 50,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Transform.translate(
            offset: Offset(103.0, 265.0),
            child: Text(
              'رصيدك',
              style: TextStyle(
                fontFamily: 'Tajawal',
                fontSize: 50,
                color: const Color(0xff707070),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.wallet),
    );
  }
}

