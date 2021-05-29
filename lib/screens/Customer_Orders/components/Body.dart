import 'package:flutter/material.dart';
import 'package:sellerapplication/controllers/databasehelper.dart';



class Body extends StatefulWidget {
  Body({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _BodyState createState() => new _BodyState();
}

class _BodyState extends State<Body> {
DatabaseHelper databaseHelper = new DatabaseHelper();
 

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
          child: FutureBuilder(
            future: databaseHelper.showSellerOrders(),
            builder: (BuildContext context, AsyncSnapshot snapshot){
              print("hiiiiiiiiiiii"+snapshot.data.toString());
              if(snapshot.data == null){
                return Container(
                  child: Center(
                    child: Text("ليس هناك أي طلبات")
                  )
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text("Product Name:"+ snapshot.data[index].id),
                      subtitle: Text("Product ID:"+snapshot.data[index].productId),
                      onTap: (){

                        // Navigator.push(context, 
                        //   new MaterialPageRoute(builder: (context) => DetailPage(snapshot.data[index]))
                       // );

                      },
                    );
                  },
                );
              }
            },
          ),
        ),
      );
  }
}

// class DetailPage extends StatelessWidget {

//   final User user;

//   DetailPage(this.user);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text(user.name),
//         )
//     );
//   }
// }


