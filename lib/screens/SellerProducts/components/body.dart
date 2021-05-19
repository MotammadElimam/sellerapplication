import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/SellerProducts/SellerProductsItem.dart';
import 'package:sellerapplication/screens/SellerProducts/components/SellerProductCard.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:provider/provider.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';

class Body extends StatefulWidget {
  final SellerProductsItem sellerProductsItem ;

  const Body({Key key, this.sellerProductsItem}) : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  
  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, myproductbody, child) {
      return Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: FutureBuilder<List<dynamic>>(
            future: databaseHelper.getSellerProducts(),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    padding: EdgeInsets.all(8),
                    itemCount: snapshot.data.length,
                    itemBuilder: (BuildContext context, int index) {
                      print(snapshot.data[index]);
                     // myProductsItem.id = snapshot.data[index]["id"];
                      widget.sellerProductsItem.product = Product();
                     widget.sellerProductsItem.product.id = snapshot.data[index]["id"];
                      widget.sellerProductsItem.product.productName =
                          snapshot.data[index]["name"];
                      widget.sellerProductsItem.product.price =
                          snapshot.data[index]["price"];
                     widget.sellerProductsItem.product.description =
                          snapshot.data[index]["desc"];
                      widget.sellerProductsItem.product.image = snapshot.data[index]["image"];

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
                          child: SellerProductCard(sellerProductsItem: widget.sellerProductsItem),
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
