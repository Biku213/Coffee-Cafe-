import 'package:coffee_store_ui/pages/blackcoffee.dart';
import 'package:coffee_store_ui/pages/coffeewithcream.dart';
import 'package:coffee_store_ui/pages/coffeewithmilk.dart';
import 'package:coffee_store_ui/pages/coldcoffee.dart';
import 'package:coffee_store_ui/pages/espresso.dart';
import 'package:coffee_store_ui/pages/favorite.dart';
import 'package:coffee_store_ui/pages/hotcoffee.dart';
import 'package:coffee_store_ui/widgets/cartitem.dart';
import 'package:flutter/material.dart';

class ShopPage extends StatefulWidget {
  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        foregroundColor: Colors.black,
        title: Text(
          "Coffee Cafe",
          style: TextStyle(
              fontFamily: "cursive", fontSize: 20, color: Colors.black),
        ),
        actions: <Widget>[
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Favorite(),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CartItem(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        crossAxisCount: 2,
        children: <Widget>[
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Hotcoffee()),
              );
            },
            child: Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("assets/images/hot.jpg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              // child: Center(
              child: new Text(
                "Hot Coffee",

                style: TextStyle(
                    fontFamily: "cursive",
                    backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
                //),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Coldcoffee()),
              );
            },
            child: Container(
              decoration: new BoxDecoration(
                  image: new DecorationImage(
                    image: AssetImage("assets/images/cold coffee.jpeg"),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: new Text(
                "Cold Coffee",
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
                MaterialPageRoute(builder: (context) => Blackcoffee()),
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
                "Black Coffee",
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
                MaterialPageRoute(builder: (context) => Espresso()),
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
                  "Espresso",
                  style: TextStyle(
                      fontFamily: "cursive",
                      backgroundColor: Colors.black54,
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold),
                )),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Coffeewithmilk()),
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
                "Coffee With Milk",
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
                MaterialPageRoute(builder: (context) => Coffeewithcream()),
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
                "Coffee With Cream",
                style: TextStyle(
                    fontFamily: "cursive",
                    backgroundColor: Colors.black54,
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
