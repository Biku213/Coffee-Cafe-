import 'package:coffee_store_ui/description/despage/hotcoffee/h1.dart';
import 'package:coffee_store_ui/description/despage/hotcoffee/h2.dart';
import 'package:coffee_store_ui/description/despage/hotcoffee/h3.dart';
import 'package:coffee_store_ui/description/despage/hotcoffee/h4.dart';
import 'package:coffee_store_ui/description/despage/hotcoffee/h5.dart';
import 'package:coffee_store_ui/description/despage/hotcoffee/h6.dart';

import 'package:flutter/material.dart';


class Hotcoffee extends StatefulWidget {
  @override
  _HotcoffeeState createState() => _HotcoffeeState();
}

class _HotcoffeeState extends State<Hotcoffee> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Hot Coffees",
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
                MaterialPageRoute(builder: (context) => H1()),
              );
            },
          child:Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/hot.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
            
                child: new Text(
              "Americano",
              style: TextStyle(
                  fontFamily: "cursive",
                   backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            
          ),
          ),
        
         InkWell(
             onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => H2()),
              );
            },
          child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/h4.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Choco-flavoured Coffee",
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
                MaterialPageRoute(builder: (context) => H3()),
              );
            },
          child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/h2.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Brewed Coffee",
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
                MaterialPageRoute(builder: (context) => H4()),
              );
            },
          child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/h1.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Mochas",
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
                MaterialPageRoute(builder: (context) => H5()),
              );
            },
          child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/h3.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Latte Coffee",
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
                MaterialPageRoute(builder: (context) => H6()),
              );
            },
          child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/h5.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Flat-white Coffee",
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
