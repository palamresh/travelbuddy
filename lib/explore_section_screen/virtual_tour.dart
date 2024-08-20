import 'package:flutter/material.dart';

class VirtualTour extends StatefulWidget {
  const VirtualTour({
    super.key,
  });

  @override
  State<VirtualTour> createState() => _VirtualTourState();
}

class _VirtualTourState extends State<VirtualTour> {
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
              child: Image.network(
                "https://images.pexels.com/photos/2462015/pexels-photo-2462015.jpeg?auto=compress&cs=tinysrgb&w=600",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 200,
              left: 200,
              child: Container(
                height: h * .2 / 1.8,
                width: w / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(.6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: h * .1 / 1.1,
                      width: w / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://tse3.mm.bing.net/th?id=OIP.PUuevUFoxDO5lRMcQBdQnAHaE8&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "La-Hotel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "2.09 mi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 350,
              left: 30,
              child: Container(
                height: h * .2 / 1.8,
                width: w / 2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(.6)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: h * .1 / 1.1,
                      width: w / 5,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.network(
                          'https://tse4.mm.bing.net/th?id=OIP._yC174sEBWELImhmt0sS8gHaE2&pid=Api&P=0&h=220',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Leman Hotel",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "2.09 mi",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: h * .02,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
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
                          color: Colors.black.withOpacity(.1),
                          shape: BoxShape.circle),
                      child: Center(
                        child: IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              size: h * .02,
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      )),
                  SizedBox(
                    width: w * .2,
                  ),
                  Text(
                    "Virtual Tower",
                    style: TextStyle(
                        fontSize: h * .03,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    width: h * .1,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 600,
              left: 30,
              child: Container(
                height: h / 3 / 1.4,
                width: w / 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black.withOpacity(.4)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Niladri Reservoir",
                              style: TextStyle(
                                  fontSize: h * .03 / 1.3,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600),
                            ),
                            Text(
                              "⭐ 4.7",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: h * .03 / 1.5,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      ),

                      // SizedBox(
                      //   height: h * .02,
                      // ),
                      // SizedBox(
                      //   height: h * .02,
                      // ),
                      SizedBox(
                        height: h * .01 / 2,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                "Resort, Bali",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: h * .03 / 1.5,
                                    fontWeight: FontWeight.w500),
                              ),
                            ],
                          ),
                          Stack(
                            children: [
                              Container(
                                height: h * .03,
                                width: 100,
                              ),
                              Positioned(
                                left: 20,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade100,
                                  radius: 14,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        height: 16,
                                        'https://tse2.mm.bing.net/th?id=OIP.eoFCztq9Z3-5VA0IIUwfgAHaHa&pid=Api&P=0&h=220'),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 35,
                                child: CircleAvatar(
                                  backgroundColor: Colors.yellow.shade500,
                                  radius: 14,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        height: 16,
                                        'https://tse2.explicit.bing.net/th?id=OIP.oJFEfAY0005LCvz7ad9XsQHaHa&pid=Api&P=0&h=220'),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 50,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade100,
                                  radius: 14,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                        height: 16,
                                        'https://tse2.mm.bing.net/th?id=OIP.PY5xuPmhxw5NSUXhQl4oAQHaHv&pid=Api&P=0&h=220'),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 65,
                                child: CircleAvatar(
                                  backgroundColor: Colors.blue.shade100,
                                  radius: 12,
                                  child: Text(
                                    "+50",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: h * .02 / 1.5),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),

                      SizedBox(
                        height: h * .01,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.watch_later_outlined,
                            color: Colors.white,
                          ),
                          Text(
                            "50 Minut",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: h * .03 / 1.5,
                                fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: h * .02,
                      ),
                      SizedBox(
                        height: h * .06,
                        width: w / 1.0,
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //         builder: (context) => BookNow()));
                          },
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              backgroundColor: Colors.blue),
                          child: Text(
                            "See On The Map",
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
              ),
            ),
          ],
        ),
      ),
    );
  }
}
