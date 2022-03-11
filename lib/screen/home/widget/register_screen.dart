


import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  var _passwordVisible = false;
  var _confirmpasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: buildAppBar(context),
        body: Container(
          decoration: BoxDecoration(
                   color: Colors.brown[100],
                    borderRadius: BorderRadius.circular(28.0),
                  ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 10,
            ),
            child: Column(children: <Widget>[
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
       labelText: 'User Name',
       hintText: 'Enter your name',
   ), ),
              SizedBox(
                height: 16,
              ),
             
TextFormField(
   keyboardType: TextInputType.text,
   decoration: InputDecoration(
       labelText: 'Phone Number',
       hintText: 'Enter your mobile number',
     
   ), ),
              SizedBox(
                height: 16,
              ),

              TextFormField(
                keyboardType: TextInputType.text,
               obscureText:
                    !_passwordVisible, //This will obscure text dynamically
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
              SizedBox(
                height: 16,
              ),
              TextFormField(
                keyboardType: TextInputType.text,

                obscureText:
                    !_confirmpasswordVisible, //This will obscure text dynamically
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  hintText: 'Enter your password again',
                  // Here is key idea
                  suffixIcon: IconButton(
                    icon: Icon(
                      // Based on passwordVisible state choose the icon
                      _confirmpasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.black,
                    ),
                    onPressed: () {
                      // Update the state i.e. toogle the state of passwordVisible variable
                      setState(() {
                        _confirmpasswordVisible = !_confirmpasswordVisible;
                      });
                    },
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              Container(
                width: double.infinity,

                padding: const EdgeInsets.symmetric(vertical: 16),

                alignment: Alignment.center,

                // height: 50,
                // width: 250,
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(36)),
                // ignore: deprecated_member_use
                child: FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => RegisterScreen()));
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 16,
                  ),
                  alignment: Alignment.center,
                  child: RichText(
                      text: TextSpan(
                          style: TextStyle(color: Colors.grey),
                          children: [
                        TextSpan(text: 'Already have an account?'),
                        TextSpan(
                          text: '  Log In',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        )
                      ])))
            ])));
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Sign Up',
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
