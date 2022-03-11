import 'package:coffee_store_ui/description/despage/espresso/e1.dart';
import 'package:coffee_store_ui/description/despage/espresso/e2.dart';
import 'package:coffee_store_ui/description/despage/espresso/e3.dart';
import 'package:coffee_store_ui/description/despage/espresso/e4.dart';
import 'package:coffee_store_ui/description/despage/espresso/e5.dart';
import 'package:coffee_store_ui/description/despage/espresso/e6.dart';
import 'package:flutter/material.dart';


class Espresso extends StatefulWidget {
  @override
  _EspressoState createState() => _EspressoState();
}

class _EspressoState extends State<Espresso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          "Espresso",
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
                MaterialPageRoute(builder: (context) => E1()),
              );
            },
         child: Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/es.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Espresso shots",
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
                MaterialPageRoute(builder: (context) => E2()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/e1.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Lavazza",
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
                MaterialPageRoute(builder: (context) => E3()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/e2.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Iced Espresso",
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
                MaterialPageRoute(builder: (context) => E4()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/e3.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Fried Coffee",
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
                MaterialPageRoute(builder: (context) => E5()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/e4.jpg"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            
                child: new Text(
              "Mixed Espresso",
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
                MaterialPageRoute(builder: (context) => E6()),
              );
            },
         child:
          Container(
            decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage("assets/images/e5.png"),
                  fit: BoxFit.cover,
                ),
                border: Border.all(),
                borderRadius: BorderRadius.all(Radius.circular(15))),
           
                child: new Text(
              "Starbucks",
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
