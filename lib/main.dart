import 'package:flutter/material.dart';
import 'package:sellerapplication/routes.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:sellerapplication/screens/sign_in/sign_in_screen.dart';
import 'package:sellerapplication/theme.dart';
import 'package:sellerapplication/screens/splash/splash_scrreen.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'controllers/ProductProvider.dart';
//hi

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool splash = false;
  String routeName = "";

  read() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      splash = prefs.getBool('splash') ?? false;
      final key = 'token';
      final value = prefs.get(key) ?? 0;
      print(value);
      if (value != '0') {
        routeName = HomeScreen.routeName;
      } else {
        routeName = SignInScreen.routeName;
      }
    });
  }

  @override
  void initState() {
    super.initState();
    read();
  }

  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        // home: SplashScreen(),
        // We use routeName so that we dont need to remember the name
        initialRoute:  SplashScreen.routeName,
        routes: routes,
      ),
    );
  }
}
