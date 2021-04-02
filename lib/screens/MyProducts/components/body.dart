import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellerapplication/models/MyProducts/MyProductItem.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/MyProducts/components/MyProduct_card.dart';
import 'package:provider/provider.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  MyProductItem myProductItem = MyProductItem();
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, myproductbody, child) {
      return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: FutureBuilder<List<dynamic>>(
            future: databaseHelper.getmyProducts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(snapshot.data[index]);
                      myProductItem.id = snapshot.data[index]["id"];
                      myProductItem.product = Product();
                      myProductItem.product.id = snapshot.data[index]["id"];
                      myProductItem.product.productName = snapshot.data[index]["name"];
                      myProductItem.product.price = snapshot.data[index]["price"];
                      myProductItem.product.description = snapshot.data[index]["desc"];
                       myProductItem.product.images = <String>[];
                      myProductItem.product.images.add(snapshot.data[index]["image"]);
                      
                      return Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Dismissible(
                          key: Key(snapshot.data[index]["name"] +
                              snapshot.data[index]["id"].toString()),
                          direction: DismissDirection.endToStart,
                          background: Container(
                            padding: EdgeInsets.symmetric(horizontal: 20),
                            decoration: BoxDecoration(
                              color: Color(0xFFFFE6E6),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Row(
                              children: [
                                Spacer(),
                                SvgPicture.asset("assets/icons/Trash.svg"),
                              ],
                            ),
                          ),
                          child: MyProductsCard(myProductItem: myProductItem),
                        ),
                      );
                    });
              } else {
                return Center(child: CircularProgressIndicator());
              }
            },
          ));
    });
  }
}
