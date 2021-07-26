import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/User/User.dart';

class UserProvider extends ChangeNotifier{
  bool loading = false;
 List <User> user;
  bool error = false;
  var userhelper = DatabaseHelper();



  loadData() async {
    try {
      loading = true;
      notifyListeners();

      var data = await userhelper.showUserByID(1)();

      loading = false;
      user = data.map((e) => User.fromMap(e));
      notifyListeners();
    } catch (err) {
      print(err);
      error = true;
      notifyListeners();
    }
  }



}