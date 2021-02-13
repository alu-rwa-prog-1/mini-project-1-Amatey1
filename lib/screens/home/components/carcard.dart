import "package:flutter/material.dart";

import '../../../constants.dart';


class allcars extends StatelessWidget {
  const allcars({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          Bodstyles(image : "assets/images/roadster.png",
            car: "SPORTS",
            press: () {},),
          Bodstyles(image : "assets/images/cybertroking2.png",
            car: "TRUCK",
            press: () {},),
          Bodstyles(image : "assets/images/sedan.jpeg",
            car: "SPORTS",
            press: () {},),
        ],
      ),
    );
  }
}

class Bodstyles extends StatelessWidget {
  const Bodstyles({
    Key key,
    this.image,
    this.press,
    this.car,

  }) : super(key: key);

  final String image ,car ;
  final Function press ;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.only(left: kdefaultPadding, top: kdefaultPadding/2,
        bottom: kdefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
              padding: EdgeInsets.all(kdefaultPadding/2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow:[
                  BoxShadow(
                    offset : Offset(0,10),
                    blurRadius: 50,
                    color: dPrimaryColor.withOpacity(0.23),
                  ),
                ],
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Text("$car",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold),)
                ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
