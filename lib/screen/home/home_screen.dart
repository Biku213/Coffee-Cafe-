// ignore: unused_import
import './widget/login_and_register.dart';
import './widget/login_with_facebook.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Image.asset('assets/images/cc.png'),
          Sliderdot(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Get the best Coffee\n in town!!',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 32,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          LoginAndRegister(),
          LoginWithFacebook(),
        ],
      ),
    );
  }
}
