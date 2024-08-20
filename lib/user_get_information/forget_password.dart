import 'package:flutter/material.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: h * .3 / 1.2,
              width: w / 1.1,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all()),
              child: Column(
                children: [
                  SizedBox(
                    height: h * .03,
                  ),
                  CircleAvatar(
                    radius: 30,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.account_box,
                      size: h * .04,
                    ),
                  ),
                  Text(
                    "Check Your Email",
                    style: TextStyle(
                        fontSize: h * .03, fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Text(
                      textAlign: TextAlign.center,
                      "We have send password recovery instruction to your email.",
                      style: TextStyle(fontSize: h * .02),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            SizedBox(
              height: h * .06,
              width: w / 1.1,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => SetPassword()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    backgroundColor: Colors.blue),
                child: Text(
                  "Forget Password",
                  style: TextStyle(
                      fontSize: h * .03 / 1.5,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
