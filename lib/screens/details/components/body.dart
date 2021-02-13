//import 'package:sellerapplication/models/wishlist_item.dart';
import 'package:flutter/material.dart';
//import 'package:sellerapplication/models/cart_item.dart';
import 'package:sellerapplication/models/Product.dart';
import 'package:provider/provider.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/details/components/product_description.dart';
import 'package:sellerapplication/screens/details/components/top_rounded_container.dart';
import 'package:sellerapplication/screens/details/components/product_images.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key key, @required this.product}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  // CartItem _cartItem;
  // int numOfItems = 1;
  // Wishlistitem _wishlistitem;
   @override
  // void initState() {
  //   super.initState();
  //   _cartItem = CartItem.fromData(product: widget.product, quantity: 1);
  //   _wishlistitem = Wishlistitem.fromData(product: widget.product);
 // }

  // void _addTocart() {
  //   CartItem added;
  //   try {
  //     added = Provider.of<ProductProvider>(context, listen: false)
  //         .cart
  //         .cartItems
  //         .firstWhere((element) => element.product.id == widget.product.id);
  //   } catch (e) {
  //     print(e);
  //   }
  //   if (added == null) {
  //     Provider.of<ProductProvider>(context, listen: false).addToCart(_cartItem);
  //   } else {
  //     Provider.of<ProductProvider>(context, listen: false)
  //         .removeFromCart(_cartItem);
  //   }
  // }

  // void _addToWishlist() {
  //   Wishlistitem addedtowishlist;
  //   try {
  //     addedtowishlist = Provider.of<ProductProvider>(context, listen: false)
  //         .wishlist
  //         .wishlistitems
  //         .firstWhere((element) => element.product.id == widget.product.id);
  //   } catch (e) {
  //     print(e);
  //   }
  //   if (addedtowishlist == null) {
  //     Provider.of<ProductProvider>(context, listen: false)
  //         .addToWishlist(_wishlistitem);
  //   }
    // else{
    // Provider.of<ProductProvider>(context, listen: false).removeFromCart(_wishlistitem);
 //  }
  //}

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductProvider>(builder: (context, providerbody, child) {
      return SingleChildScrollView(
        child: Column(
          children: [
            ProductImages(product: widget.product),
            TopRoundedContainer(
              color: Colors.white,
              child: Column(
                children: [
                  ProductDescription(
                    product: widget.product,
                    pressOnSeeMore: () {},
                  ),
                  TopRoundedContainer(
                    color: Color(0xFFF6F7F9),
                    child: Column(
                      children: [
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                              padding: EdgeInsets.only(
                                left: SizeConfig.screenWidth * 0.15,
                                right: SizeConfig.screenWidth * 0.15,
                                bottom: getProportionateScreenWidth(40),
                                top: getProportionateScreenWidth(15),
                              ),
                              child: Column(children: [
                                // PrimaryButton(
                                //   text: providerbody.cart.cartItems
                                //           .contains(_cartItem)
                                //       ? "Added To Cart"
                                //       : "Add To Cart",
                                //   press: () {
                                //     _addTocart();
                                //   },
                                // ),
                                SizedBox(height: 15),
                                // PrimaryButton(
                                //   text: providerbody.wishlist.wishlistitems
                                //           .contains(_wishlistitem)
                                //       ? "Added To Wishlist"
                                //       : "Add To wishlist",
                                //   press: () {
                                //     _addToWishlist();
                                //   },
                                // ),
                              ])),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
