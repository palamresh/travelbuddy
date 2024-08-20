import 'package:flutter/material.dart';
import 'package:travelbuddy/splash_service/successfull_service.dart';

class Successfull extends StatefulWidget {
  const Successfull({super.key});

  @override
  State<Successfull> createState() => _SuccessfullState();
}

class _SuccessfullState extends State<Successfull> {
  SuccessfullService success = SuccessfullService();
  @override
  void initState() {
    success.isSuccessfull(context);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: h * .2 / 1.1,
              width: w * .4 / 1,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.green.shade200, width: 10)),
              child: Center(
                child: Icon(
                  Icons.done,
                  size: h * .2 / 1.3,
                  color: Colors.blue.shade800,
                ),
              ),
            ),
            SizedBox(
              height: h * .1 / 1.8,
            ),
            Text(
              "Successfully Booked",
              style: TextStyle(
                  fontSize: h * .03,
                  color: Colors.blue.shade800,
                  fontWeight: FontWeight.w700),
            )
          ],
        ),
      ),
    );
  }
}
