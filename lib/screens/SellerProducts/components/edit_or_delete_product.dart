import 'package:flutter/material.dart';
import 'package:sellerapplication/components/buttons/primary_button.dart';
import 'package:sellerapplication/models/MyProducts/MyProductsItem.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/screens/edit_product_details/components/Editproductform.dart';

class EditOrDeleteProductScreen extends StatelessWidget {
  final Product product;
  final MyProductsItem myProductsItem;
  final  int id;
  static String routeName = "/EditOrDeleteProductScreen";

  const EditOrDeleteProductScreen({Key key, this.product, this.id, this.myProductsItem}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit_or_delete_product"),
      ),
      body: Body(myProductsItem: myProductsItem,),
    );
  }
}










class Body extends StatelessWidget {
  final Product product;
  final MyProductsItem myProductsItem;

  const Body({Key key, this.product, this.myProductsItem}) : super(key: key);
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
          MaterialPageRoute(builder: (context) => EditProductForm(myProductsItem: myProductsItem,))
       );
          },
        ),
        SizedBox(height: 20,),
        PrimaryButton(text: "Delete Product", press: (){})
      ],
    );
  }
}
