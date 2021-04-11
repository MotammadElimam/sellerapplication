import 'package:flutter/material.dart';
import 'package:sellerapplication/components/social_card.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/screens/edit_profile_details/components/edit_profile_form.dart';
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
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Text("Edit Profile details", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                EditProfileForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
