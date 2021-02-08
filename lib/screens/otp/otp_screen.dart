import 'package:flutter/material.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/otp/components/body.dart';

class OtpScreen extends StatelessWidget {
  static String routeName = "/otp";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("OTP Verification"),
      ),
      body: Body(),
    );
  }
}
