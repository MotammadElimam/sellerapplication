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
              return Container(child: Center(child: Text("ليس هناك أي طلبات")));
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text("اسم العميل:" + snapshot.data[index].id),
                    subtitle:
                        Text("رقم العميل:" + snapshot.data[index].productId),
                    // subtitle: Text("موقع العميل:"+snapshot.data[index].productId),
                    // subtitle: Text("اسم المنتج:"+snapshot.data[index].productId),
                    // subtitle: Text("الكمية"+snapshot.data[index].productId),
                    // subtitle: Text("السعر"+snapshot.data[index].productId),
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
