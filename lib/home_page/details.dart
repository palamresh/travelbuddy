import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import 'package:travelbuddy/home_page/book.dart';

class DetailsScreen extends StatefulWidget {
  final String image;
  const DetailsScreen({super.key, required this.image});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  Widget container1(
    var h,
    var w,
    String image,
  ) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      height: h * .1 / 1.5,
      width: w * .2 / 1.5,
      child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.network(
            image,
            fit: BoxFit.cover,
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SizedBox(
        height: h,
        width: w,
        child: Stack(
          children: [
            Container(
              color: Colors.blue,
              height: h,
              width: w,
            ),
            SizedBox(
              height: h / 2,
              width: w,
              child: Image.network(
                widget.image,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 20,
              top: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white60, shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios)),
                      )),
                  SizedBox(
                    width: w * .3,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                        fontSize: h * .03,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    width: h * .1,
                  ),
                  Container(
                      decoration: BoxDecoration(
                          color: Colors.white60, shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.bookmark_border_sharp)),
                      )),
                ],
              ),
            ),
            Positioned(
              top: 400,
              child: Container(
                height: h,
                width: w,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30)),
                    color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: h * .03,
                      ),
                      Text(
                        "Niladri Reservoir",
                        style: TextStyle(
                            fontSize: h * .03, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Resort Bali",
                        style: TextStyle(
                            fontSize: h * .03 / 1.4,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(
                        height: h * .01,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const Icon(
                                Icons.location_on,
                              ),
                              Text(
                                "Resort, Bali",
                                style: TextStyle(
                                    fontSize: h * .03 / 1.5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Text(
                            "⭐ 4.7",
                            style: TextStyle(
                                fontSize: h * .03 / 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                          Text(
                            "\$184/person",
                            style: TextStyle(
                                fontSize: h * .03 / 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          container1(h, w,
                              "https://tse2.mm.bing.net/th?id=OIP.xP5S6LZg8a7pTyB12tcONQHaEK&pid=Api&P=0&h=220"),
                          container1(h, w,
                              "https://tse4.mm.bing.net/th?id=OIP.upG9bDELt6gPds5DkD1bkQHaE8&pid=Api&P=0&h=220"),
                          container1(h, w,
                              "https://tse1.mm.bing.net/th?id=OIP.v9F-eW7khlLqapERWvlXqAAAAA&pid=Api&P=0&h=220"),
                          container1(h, w,
                              "https://tse1.mm.bing.net/th?id=OIP.OnHdWT5KmR1r4rwOMlpCZQHaEo&pid=Api&P=0&h=220"),
                          container1(h, w,
                              "https://tse3.mm.bing.net/th?id=OIP.YYHWkaX89EvE6frgXAUNcgHaE7&pid=Api&P=0&h=220"),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      Text(
                        "About Destination",
                        style: TextStyle(
                            fontSize: h * .03, fontWeight: FontWeight.w600),
                      ),
                      const ReadMoreText(
                        textAlign: TextAlign.justify,
                        'You will get complet travel package on the beaches. Packages in the form of airline ticket recommended hotel room. Transportation have you ever been on holiday to the greek  ETC......',
                        trimMode: TrimMode.Line,
                        trimLines: 2,
                        colorClickableText: Colors.pink,
                        trimCollapsedText: 'Show more',
                        trimExpandedText: 'Show less',
                        moreStyle: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: h * .03,
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.0,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BookNow()));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.blue),
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                                fontSize: h * .03 / 1.2,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
