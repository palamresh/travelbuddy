import 'dart:async';

import 'package:flutter/material.dart';

import 'package:travelbuddy/navigation_screen/navigation.dart';

class SuccessfullService {
  void isSuccessfull(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => NavigationScreen()));
    });
  }
}
