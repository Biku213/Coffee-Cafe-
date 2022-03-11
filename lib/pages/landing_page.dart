import 'package:coffee_store_ui/utils/constants.dart';
import 'package:coffee_store_ui/utils/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Container(
        child: Stack(
          children: [
            Positioned(
              top: 0.0,
              right: -50.0,
              child: Image.asset(
                "assets/images/coffee2.png",
              ),
            ),
            Positioned(
              right: -70.0,
              bottom: -10.0,
              child: Image.asset(
                "assets/images/cw.jpg",
              ),
            ),
            // Positioned(
            //   right: -70.0,
            //   bottom: -10.0,
            //   child: Image.asset(
            //     "assets/images/coffee_cup.png",
            //     width: 250.0,
            //   ),
            // ),
            Positioned(
              top: 0.0,
              left: 0.0,
              width: MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                  decoration: BoxDecoration(
                  
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                height: MediaQuery.of(context).size.height,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 200.0,
                    ),
                    Text(
                      "Shop Best Coffee\nIn Town",
                      style: TextStyle(
                        fontSize: 34.0,
                        height: 1.3,
                        color: Colors.blueAccent,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: 35.0,
                    ),
                    Text(
                      "Experience the best taste of\ncoffee with us exclusively!!",
                      style: TextStyle(
                        fontSize: 18.0,
                        height: 1.8,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 60.0,
                    ),
                    Container(
                      height: ScreenUtil().setHeight(48.0),
                      // ignore: deprecated_member_use
                      child: FlatButton(
                        padding: EdgeInsets.symmetric(horizontal: 32.0),
                        onPressed: () {
                          nextScreen(context, "/homescreen");
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(28.0),
                        ),
                        child: Text("Get Started"),
                        color: kTextColor1,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
