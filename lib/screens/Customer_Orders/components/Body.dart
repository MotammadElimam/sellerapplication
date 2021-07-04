import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';

class Body extends StatefulWidget {
  Body({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: FutureBuilder(
          future: databaseHelper.showSellerOrders(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            print("hiiiiiiiiiiii" + snapshot.data.toString());
            if (snapshot.data == null) {
              return Container(
                  child: Center(child: CircularProgressIndicator()));
            } else if (snapshot.data.length == 0) {
              return Container(child: Center(child: Text("ليس هناك أي طلبات")));
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("  اسم العميل" +
                        snapshot.data[index].order.user.firstName +
                        " " +
                        snapshot.data[index].order.user.lastName),
                    subtitle: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Text(snapshot.data[index].productId+ "رقم العميل : " ),
                          // Text(snapshot.data[index].productId+"موقع العميل : "),
                          // Text("اسم المنتج" + snapshot.data[index].productId),
                          // Text("كمية المنتح" + snapshot.data[index].productId),
                          Text(snapshot.data[index].order.user.phoneNumber+"      رقم العميل"),
                          Text(snapshot.data[index].order.address+"               موقع العميل    "),
                          Text(snapshot.data[index].product.name+"               اسم المنتج :"),
                          Text("كمية المنتج :5 "),
                           Text("سعر المنتج :20 USD " ),
                        ],
                      ),
                    ),
                    onTap: () {},
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
