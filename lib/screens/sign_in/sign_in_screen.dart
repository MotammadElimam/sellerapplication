import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/sign_in/components/body.dart';

class SignInScreen extends StatelessWidget {
  static String routeName = "/signin";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("التسجيل",style: TextStyle(fontFamily: 'Tajawal')),
      // ),
      
      body:Body(),
    );
  }
}
