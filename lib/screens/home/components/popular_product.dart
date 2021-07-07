import 'package:sellerapplication/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/HomeProductProvider.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:sellerapplication/screens/home/components/section_title.dart';
import 'package:provider/provider.dart';

class HomeProduct extends StatefulWidget {
  @override
  _HomeProductState createState() => _HomeProductState();
}

class _HomeProductState extends State<HomeProduct> {
  HomeProductsProvider homeProductProvider = HomeProductsProvider();
  @override
  void initState() {
    super.initState();
    homeProductProvider.loadData();
    homeProductProvider.addListener(() {
      print("is loading ${homeProductProvider.loading}");
      print("is error ${homeProductProvider.error}");
      print("is data ${homeProductProvider.products}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
              title: "كل المنتجات",
              press: () {
                homeProductProvider.loadData();
              }),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        ChangeNotifierProvider<HomeProductsProvider>(
          create: (context) => homeProductProvider,
          child: Consumer<HomeProductsProvider>(
            builder: (context, data, child) {
              print("################################################Data : ${data.products}");
              if (data.loading)
                return Center(
                  child: CircularProgressIndicator(),
                );
              else if (data.error)
                return Text("Error");
              else if (data.products != null)
                return Container(
                 height: 220,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ProductCard(
                          product: data.products[index], press: () {});
                    },
                    itemCount: data.products.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                  ),
                );
              else
                return Container();
            },
          ),
        )
      ],
    );
  }
}
