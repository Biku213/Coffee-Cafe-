
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
 

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 30,
      ),
      child: Column(
        children: <Widget>[
    TextFormField(
   keyboardType: TextInputType.text,
   decoration: InputDecoration(
       labelText: 'Email',
       hintText: 'Enter your email',
   ), ),
          SizedBox(
            height: 16,
          ),
         
         TextFormField(
   keyboardType: TextInputType.text,
   decoration: InputDecoration(
       labelText: 'Phone Number',
       hintText: 'Enter your mobile number',
   ), 
   ),
          SizedBox(
            height: 16,
          ),
          TextFormField(
   keyboardType: TextInputType.text,
   obscureText: !_passwordVisible,//This will obscure text dynamically
   decoration: InputDecoration(
       labelText: 'Password',
       hintText: 'Enter your password',
       // Here is key idea
       suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
               _passwordVisible
               ? Icons.visibility
               : Icons.visibility_off,
               color: Colors.black,
               ),
            onPressed: () {
               // Update the state i.e. toogle the state of passwordVisible variable
               setState(() {
                   _passwordVisible = !_passwordVisible;
               });
             },
            ),
          ),
        ),
        ],
      ),
    );
  }
}

