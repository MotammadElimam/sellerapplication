import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/screens/home/components/body.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/screens/sign_in/sign_in_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeScreen extends StatelessWidget {
  static String routeName = "/home";
  
  
  
  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }
 
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
          title:  Text('HomePage'),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.cancel),
              onPressed: (){
                _save('0');
              Navigator.pushNamed(context, SignInScreen.routeName);
              },
            )
          ],
        ),
      body: Body(),
       bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}