import 'package:flutter/material.dart';

class Favorite extends StatefulWidget {
  final name;
  
  final image;

  Favorite({
    this.name,
    
    this.image,
  });

  @override
  _FavoriteState createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white60,
      title: Text(
        "Your Favorites",
        style:
            TextStyle(fontFamily: "cursive", fontSize: 20, color: Colors.black),
      ),
    ),
   

    body: ListView(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            
                      title: Image.asset(
                        widget.image, height: 150, width: 150,
                      ),
                      trailing: Text(
                        widget.name

                      ),
                      ),
        ),
        
      ],

    ),
    );

  }
}
