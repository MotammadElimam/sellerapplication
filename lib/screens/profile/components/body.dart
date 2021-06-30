import 'package:sellerapplication/screens/profile/components/setting.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/sign_in/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
 _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }
 
 
 
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          // ProfileMenu(
          //   text: "بياناتك الشخصية",
          //   icon: "assets/icons/User Icon.svg",
          //   press: () => {},
          // ),
          // ProfileMenu(
          //   text: "الاشعارات",
          //   icon: "assets/icons/Bell.svg",
          //   press: () {},
          // ),
          // ProfileMenu(
          //   text: "الاعدادات",
          //   icon: "assets/icons/Settings.svg",
          //   press: () {
          //     Navigator.pushNamed(context, SettingsPage.routeName);
          //   },
          // ),
          ProfileMenu(
            text: "اتصل بنا",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "تسجيل الخروج",
            icon: "assets/icons/Log out.svg",
            press: () {
               _save('0');
              Navigator.pushNamed(context, SignInScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
