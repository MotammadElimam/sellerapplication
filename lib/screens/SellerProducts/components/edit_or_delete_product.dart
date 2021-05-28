import 'package:flutter/material.dart';
import 'package:sellerapplication/components/buttons/primary_button.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/SellerProducts/SellerProductsItem.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/screens/edit_product_details/components/Editproductform.dart';

class EditOrDeleteProductScreen extends StatelessWidget {
  final SellerProductsItem sellerProductsItem;
  static String routeName = "/EditOrDeleteProductScreen";

  const EditOrDeleteProductScreen({Key key, this.sellerProductsItem})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit_or_delete_product"),
      ),
      body: Body(
        sellerProductsItem: sellerProductsItem,
      ),
    );
  }
}

class Body extends StatefulWidget {
  final SellerProductsItem sellerProductsItem;

  const Body({Key key, this.sellerProductsItem}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          PrimaryButton(
            text: "Edit Product",
            press: () {
              // Navigator.pushNamed(context, EditProductScreen.routeName);
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        EditProductScreen(product: widget.sellerProductsItem.product),
                  ));
            },
          ),
          SizedBox(
            height: 20,
          ),
          PrimaryButton(
              text: "Delete Product",
              press: () {
                databaseHelper.deleteData(widget.sellerProductsItem.product.id);
              })
        ],
      ),
    );
  }
}
