import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:io';
import 'package:shared_preferences/shared_preferences.dart';

class DatabaseHelper {
  final String serverUrl = "http://192.168.43.92:8000";
  var status;
  var token;

  loginData(String email, String password) async {
    String logininformation = "email=" + "$email" + "&password=" + "$password";

    print(logininformation);
    String myUrl = "$serverUrl/seller_api/login?$logininformation";
    final response = await http.get(
      myUrl,
      headers: {'Accept': 'application/json'},
    );
    status = response.body.contains('error');

    var data = json.decode(response.body);

    print(response.statusCode);
    print(response.body);

    if (status) {
      print('data : ${data["error"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  registerData(String email,String password,String confirmPassword,String firstName,String lastName,String phoneNumber,String adress)  async {
    
    Map information = {
      "email": "$email",
      "password": "$password",
      "confirm_password": "$confirmPassword",
      "first_name": "$firstName",
      "last_name": "$lastName",
      "phone_number": "$phoneNumber",
      "adress": "$adress",
    };


    print(information);
    String myUrl = "$serverUrl/seller_api/register";
    final response = await http.post(myUrl,
        headers: {'Accept': 'application/json'}, body: information);
       status = response.body.contains('error');

    var data = json.decode(response.body);
    print(response.statusCode);
    print(response.body);

    if (status) {
      print('data : ${data["error"]}');
    } else {
      print('data : ${data["token"]}');
      _save(data["token"]);
    }
  }

  Future <List<dynamic>>  getSellerProducts() async{

    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    String myUrl = "$serverUrl/seller_api/getallSellerproducts/";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
    });
    print(response.body);
    return jsonDecode(response.body);
  }

//   void deleteData(int id) async {
//     final prefs = await SharedPreferences.getInstance();
//     final key = 'token';
//     final value = prefs.get(key ) ?? 0;
//
//     String myUrl = "$serverUrl/products/$id";
//     http.delete(myUrl,
//         headers: {
//           'Accept':'application/json',
//           'Authorization' : 'Bearer $value'
//     } ).then((response){
//       print('Response status : ${response.statusCode}');
//       print('Response body : ${response.body}');
//     });
//   }*/

 String getFileBase64(File image) {
  if (image != null) {
    List<int> bytes = image.readAsBytesSync();
    String base64Image = base64Encode(bytes);
    return base64Image;
  }
  return null;
}

  void addData(String name, double price, String desc, File image) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;


     Map productdata = {
      "name": "$name",
      "price": "$price",
      "desc": "$desc",
      "image": getFileBase64(image),
     };
     print(productdata);



    String myUrl = "$serverUrl/seller_api/addproduct";
    final response = await http.post(myUrl,
    headers: {
      'Accept': 'application/json',
      'Authorization': 'Bearer $value'}, 
      body: productdata );



      print("hi ${response.statusCode}");

    status = response.body.contains('error');
      var data = json.decode(response.body);

      if (status) {
        print('data : ${data["error"]}');
      } else {
        print('data : ${data["token"]}');
        _save(data["token"]);
      }
  
  }
 
  void UpdateData(int id ,   String name, double price, String desc, File image) async {
   // int id = 4;
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

     Map productdata = {
      "name": "$name",
      "price": "$price",
      "desc": "$desc",
      "image": getFileBase64(image),
     };
     print(productdata);

    String myUrl = "$serverUrl/seller_api/updateproduct/$id";
    http.put(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
        },
        body: productdata
        ).then((response){
      print('Response status : ${response.statusCode}');
      print('Response body : ${response.body}');
    });
  }


  Future <List<dynamic>>  getSelleritemsOfAllOrders() async{
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    String myUrl = "$serverUrl/seller_api/getallSellerorders/";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
          'Authorization' : 'Bearer $value'
    });
    print(response.body);
    return jsonDecode(response.body);

  }




  Future <List<dynamic>>  getAllOrders() async{
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key ) ?? 0;

    String myUrl = "$serverUrl/seller_api/ShowAllOrders/";
    http.Response response = await http.get(myUrl,
        headers: {
          'Accept':'application/json',
    });
    print(response.body);
    return jsonDecode(response.body);

  }





  _save(String token) async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = token;
    prefs.setString(key, value);
  }

  read() async {
    final prefs = await SharedPreferences.getInstance();
    final key = 'token';
    final value = prefs.get(key) ?? 0;
    print('read : $value');
  }
}
