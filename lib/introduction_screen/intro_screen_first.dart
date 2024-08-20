// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';

class IntroScreenFirst extends StatefulWidget {
  const IntroScreenFirst({super.key});

  @override
  State<IntroScreenFirst> createState() => _IntroScreenFirstState();
}

class _IntroScreenFirstState extends State<IntroScreenFirst> {
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
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 5, 6, 6),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.network(
                  'https://images.pexels.com/photos/531602/pexels-photo-531602.jpeg?auto=compress&cs=tinysrgb&w=600',
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
                      text: "Life is short and the world is ",
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: h * .04 / 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: "wide ",
                      style: TextStyle(
                          fontSize: h * .04 / 1,
                          color: Colors.orangeAccent,
                          fontWeight: FontWeight.w800))
                ])),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                  "At friend toars and travel, we customize and reliable and trustworthy educational tours to destinations all over the world",
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
