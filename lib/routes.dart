import 'package:flutter/widgets.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/screens/MyProducts/MyProducts_screen.dart';
import 'package:sellerapplication/screens/addproduct/add_product_screen.dart';
import 'package:sellerapplication/screens/balance_page/balancePage.dart';
import 'package:sellerapplication/screens/edit_profile_details/edit_profile_screen.dart';
import 'package:sellerapplication/screens/orderDetails/order_details_screen.dart';
import 'package:sellerapplication/screens/orders/orders_screen.dart';
import 'package:sellerapplication/screens/profile/profile_screen.dart';
import 'package:sellerapplication/screens/profile/components/setting.dart';
import 'package:sellerapplication/screens/sales/sales_screen.dart';
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
  MyProductsScreen.routeName: (context) => MyProductsScreen(),
  ProfileScreen.routeName:(context) => ProfileScreen(),
  SettingsPage.routeName:(context)=>SettingsPage(),
  AddProductScreen.routeName:(context)=>AddProductScreen(),
  EditProductScreen.routeName:(context)=>EditProductScreen(),
  OrdersScreen.routeName:(context)=>OrdersScreen(),
  SalesScreen.routeName:(context)=>SalesScreen(),
  BalancePage.routeName:(context)=>BalancePage(),
  EditProfileScreen.routeName:(context)=>EditProfileScreen(),
  OrderDetailsScreen.routeName:(context)=>OrderDetailsScreen(),
};

