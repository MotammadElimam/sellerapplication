import 'package:flutter/widgets.dart';
import 'package:sellerapplication/screens/Customer_Orders/Customer_Orders_Screen.dart';
import 'package:sellerapplication/screens/EditOrDeleteProduct/edit_or_delete_product.dart';
import 'package:sellerapplication/screens/contact%20us/Contact_Us.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/screens/SellerProducts/SellerProducts_screen.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';
import 'package:sellerapplication/screens/wallet/Wallet_Screen.dart';
import 'package:sellerapplication/screens/edit_profile_details/edit_profile_screen.dart';
import 'package:sellerapplication/screens/profile/profile_screen.dart';
import 'package:sellerapplication/screens/profile/components/setting.dart';
import 'package:sellerapplication/screens/splash/splash_scrreen.dart';
import 'package:sellerapplication/screens/sign_in/sign_in_screen.dart';
import 'package:sellerapplication/screens/forgot_password/forgot_password_screen.dart';
import 'package:sellerapplication/screens/sign_up/sign_up_screen.dart';
import 'package:sellerapplication/screens/complete_profile/complete_profile_screen.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:sellerapplication/screens/otp/otp_screen.dart';



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
  SellerProductScreen.routeName: (context) => SellerProductScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  SettingsPage.routeName:(context)=>SettingsPage(),
  AddProductScreen.routeName:(context)=>AddProductScreen(),
  EditProductScreen.routeName:(context)=>EditProductScreen(),
  WalleteScreen.routeName:(context)=>WalleteScreen(),
  EditProfileScreen.routeName:(context)=>EditProfileScreen(),
  EditOrDeleteProductScreen.routeName:(context)=>EditOrDeleteProductScreen(),
  CustomersOrdersScreen.routeName:(context)=>CustomersOrdersScreen(),
  Contact_Us.routeName:(context)=>Contact_Us()

};

