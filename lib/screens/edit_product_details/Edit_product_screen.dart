import 'package:flutter/material.dart';
import 'package:sellerapplication/components/coustom_bottom_nav_bar.dart';
import 'package:sellerapplication/enums.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/screens/edit_product_details/components/body.dart';




class EditProductScreen extends StatelessWidget {
  final Product product;
  static String routeName = "/Edit_product";

  const EditProductScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('تعديل بيانات المنتج',style: TextStyle(fontFamily:'Tajawal'),),
      ),
      body: Body(product: product,),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
