// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class IntroScreenSecond extends StatefulWidget {
  const IntroScreenSecond({super.key});

  @override
  State<IntroScreenSecond> createState() => _IntroScreenSecondState();
}

class _IntroScreenSecondState extends State<IntroScreenSecond> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: h * .6 / 1.1,
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.network(
                  'https://images.pexels.com/photos/1157255/pexels-photo-1157255.jpeg?auto=compress&cs=tinysrgb&w=600',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: h * .1 / 1.5,
            ),
            RichText(
                textAlign: TextAlign.center,
                text: TextSpan(children: [
                  TextSpan(
                      text: "It's a is big world out there go ",
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: h * .04 / 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: "explore ",
                      style: TextStyle(
                          fontSize: h * .04 / 1,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w800))
                ])),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "To get the best of your adventure you just need to leave and go where you like, we are waiting for you.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: h * .02,
                      color: Colors.black,
                      fontWeight: FontWeight.w500)),
            )
          ],
        ),
      ),
    );
  }
}
