import 'package:coffee_store_ui/pages/shop_page.dart';
import 'package:coffee_store_ui/widgets/coffeecard.dart';
import 'package:flutter/material.dart';

import '../constant.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    List<String> urls = [
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSlWVMQoKQQRBbMdgLj9YiQMgU07mRdgxc51Q&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTkFvE1f8co_MopSKmpTNpq-gkHAjAmxGaP6Q&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVg1ztV0hFnAbHrTDjRq9tW2qCjaT0m7V2rg&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRmGNFzRCAJ_H-5vQHE46fuzVhs8dz4okrleQ&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGLM2hxn8KemCJ4-bAMfu0aE9wwOdoQhrLrw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTo8N2NsTesEGRMCRJTI29haQQAkoLBHcm8Vw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS5COyrfwmoCvR0pO4Rl2UQDd_nT9W4_uu_6Q&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnHzdtrpLJhOrF7S3j0T7WriqSrnBLobWxKw&usqp=CAU",
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRljPFTv8NWUZNC9acSzj7uY8j2AmL2vxvPzQ&usqp=CAU",
      "data:image/jpeg;base64,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",
    ];
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        elevation: 0,
        foregroundColor: Colors.black,
        title: Text(
          "Coffee Cafe",
          style: TextStyle(
              fontFamily: "cursive", fontSize: 20, color: Colors.black),
        ),
        backgroundColor: kBackgroundColor,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Center(child: Image.asset('images/offer.jpg')),
              const Padding(
                padding: EdgeInsets.only(top: 150.0),
                // child: Center(
                //     child: Text('Not sure what to drink?',
                //         style: TextStyle(
                //           color: kBackgroundColor,
                //           fontWeight: FontWeight.bold,
                //           fontSize: 30.0,
                //         ))),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 450.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: kBackgroundColor,
                      onPrimary: Colors.blue,
                      onSurface: Colors.blueAccent,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      minimumSize: const Size(130, 50),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShopPage()),
                      );
                    },
                    child: const Text("Hey! Click here to see menu",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                ),
              )
            ]),

            Container(
              alignment: Alignment.topLeft,
              child: const Padding(
                padding: EdgeInsets.only(top: 30.0, bottom: 30.0, left: 20.0),
                child: Text('Popular',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 35.0)),
              ),
            ),

            // ignore: sized_box_for_whitespace
            Container(
              margin: const EdgeInsets.only(left: 20.0),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  //Now let's add and test our first card
                  // coffeeCard(urls[9], "",5),
                  coffeeCard(urls[5], "Espresso", 5),
                  coffeeCard(urls[2], "Black Coffee", 4),
                  coffeeCard(urls[6], "Oat Milk Latte", 4),
                  coffeeCard(urls[8], "Coffee With Lemon", 5),
                  coffeeCard(urls[3], "Cold Coffee", 4),
                  coffeeCard(urls[0], "Mocha Hot Coffee", 3),
                  coffeeCard(urls[4], "Whipped Coffee", 4),
                  coffeeCard(urls[1], "Irish Coffee", 4),
                  //  coffeeCard(urls[10], "Italy Coffee",4),
                ],
              ),
            ),
          ],
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   unselectedItemColor: kUnselectedColor,
      //   selectedItemColor: kPrimaryColor,
      //   items: const [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: "Home",
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.category_rounded,
      //       //  onPressed: () {
      //       //       Navigator.push(
      //       //                   context,
      //       //                   MaterialPageRoute(
      //       //                       builder: (context) => ShopPage(),
      //       //                            ),
      //       //                 );
      //       //               },
      //       ),
      //      label: "Categories",

      //     ),
      //     BottomNavigationBarItem(

      //       icon: Icon(Icons.favorite),
      //       label: "See all Favorites",

      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.person_rounded),
      //       label: "Profile",
      //     ),
      //   ],
      // ),

//       int _selectedIndex = 0; //New
// BottomNavigationBar(
//   items: const <BottomNavigationBarItem>[
//     ...
//   currentIndex: _selectedIndex, //New
//   onTap: _onItemTapped,         //New
// )
// //New
// void _onItemTapped(int index) {
//   setState(() {
//     _selectedIndex = index;
//   });
// }
    );
  }
}
