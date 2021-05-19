import 'package:flutter/material.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/SellerProducts/SellerProductsItem.dart';
import 'package:sellerapplication/screens/SellerProducts/components/edit_or_delete_product.dart';
import 'package:sellerapplication/screens/edit_product_details/Edit_product_screen.dart';
import 'package:sellerapplication/size_config.dart';


// ignore: must_be_immutable
class SellerProductCard extends StatelessWidget {
  final String serverUrl = "https://motamed.eanqod.website/storage/product/";
  final Product product;
  final SellerProductsItem sellerProductsItem;
  SellerProductCard({
    Key key,
    this.sellerProductsItem, this.product
  }) : super(key: key);

  // MyProductsItem myProductsItem;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
       // Navigator.pushNamed(context, EditOrDeleteProductScreen.routeName);
       Navigator.push(context,
       MaterialPageRoute(builder: (context) => EditOrDeleteProductScreen(sellerProductsItem: sellerProductsItem,))
       );
      },
      child: Row(
        children: [
          SizedBox(
            width: 88,
            child: AspectRatio(
              aspectRatio: 0.88,
              child: Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(10)),
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Image.network(serverUrl+sellerProductsItem.product.image,
                fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                sellerProductsItem.product.productName,
                style: TextStyle(color: Colors.black, fontSize: 16),
                maxLines: 2,
              ),
              SizedBox(height: 10),
              Text.rich(
                TextSpan(
                  text: "\$${sellerProductsItem.product.price}",
                  style: TextStyle(
                      fontWeight: FontWeight.w600, color: kPrimaryColor),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
