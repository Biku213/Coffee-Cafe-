import 'package:coffee_store_ui/pages/bill.dart';
import 'package:flutter/material.dart';

class CartItem extends StatefulWidget {
  final name;
  final quantity;
  final image;
  final price;

  CartItem({
    this.name,
    this.quantity,
    this.image,
    this.price,
  });

  @override
  _CartItemState createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white60,
        title: Text(
          "Your Cart Item",
          style: TextStyle(
              fontFamily: "cursive", fontSize: 20, color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               decoration: BoxDecoration(
                   color: Colors.blueGrey[100],
                    borderRadius: BorderRadius.circular(25.0),
                  ),
              child: ListTile(
               leading: Image.asset(
                  widget.image,
                  height: 50,
                  width: 50,
                ),
                title: Column(
                  children: [
                    Text(widget.name),
                    Text('price: \$${widget.price}'),
                  ],
                ),
                trailing: Text(widget.quantity),
              ),
                 ),
            ),

          SizedBox(
                height: 350,
              ),
              Container(
                //width: double.infinity,
                padding: const EdgeInsets.all(8.0),
               // alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blueAccent,
                    borderRadius: BorderRadius.circular(25)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => Bill()));
                  },
                
             
             
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                       Icon(Icons.shopping_cart_rounded,
                       color: Colors.white,
                       ),
                       SizedBox(
                  width: 10,
                ),
                        Text(
                          "Buy Now",
                          style: TextStyle(
                            color: Colors.white,
                            

                          ),
                        )
                        ],
                        ),
             
              ),
         
          
              )],
      ),
    
    
    
    );
  }
}
