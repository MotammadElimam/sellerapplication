import 'package:sellerapplication/components/buttons/primary_button.dart';
import 'package:sellerapplication/controllers/ProductProvider.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/models/Product/Product.dart';
import 'package:sellerapplication/models/Product/product_item.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/components/custom_surfix_icon.dart';
import 'package:sellerapplication/components/form_error.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:provider/provider.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'dart:io';
import 'dart:convert';


class AddProductForm extends StatefulWidget {

final Product product;
ProductItem _productItem;

 AddProductForm({Key key, @required this.product}) : super(key: key);



  @override
  _AddProductFormState createState() => _AddProductFormState();
}

class _AddProductFormState extends State<AddProductForm> {
  DatabaseHelper databaseHelper = new DatabaseHelper();

  File _image;
  final picker = ImagePicker();

  String msgStatus = '';
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  int id;
  String productName, description, adress;
  double price;

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  // This funcion will helps you to pick and Image from Gallery

  _onpress(){
    setState(() {
               databaseHelper.addData(
                 Provider.of<ProductProvider>(context, listen: false).productName,
                 Provider.of<ProductProvider>(context, listen: false).price,
                 Provider.of<ProductProvider>(context, listen: false).description,
                 Provider.of<ProductProvider>(context, listen: false).image,
                 
                 );
      
       });
  }

   



  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildProductNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPriceFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDescriptionFromField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          PrimaryButton(
              text: "pick Product",
              press: () {
                getImage();
              }),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          PrimaryButton(
              text: "Add Product",
              press: () {
                _onpress();
              })
        ],
      ),
    );
  }

  TextFormField buildDescriptionFromField() {
    return TextFormField(
      onSaved: (newValue) =>
          Provider.of<ProductProvider>(context, listen: false).description =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          //  removeError(error: kPhoneNumberNullError);
          Provider.of<ProductProvider>(context, listen: false).description =
              value;
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          //  addError(error: kPhoneNumberNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "description",
        hintText: "Enter the description of product",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildPriceFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) =>
          Provider.of<ProductProvider>(context, listen: false).price =
              double.parse(newValue),
      onChanged: (value) {
        if (value.isNotEmpty) {
          //removeError(error: kNamelNullError);
          Provider.of<ProductProvider>(context, listen: false).price =
              double.parse(value);
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "price",
        hintText: "Enter your product price",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildProductNameFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          Provider.of<ProductProvider>(context, listen: false).productName =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
          Provider.of<ProductProvider>(context, listen: false).productName =
              value;
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kNamelNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "product Name",
        hintText: "Enter your product name",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

 getImage(){
    setState(() {
              
                 Provider.of<ProductProvider>(context, listen: false).getImage();
      
       });
  }
}
