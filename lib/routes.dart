import 'package:flutter/widgets.dart';
import 'package:sellerapplication/screens/MyProducts/MyProduct_screen.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';
import 'package:sellerapplication/screens/profile/profile_screen.dart';
import 'package:sellerapplication/screens/profile/setting.dart';
import 'package:sellerapplication/screens/splash/splash_scrreen.dart';
import 'package:sellerapplication/screens/sign_in/sign_in_screen.dart';
import 'package:sellerapplication/screens/forgot_password/forgot_password_screen.dart';
import 'package:sellerapplication/screens/sign_up/sign_up_screen.dart';
import 'package:sellerapplication/screens/complete_profile/complete_profile_screen.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:sellerapplication/screens/otp/otp_screen.dart';
import 'package:sellerapplication/screens/details/details_screen.dart';


// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  MyProductsScreen.routeName: (context) => MyProductsScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  SettingsPage.routeName:(context)=>SettingsPage(),
  AddProductScreen.routeName:(context)=>AddProductScreen(),
};
