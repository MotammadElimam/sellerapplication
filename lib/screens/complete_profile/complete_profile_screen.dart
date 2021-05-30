import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/complete_profile/components/body.dart';


class CompleteProfileScreen extends StatelessWidget {
  static String routeName = "/completeprofile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تسجيل حساب جديد',style: TextStyle(fontFamily: 'Tajawal'),),
      ),
      body: Body(),
    );
  }
}
