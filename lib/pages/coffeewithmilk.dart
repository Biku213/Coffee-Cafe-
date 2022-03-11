import 'package:coffee_store_ui/description/despage/coffeewithmilk/m1.dart';
import 'package:coffee_store_ui/description/despage/coffeewithmilk/m2.dart';
import 'package:coffee_store_ui/description/despage/coffeewithmilk/m3.dart';
import 'package:coffee_store_ui/description/despage/coffeewithmilk/m4.dart';
import 'package:coffee_store_ui/description/despage/coffeewithmilk/m5.dart';
import 'package:coffee_store_ui/description/despage/coffeewithmilk/m6.dart';
import 'package:flutter/material.dart';


class Coffeewithmilk extends StatefulWidget {
  @override
  _CoffeewithmilkState createState() => _CoffeewithmilkState();
}

class _CoffeewithmilkState extends State<Coffeewithmilk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Coffee With Milk",
          style: TextStyle(
            fontFamily: "cursive",
            fontSize: 20,
          ),
        ),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 15,
        crossAxisCount: 1,
        children: <Widget>[
           InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M1()),
              );
            },
         child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/milk.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Chilled Coffee",
              style: TextStyle(
                  fontFamily: "cursive",
                    backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
           
          ),),
         
         InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M2()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/m1.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Almond Milk Coffee",
              style: TextStyle(
                  fontFamily: "cursive",
                   backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
           
          ),),

          InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M3()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/m2.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Latte with Almond Milk",
              style: TextStyle(
                  fontFamily: "cursive",
                    backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            
          ),),

          InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M4()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/m3.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Fruit-mixed milk coffee",
              style: TextStyle(
                  fontFamily: "cursive",
                   backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
           
          ),),

          InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M5()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/m4.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Macchiato",
              style: TextStyle(
                  fontFamily: "cursive",
                    backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
           
          ),),

          InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => M6()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/m5.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Milk Coffee",
              style: TextStyle(
                  fontFamily: "cursive",
                   backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
           
          ),),
        ],
      ),
    );
  }
}
