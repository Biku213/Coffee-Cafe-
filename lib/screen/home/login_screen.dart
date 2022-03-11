import './login_button.dart';
import './login_form.dart';
import './welcome_back.dart';
import './widget/register_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            WelcomeBack(),
            LoginForm(),
            Container(
               
              padding: const EdgeInsets.symmetric(horizontal: 30),
              alignment: Alignment.centerRight,
              child: Text(
                'forgot password?',
                style: TextStyle(
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            LoginButton(),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 30,
                vertical: 16,
              ),
              alignment: Alignment.center,
              child: RichText(
                text: TextSpan(style: TextStyle(color: Colors.grey), children: [
                  TextSpan(text: 'Don\'t have an account?'),
                  TextSpan(
                      text: '  Register',
                      style: TextStyle(
                        color: Colors.green,
                      ),
                      recognizer: TapGestureRecognizer()
                    .. onTap = () {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>RegisterScreen()),
  );
},
                        // ..onTap = () {
                        //   Navigator.pop(context);
                        // }),
                )]),
              ),
            )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Log In',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}


