import 'package:coffee_store_ui/pages/landing_page.dart';
// ignore: unused_import
import 'package:coffee_store_ui/pages/shop_page.dart';
import 'package:coffee_store_ui/screen/home/home_screen.dart';
// ignore: unused_import
import 'package:coffee_store_ui/screen/splash/splash_screen.dart';
import 'package:coffee_store_ui/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(designSize: Size(360, 690),builder:()=> MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Coffee Cafe",
        theme: ThemeData(
          scaffoldBackgroundColor: kFadedScaffoldColor,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        initialRoute: "/",
        onGenerateRoute: _onGenerateRoute,
    )
    );
  }
}

Route<dynamic> _onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case "/":
      return MaterialPageRoute(builder: (BuildContext context) {
        return LandingPage();
      });
    case "/homescreen":
      return MaterialPageRoute(builder: (BuildContext context) {
        return HomeScreen();
      });
   
    default:
      return MaterialPageRoute(builder: (BuildContext context) {
        return LandingPage();
      });
  }
}
