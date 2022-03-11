// //import 'package:coffee_cafe/screen/home/home_screen.dart';
// import '/screen/home/home_screen.dart';
// import 'package:flutter/material.dart';

// class SplashScreen extends StatefulWidget {
//   @override
//   _SplashScreenState createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   void initState() {
//     var d = Duration(seconds: 3);

//     Future.delayed(d, () {
//       Navigator.pushAndRemoveUntil(
//         context,
//         MaterialPageRoute(
//           builder: (context) {
//             return HomeScreen();
//           },
//         ),
//         (route) => false,
//       );
//     });

//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage("assets/images/coffee.png"), fit: BoxFit.cover),
//         ),
//         child: Center(
//           child: Text(
//             'Getting Started...',
//             // textAlign: TextAlign.center,
//             style: TextStyle(
//               color: Colors.brown,
//               fontSize: 30,
//               fontWeight: FontWeight.w500,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
