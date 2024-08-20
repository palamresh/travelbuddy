import 'package:flutter/material.dart';

class VirtualPostcard extends StatefulWidget {
  const VirtualPostcard({super.key});

  @override
  State<VirtualPostcard> createState() => _VirtualPostcardState();
}

class _VirtualPostcardState extends State<VirtualPostcard> {
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Virtual Postcard",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: h * .3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  'https://tse1.mm.bing.net/th?id=OIP.uqECIgW1Igb1d2TvngN0LgHaE7&pid=Api&P=0&h=220',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: h * .03,
            ),
            Container(
              height: h * .3 / 1.3,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12.withOpacity(.1),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Write your message here.",
                  style: TextStyle(fontSize: h * .02),
                ),
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .2 / 1.4,
                  width: w / 2 / 1.4,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Add Photo",
                      style: TextStyle(fontSize: h * .02),
                    ),
                  ),
                ),
                Container(
                  height: h * .2 / 1.4,
                  width: w / 2 / 1.4,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Text(
                      "Add Photo",
                      style: TextStyle(fontSize: h * .02),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 5),
              child: Text(
                "Share Via",
                style: TextStyle(fontSize: h * .02),
              ),
            ),
            SizedBox(
              height: h * .02,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: h * .1 / 1.4,
                  width: w / 2 / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Image.network(
                          height: h * .03,
                          'https://tse1.mm.bing.net/th?id=OIP.6-Etwy2306AInODxxbDK6gHaHY&pid=Api&P=0&h=220')),
                ),
                Container(
                  height: h * .1 / 1.4,
                  width: w / 2 / 1.2,
                  decoration: BoxDecoration(
                      color: Colors.black12.withOpacity(.1),
                      borderRadius: BorderRadius.circular(10)),
                  child: Center(
                      child: Image.network(
                          height: h * .03,
                          'https://tse2.mm.bing.net/th?id=OIP.VpgnBi-eg0qHDsHuD1OA7QHaHa&pid=Api&P=0&h=220')),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
