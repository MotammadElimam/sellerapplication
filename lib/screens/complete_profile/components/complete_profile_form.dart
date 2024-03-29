import 'package:sellerapplication/components/buttons/primary_button.dart';
import 'package:sellerapplication/controllers/SellerProductProvider.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';
import 'package:sellerapplication/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:sellerapplication/components/custom_surfix_icon.dart';
import 'package:sellerapplication/components/form_error.dart';
import 'package:sellerapplication/constants.dart';
import 'package:sellerapplication/size_config.dart';
import 'package:provider/provider.dart';

class CompleteProfileForm extends StatefulWidget {
  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  DatabaseHelper databaseHelper = DatabaseHelper();
  String msgStatus = '';
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  //TextEditingController _firstName = new TextEditingController();
  String firstName;
  String lastName;
  String phoneNumber;
  String address;

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

  _onpress() {
    setState(() {
      if (_formKey.currentState.validate()) {
        databaseHelper
            .registerData(
          Provider.of<SellerProductProvider>(context, listen: false).email,
          Provider.of<SellerProductProvider>(context, listen: false).password,
          Provider.of<SellerProductProvider>(context, listen: false).confirmPassword,
          Provider.of<SellerProductProvider>(context, listen: false).firstName,
          Provider.of<SellerProductProvider>(context, listen: false).lastName,
          Provider.of<SellerProductProvider>(context, listen: false).phoneNumber,
          Provider.of<SellerProductProvider>(context, listen: false).address,
        )
            .whenComplete(() {
          if (databaseHelper.status) {
            _showDialog();
            msgStatus = 'الرجاء التحقق من صحة البريد الالكتروني او الرقم السري';
          } else {
            Navigator.pushNamed(context, HomeScreen.routeName);
          }
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildFirstNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildLastNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          PrimaryButton(
              text: "تأكيد التسجيل",
              press: () {
                _onpress();
              })
        ],
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          Provider.of<SellerProductProvider>(context, listen: false).address =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kAddressNullError);
          Provider.of<SellerProductProvider>(context, listen: false).address = value;
        }
        return null;
      },
      //controller: ,
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kAddressNullError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "العنوان",
        hintText: "ادخل العنوان",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon:
            CustomSurffixIcon(svgIcon: "assets/icons/Location point.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      keyboardType: TextInputType.phone,
      onSaved: (newValue) =>
          Provider.of<SellerProductProvider>(context, listen: false).phoneNumber =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPhoneNumberNullError);
        }
          Provider.of<SellerProductProvider>(context, listen: false).phoneNumber =
              value;
        
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPhoneNumberNullError);
          return "";
        }
        else if (value.length < 10 && value.length > 10) {
          addError(error: kNumbError);
          return "";
        }
         else if (value.length == 10 ) {
          removeError(error: kNumbError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "رقم الهاتف",
        hintText: "ادخل رقم الهاتف",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }

  TextFormField buildLastNameFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          Provider.of<SellerProductProvider>(context, listen: false).lastName =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
          Provider.of<SellerProductProvider>(context, listen: false).lastName = value;
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "اسم العائلة",
        hintText: "ادخل اسم العائلة",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildFirstNameFormField() {
    return TextFormField(
      onSaved: (newValue) =>
          Provider.of<SellerProductProvider>(context, listen: false).firstName =
              newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNamelNullError);
          Provider.of<SellerProductProvider>(context, listen: false).firstName =
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
        labelText: "الاسم الاول",
        hintText: "ادخل الاسم الاول",
        // If  you are using latest version of flutter then lable text and hint text shown like this
        // if you r using flutter less then 1.20.* then maybe this is not working properly
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  void _showDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: new Text('لم يتم التسجيل'),
            content: new Text("تأكد من صحة البيانات , البريد الالكتروني الذي ادخلته موجود مسبقا "),
            actions: <Widget>[
              // ignore: deprecated_member_use
              new RaisedButton(
                child: new Text(
                  'إغلاق',
                ),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
