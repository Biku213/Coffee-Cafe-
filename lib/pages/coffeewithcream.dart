import 'package:coffee_store_ui/description/despage/coffeewithcream/cream1.dart';
import 'package:coffee_store_ui/description/despage/coffeewithcream/cream2.dart';
import 'package:coffee_store_ui/description/despage/coffeewithcream/cream3.dart';
import 'package:coffee_store_ui/description/despage/coffeewithcream/cream4.dart';
import 'package:coffee_store_ui/description/despage/coffeewithcream/cream5.dart';
import 'package:coffee_store_ui/description/despage/coffeewithcream/cream6.dart';
import 'package:flutter/material.dart';


class Coffeewithcream extends StatefulWidget {
  @override
  _CoffeewithcreamState createState() => _CoffeewithcreamState();
}

class _CoffeewithcreamState extends State<Coffeewithcream> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Coffee With Cream",
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
                MaterialPageRoute(builder: (context) => Cream1()),
              );
            },
          child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Starbucks whipped cream",
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
                MaterialPageRoute(builder: (context) => Cream2()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream1.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Mixed Cream Coffee",
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
                MaterialPageRoute(builder: (context) => Cream3()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream2.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Chocolate-Flavoured Coffee",
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
                MaterialPageRoute(builder: (context) => Cream4()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream3.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Italian-style Coffee",
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
                MaterialPageRoute(builder: (context) => Cream5()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream4.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Heavy Cream Coffee",
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
                MaterialPageRoute(builder: (context) => Cream6()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/cream5.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Irish Coffee",
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
