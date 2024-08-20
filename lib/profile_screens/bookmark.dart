// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class BookMarkScreen extends StatefulWidget {
  const BookMarkScreen({super.key});

  @override
  State<BookMarkScreen> createState() => _BookMarkScreenState();
}

class _BookMarkScreenState extends State<BookMarkScreen> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.-wcXcPg9mUaWmMJuoWXgHgAAAA&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.s3tKApbNLXQ4SOkEn-z7SQHaE7&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.AN5orVdP9-VdsVVI44sujwHaE8&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.1kSJ_I3mpJ4rtaX6AVY7LgHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.NpokTUBcw0r1KGtT4HaMlAHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.JGLhf32SKeUDztFOpFja-AHaHc&pid=Api&P=0&h=220",
  ];
  final place = [
    "Mn America",
    "Av demeo Maxico",
    "N G I Pune",
    "G N Agara",
    "Shakurty Pakistan",
    "Av Darmo Maxico"
  ];

  final name = [
    "Niladri Reservair",
    "Casea Las Tirtugas",
    "Aonang Villa Resort",
    "Rangauti Resort",
    "Kechura Resort",
    "Shakardu Resort"
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Bookmarked Places",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Favourite Places",
              style: TextStyle(
                  fontSize: h * .03 / 1.4, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .02,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.2,
                      crossAxisSpacing: 20),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: h * .2 / 1.2,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                //  color: Colors.pink,
                                borderRadius: BorderRadius.circular(20)),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                image[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              name[index],
                              style: TextStyle(
                                  fontSize: h * .02 / 1.1,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on),
                              Text(
                                place[index],
                                style: TextStyle(
                                    fontSize: h * .02 / 1.1,
                                    fontWeight: FontWeight.w700),
                              ),
                            ],
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
