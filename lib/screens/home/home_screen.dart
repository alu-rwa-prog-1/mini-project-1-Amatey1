import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:amatey1_miniproject1_wk5/screens/home/components/body.dart';
class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Middle(),
      drawer: Drawer(
        child: Text("tes",
        style: TextStyle(
            color: Colors.black),
      ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 35,)
        ,
        height: 35,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow:[
            BoxShadow( offset: Offset(0,-0.5),
            blurRadius:10,
            ),
          ]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon:Icon(
              Icons.home,
              color: Colors.deepOrange,
              size: 30.0,
            ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(icon:Icon(
              Icons.favorite,
              color: Colors.deepOrange,
              size: 30.0,
            ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(icon:Icon(
              Icons.shopping_cart,
              color: Colors.deepOrange,
              size: 30.0,
            ),
              onPressed: () {
                // do something
              },
            ),
            IconButton(icon:Icon(
              Icons.account_circle_sharp,
              color: Colors.deepOrange,
              size: 30.0,
            ),
              onPressed: () {
                // do something
              },
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
      centerTitle: true,
      title: Center(child: Image.asset('assets/images/teslalogo.png',height: 50.0 , )),
      actions:<Widget>[Row(
        children: [
          IconButton(
            icon: Icon(
          Icons.search,
          color: Colors.white,
          ),
     onPressed: () {
          // do something
    },
          ),
          IconButton(
            icon: Icon(
              Icons.notification_important_rounded,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
        ],
      )
      ],
    );
  }
}
