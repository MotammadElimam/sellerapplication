import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/sign_up/components/body.dart ';

class EditProfileScreen extends StatelessWidget {
  static String routeName = "/edit_profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit_profile_Screen"),
      ),
      body: Body(),
    );
  }
}
