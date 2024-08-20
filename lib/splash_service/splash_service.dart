import 'dart:async';

import 'package:flutter/material.dart';
import 'package:travelbuddy/introduction_screen/introduction.dart';

class SplashService {
  void isLogin(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => PageViewExample()));
    });
  }
}
