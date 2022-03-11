// ignore: unused_import
import 'package:coffee_store_ui/utils/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: [
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
                    "assets/images/pp.jpg",
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: 250.0,
            width: MediaQuery.of(context).size.width,
            child: Container(
              height: MediaQuery.of(context).size.height - 250.0,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6.0,
                  vertical: 14.0,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25.0),
                ),
                child: Row(
                  children: [
                    Icon(Icons.person_rounded),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Information Account",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
