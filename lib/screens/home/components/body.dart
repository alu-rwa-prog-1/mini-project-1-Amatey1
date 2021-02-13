import 'package:amatey1_miniproject1_wk5/screens/home/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:amatey1_miniproject1_wk5/constants.dart';
import 'package:amatey1_miniproject1_wk5/screens/home/components/carcard.dart';

class Middle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size ;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(height:10,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Row(
              children: [
                Headertile(
                  text : "Models",),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10) ) ,
                    color:dPrimaryColor,
                    onPressed: (){}, child: Text("see more",
                    style: TextStyle(color: Colors.white,)
                ),
                ),
              ],
          ),
          ),
          allcars(),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Row(
              children: [
                Headertile(
                  text : "Featured",),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10) ) ,
                  color:dPrimaryColor,
                  onPressed: (){}, child: Text("learn more",
                    style: TextStyle(color: Colors.white,)
                ),
                ),
              ],
            ),
          ),
          SizedBox(height:10,),
          Container(
            width: size.width*0.9 ,
            child: Image(image: AssetImage("assets/images/tesla.gif")) ,
          ),
          SizedBox(height:30,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: kdefaultPadding),
            child: Row(
              children: [
                Headertile(
                  text : " HotSellers",),
                Spacer(),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10) ) ,
                  color:dPrimaryColor,
                  onPressed: (){}, child: Text("shop",
                    style: TextStyle(color: Colors.white,)
                ),
                ),
              ],
            ),
          ),
        SizedBox(height: 30,),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: <Widget> [
            CarFinal(image:"assets/images/modely.png",
            texty: "Model Y",
            price: 50000,
            press: () {},),
            CarFinal(image:"assets/images/modelx.png",
              texty: "Model Y",
              price: 60000,
                press: () {}),
            CarFinal(image:"assets/images/models.png",
              texty: "Model Y",
              price: 30000,
                press: () {}),
          ],
        ),
      ),
        ],
      ),
    );
  }
}

class CarFinal extends StatelessWidget {
  const CarFinal({
    Key key, this.texty, this.price, this.press, this.image,

  }) : super(key: key);

  final String texty , image;
  final int price;
  final Function press;


  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: kdefaultPadding, top: kdefaultPadding/2,
        bottom: kdefaultPadding * 2.5,
      ),
      width: size.width*0.4,
      child: Column(
        children: <Widget>[Image.asset("$image"),
        GestureDetector(
          onTap: press,
          child: Container( width: size.width*0.4, height:20, color:Colors.grey[100],
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Text("$texty",
              ),
            ),
          ),
        ),
        Container(width: size.width*0.4, height:20, color:Colors.grey[100],
          child: Align(
            alignment: Alignment.center,
            child: Text("\$$price",
                style: TextStyle(color: Colors.red, fontWeight:FontWeight.bold ),
            ),
          ),
        ),
        ],
      ),
      );
  }
}

class Headertile extends StatelessWidget {
  const Headertile({
    Key key,
    this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: Stack(
        children : <Widget>[
          Text(text,
           style: TextStyle(fontSize: 25,
           fontWeight: FontWeight.bold),
          ),
        ],
      )
    );
  }
}
