import 'package:flutter/material.dart';

class Bill extends StatefulWidget {
  @override
  _BillState createState() => _BillState();
}

class _BillState extends State<Bill> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      backgroundColor: Colors.white60,
      title: Text(
        "Bill",
        style:
            TextStyle(fontFamily: "cursive", fontSize: 20, color: Colors.black),
      ),
    ));
  }
}
