import 'package:coffee_store_ui/description/despage/blackcoffee/item1.dart';
import 'package:coffee_store_ui/description/despage/blackcoffee/item2.dart';
import 'package:coffee_store_ui/description/despage/blackcoffee/item3.dart';
import 'package:coffee_store_ui/description/despage/blackcoffee/item4.dart';
import 'package:coffee_store_ui/description/despage/blackcoffee/item5.dart';
import 'package:coffee_store_ui/description/despage/blackcoffee/item6.dart';
import 'package:flutter/material.dart';


class Blackcoffee extends StatefulWidget {
  @override
  _BlackcoffeeState createState() => _BlackcoffeeState();
}

class _BlackcoffeeState extends State<Blackcoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Black Coffees",
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
                MaterialPageRoute(builder: (context) => Item1()),
              );
            },
         child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/blck.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Turkish Coffee",
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
                MaterialPageRoute(builder: (context) => Item2()),
              );
            },
         child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/black.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Black-tie Coffee",
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
                MaterialPageRoute(builder: (context) => Item3()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/b1.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Black Coffee With Lemon",
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
                MaterialPageRoute(builder: (context) => Item4()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/b2.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Black Coffee With Ice",
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
                MaterialPageRoute(builder: (context) => Item5()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/b3.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Sugar Free Coffee",
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
                MaterialPageRoute(builder: (context) => Item6()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/b4.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Cafe Mocha",
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
