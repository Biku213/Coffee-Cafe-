import 'package:coffee_store_ui/pages/bottomnavigate.dart';
// ignore: unused_import
import 'package:coffee_store_ui/pages/homepage.dart';
//import 'package:coffee_store_ui/pages/shop_page.dart';
//import 'package:coffee_store_ui/pages/landing_page.dart';
//import 'package:coffee_store_ui/pages/profile.dart';
import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(
    
      padding: const EdgeInsets.symmetric(horizontal: 30),
    
      // ignore: deprecated_member_use
    
      // ignore: deprecated_member_use
      child: FlatButton(
    
        shape: RoundedRectangleBorder(
    
          borderRadius: BorderRadius.circular(36),
    
          ),
    
    
    
        color: Colors.green,
    
        onPressed: () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  Bottomnavigate()),
  );
},
    
        child: Container(
    
          width: double.infinity,
    
          padding: const EdgeInsets.symmetric(vertical: 16),
    
          alignment: Alignment.center,
    
          child: Text(
    
            'Log In',
    
            style: TextStyle(
    
              color: Colors.white,
    
              ),
    
          ),
    
          ),
    
        )
    
    );
  }
}

  
