// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';
import 'package:travelbuddy/navigation_screen/navigation.dart';
import 'package:travelbuddy/user_get_information/forget_password.dart';
import 'package:travelbuddy/user_get_information/sign_up_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                "Sign in now",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: h * .04,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: h * .01,
              ),
              Text(
                "Please sign in to continue our app",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: h * .02,
                    letterSpacing: 0.4,
                    fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: h * .02,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "Email Id",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: h * .02,
              ),
              TextFormField(
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey.shade300,
                    hintText: "Password",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: BorderSide.none)),
              ),
              SizedBox(
                height: h * .02,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ForgetPassword()));
                  },
                  child: Text(
                    "Forget Password",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: h * .02,
                        letterSpacing: 1,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              SizedBox(
                height: h * .06,
                width: w / 1.2,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => NavigationScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.blue),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                        fontSize: h * .03 / 1.2,
                        color: Colors.white,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              SizedBox(
                height: h * .03,
              ),
              Text(
                "Or Connect",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: h * .02,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: h * .02,
              ),
              SizedBox(
                height: h * .06,
                width: w / 1.2,
                child: SignInButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  Buttons.google,
                  text: "Sign up with Google",
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: h * .06,
                width: w / 1.2,
                child: SignInButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  Buttons.facebook,
                  text: "Sign up with Facebook",
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              SizedBox(
                height: h * .06,
                width: w / 1.2,
                child: SignInButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  Buttons.apple,
                  text: "Sign up with Apple",
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: h * .02,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignUpScreen()));
                  },
                  child: RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Don't have an account ",
                        style:
                            TextStyle(fontSize: h * .02, color: Colors.black)),
                    TextSpan(
                        text: "Sign Up ",
                        style: TextStyle(fontSize: h * .02, color: Colors.blue))
                  ])),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
