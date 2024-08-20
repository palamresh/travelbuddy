import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:travelbuddy/home_page/details.dart';
import 'package:travelbuddy/notification/notification.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final image = [
    "https://tse2.mm.bing.net/th?id=OIP.JJ8sMYT1jyW8iK0mX0HsOQHaE7&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.lgrLMKvKXYgUhb2nip4DcwHaE7&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.lwzek7sVHRauQUpB6HU4pwHaFj&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.upG9bDELt6gPds5DkD1bkQHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.EHkOkOQcMloWfrd2qDWn9wHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.zIOF9wOLE0o1i46VypZaOgHaEK&pid=Api&P=0&h=220",
    "https://tse2.mm.bing.net/th?id=OIP.JJ8sMYT1jyW8iK0mX0HsOQHaE7&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.lgrLMKvKXYgUhb2nip4DcwHaE7&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.lwzek7sVHRauQUpB6HU4pwHaFj&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.upG9bDELt6gPds5DkD1bkQHaE8&pid=Api&P=0&h=220",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://tse1.mm.bing.net/th?id=OIP.tvdlQvACsTPbXIM6Bq6KQwHaI4&pid=Api&P=0&h=220'),
          ),
        ),
        title: Text(
          "Harsh",
          style: TextStyle(fontSize: h * .03, fontWeight: FontWeight.w600),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => NotificationScreen()));
              },
              icon: Icon(
                Icons.notifications,
                size: h * .03,
              ))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .03,
            ),
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: "Explore the   ",
                  style: TextStyle(
                      fontSize: h * .05,
                      color: Colors.black,
                      fontWeight: FontWeight.w400)),
              TextSpan(
                  text: "Beautiful",
                  style: TextStyle(
                      fontSize: h * .05,
                      color: Colors.black,
                      fontWeight: FontWeight.w600)),
              TextSpan(
                  text: " world!",
                  style: TextStyle(
                      fontSize: h * .05,
                      color: Colors.orange,
                      fontWeight: FontWeight.w700)),
            ])),
            SizedBox(
              height: h * .04,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Best Destination",
                  style:
                      TextStyle(fontSize: h * .02, fontWeight: FontWeight.w500),
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "View All",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: h * .02,
                          fontWeight: FontWeight.w500),
                    ))
              ],
            ),
            SizedBox(
              height: h * .02,
            ),
            Expanded(
              child: ListView.builder(
                //itemExtent: 300,
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    DetailsScreen(image: image[index])));
                      },
                      child: Container(
                        height: h * .5,
                        width: w / 1.5,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey.shade200,
                        ),
                        child: Column(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  height: h * .4,
                                  width: w / 1.5,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: Colors.blue),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.network(
                                      image[index],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 10,
                                  right: 10,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white30,
                                        shape: BoxShape.circle),
                                    child: IconButton(
                                        onPressed: () {},
                                        icon: Icon(
                                            Icons.bookmark_border_outlined)),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Niladari Reservoir",
                                    style: TextStyle(
                                        fontSize: h * .03 / 1.5,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  Text(
                                    "⭐ 4.7",
                                    style: TextStyle(
                                        fontSize: h * .03 / 1.5,
                                        fontWeight: FontWeight.w500),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: h * .01,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                          borderRadius:
                                              BorderRadius.circular(20),
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
                                          style: TextStyle(fontSize: h * .01),
                                        ),
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
