// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class IntroScreenThird extends StatefulWidget {
  const IntroScreenThird({super.key});

  @override
  State<IntroScreenThird> createState() => _IntroScreenThirdState();
}

class _IntroScreenThirdState extends State<IntroScreenThird> {
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
                color: Color.fromARGB(255, 24, 24, 24),
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
              ),
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                child: Image.network(
                  'https://images.pexels.com/photos/2531237/pexels-photo-2531237.jpeg?auto=compress&cs=tinysrgb&w=600',
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
                      text: "People don't take trips, trips take ",
                      style: TextStyle(
                          letterSpacing: 1.5,
                          fontSize: h * .04 / 1,
                          color: Colors.black,
                          fontWeight: FontWeight.w800)),
                  TextSpan(
                      text: "people ",
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
