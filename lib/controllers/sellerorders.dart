import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/Orders.dart';

class SellerOrders extends ChangeNotifier {
  bool loading = false;
  List<Order> orders;
  bool error = false;
  var ord;
  var producthelper = DatabaseHelper();
  loadData() async {
    try {
      loading = true;
      notifyListeners();

      var data = await producthelper.getSelleritemsOfAllOrders();

      loading = false;
     orders = data.map((e) => Order.fromJson(e)).toList();
     groupBy(orders, (v) => v.orderId);
     print(groupBy(orders, (v) => v.orderId));
     var userId = orders[0].sellerId;
     print('user id    = $userId');
     //print('object')
     //ord= await producthelper.getAllOrders();
     print(' new  ord = $ord');
     //print('ord.21 = ${ord.Iterable.where(ord[0])}');
     for(int i = 0 ; i< orders.length;i++){

     }
     var test = orders.where((order) => order.sellerId==userId).toList();
     print('test    = $test');
     print('test length   = ${test.length}');
     print('order 1 id    = ${test[0].id}');
      notifyListeners();
    } catch (err) {
      print(err);
      error = true;
      notifyListeners();


    }
  }

}

Map<Y, List<T>> groupBy<T, Y>(Iterable<T> itr, Y Function(T) fn) {
  return Map.fromIterable(itr.map(fn).toSet(),
      value: (i) => itr.where((v) => fn(v) == i).toList());
}