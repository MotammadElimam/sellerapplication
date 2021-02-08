import 'package:flutter/material.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/splash/components/body.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/SplashScreen";
  @override
  Widget build(BuildContext context) {
    // Splash is our starting screen
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
