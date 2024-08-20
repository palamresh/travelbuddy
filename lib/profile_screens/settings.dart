// ignore_for_file: unused_local_variable

import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';

class HealthyAndSafety extends StatefulWidget {
  const HealthyAndSafety({super.key});

  @override
  State<HealthyAndSafety> createState() => _HealthyAndSafetyState();
}

class _HealthyAndSafetyState extends State<HealthyAndSafety> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Healthy and Safety",
          style: TextStyle(
              color: Colors.black,
              letterSpacing: 1,
              fontSize: h * .02,
              fontWeight: FontWeight.w800),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: h * .02,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .3 / 1.3,
                      width: w / 2 / 1.2,
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.black, Colors.grey]),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvatarGlow(
                            glowColor: Colors.blue,
                            child: Material(
                              // Replace this child with your own
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue[100],
                                child: Icon(Icons.call_sharp),
                                radius: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Chat with medical officer",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1,
                                  fontSize: h * .02 / 1.3,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: h * .3 / 1.3,
                      width: w / 2 / 1.2,
                      decoration: BoxDecoration(
                        gradient:
                            LinearGradient(colors: [Colors.green, Colors.grey]),
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          AvatarGlow(
                            glowColor: Colors.greenAccent,
                            child: Material(
                              // Replace this child with your own
                              elevation: 8.0,
                              shape: CircleBorder(),
                              child: CircleAvatar(
                                backgroundColor: Colors.blue[100],
                                child: Icon(Icons.add_call),
                                radius: 20.0,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .02,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Call us 24*7 available",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.black,
                                  letterSpacing: 1,
                                  fontSize: h * .02 / 1.3,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: h * .02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
