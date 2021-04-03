import 'package:flutter/material.dart';
import 'package:sellerapplication/screens/requests/components/body.dart';



class RequestsScreen extends StatelessWidget {
  static String routeName = "/Requests";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Requests",
            style: TextStyle(color: Colors.black),
          ),
        ],
      ),
    );
  }
}
