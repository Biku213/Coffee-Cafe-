import 'package:coffee_store_ui/pages/favorite.dart';
import 'package:coffee_store_ui/utils/constants.dart';
import 'package:coffee_store_ui/widgets/cartitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class M5 extends StatefulWidget {
  @override
  State<M5> createState() => _M5State();
}

class _M5State extends State<M5> {
  var isfavorite = false;
  var count = 1;
  var price = 15.99;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
           
            Positioned(
              top: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: 300.0,
                width: double.infinity,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      "assets/images/m4.jpg",
                      ),
                ),
                ),
               
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: kToolbarHeight,
                    horizontal: 16.0,
                  ),
                  alignment: Alignment.topLeft,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      FlutterIcons.keyboard_backspace_mdi,
                      color: Colors.white,
                      ),
                ),
                ),
            ),
            ),
           
            Positioned(
              top: 280.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                height: MediaQuery.of(context).size.height - 280.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 24.0,
                  ),
                  decoration: BoxDecoration(
                     color: Colors.white,
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                 
                  child: ListView(
                    //crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "coffee",
                        style: TextStyle(
                          color: kTextColor1,
                        ),
                      ),
                     
                      SizedBox(
                        height: 5.0,
                      ),
                      ListTile(
                        trailing:  GestureDetector(
                            child: isfavorite
                                ? Icon(
                                    Icons.favorite,
                                    color: Colors.red,
                                  )
                                : Icon(Icons.favorite_border_outlined)),
                        onTap: () {
                          Favorite(
                            name: 'Macchiato',
                            image: "assets/images/m4.jpg",
                          );
                          setState(() {
                            if (isfavorite) {
                              isfavorite = false;
                            } else {
                              isfavorite = true;
                            }
                          });
                        },
                        title: Text(
                          "Macchiato",
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star, color: Colors.amber),
                          Icon(Icons.star_outline, color: Colors.amber),
                        ],
                      ),
                       SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "The macchiato is an espresso coffee drink, topped with a small amount of foamed or steamed milk to allow the taste of the espresso to still shine through. A macchiato is perfect for those who find espresso too harsh in flavour, but a cappuccino too weak.",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                         maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                        // style: TextStyle(
                        //   color: kTextColor1,
                        //   height: 1.8,
                        ),
                     // ),
 
                   
                     
                     
                      SizedBox(
                        height: 5.0,
                      ),
                     
                     ListTile(
                       trailing:   Container(
                        alignment:Alignment.center,
                        width:125,
                        height: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(23),
                          border: Border.all(
                            color:Colors.grey,
                            style: BorderStyle.solid,
                          )
                         ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: () {
                             setState(() {
                                      count = count + 1;
                                      price = count * 15.99;
                                    });
                          }, child: Text("+")),
                          Text('${count}'),
                          TextButton(onPressed: () {
                             setState(() {
                                      count = count - 1;
                                      price = count * 15.99;
                                    });
                          }, child: Text("-")),
                        ],
                      ),
                      ),
                       title: Text('\$${price}', style: TextStyle(
                         fontSize: 15,
                         fontWeight: FontWeight.bold,
                         ),
                         ),
                     ),
                     SizedBox(
                        height: 5.0,
                      ),
                      
                       SizedBox(
                        height: 5.0,
                      ),
                      SizedBox(
                        height: 37,
                        width: double.infinity,
                        // ignore: deprecated_member_use
                        child: FlatButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(23),
                            ),
                          color: Theme.of(context).primaryColorDark,
                          textColor: Colors.white,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => CartItem(
                                        name: 'Macchiato',
                                        quantity: '${count}',
                                        image: "assets/images/m4.jpg",
                                        price: '${price}',
                                      )),
                            );
                          },
                          child: Text("Add To Cart", style: TextStyle(
                            fontSize: 15,
                          ),
                          ),
                      ),

                     
                      
                       ),
                        ],
                  ),
                ),
              ),
            )
          ],
        ),
      
      ),
   
    );
  }
}

Widget doubleColText(String textOne, String textTwo) {
  return Padding(
    padding: EdgeInsets.symmetric(
      vertical: 12.0,
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          textOne,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
          ),
        ),
        Text(
          textTwo,
          style: TextStyle(
            color: kPrimaryColor,
          ),
        ),
      ],
    ),
  );
}
