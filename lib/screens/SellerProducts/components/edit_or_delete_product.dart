import 'package:flutter/material.dart';
import 'package:sellerapplication/components/buttons/primary_button.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/screens/edit_product_details/components/Editproductform.dart';

class EditOrDeleteProductScreen extends StatelessWidget {
  final Product product;
  final  int id;
  static String routeName = "/EditOrDeleteProductScreen";

  const EditOrDeleteProductScreen({Key key, this.product, this.id}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit_or_delete_product"),
      ),
      body: Body(product: product),
    );
  }
}










class Body extends StatelessWidget {
  final Product product;

  const Body({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        PrimaryButton(
          text: "Edit Product",
          press: () {
        // Navigator.pushNamed(context, EditProductScreen.routeName);
          Navigator.push(context,
          MaterialPageRoute(builder: (context) => EditProductForm(product: product))
       );
          },
        ),
        SizedBox(height: 20,),
        PrimaryButton(text: "Delete Product", press: (){})
      ],
    );
  }
}
