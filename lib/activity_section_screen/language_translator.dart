// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ConvertLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Convert Language',
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            SizedBox(height: 60),
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 203, 203, 203),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'English',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 58, 58, 58),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              "OR",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 203, 203, 203),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: Text(
                  'Hindi',
                  style: TextStyle(
                    color: const Color.fromARGB(255, 58, 58, 58),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 60,
              width: 140,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Translate',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
