import 'package:coffee_store_ui/pages/favorite.dart';
import 'package:coffee_store_ui/utils/constants.dart';
import 'package:coffee_store_ui/widgets/cartitem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
// ignore: unused_import
import 'package:flutter_screenutil/flutter_screenutil.dart';

class H3 extends StatefulWidget {
  @override
  State<H3> createState() => _H3State();
}

class _H3State extends State<H3> {
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
                      "assets/images/h2.png",
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
                        "Effective for weight loss",
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
                            name: 'Brewed Coffee',
                            image: "assets/images/h2.png",
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
                          "Brewed Coffee",
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
                          Icon(Icons.star_outline_outlined, color: Colors.amber),
                        ],
                      ),
                       SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Brewed coffee is made by pouring hot water onto ground coffee beans, then allowing to brew...",
                        textAlign: TextAlign.center,
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                         maxLines: 3,
                         overflow: TextOverflow.ellipsis,
                       
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
                                        name: 'Brewed Coffee',
                                        quantity: '${count}',
                                        image: "assets/images/h2.png",
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
