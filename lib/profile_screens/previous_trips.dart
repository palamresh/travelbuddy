// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class PriviousTrips extends StatefulWidget {
  const PriviousTrips({super.key});

  @override
  State<PriviousTrips> createState() => _PriviousTripsState();
}

class _PriviousTripsState extends State<PriviousTrips> {
  final image = [
    "https://tse1.mm.bing.net/th?id=OIP.oa6wkUpT9KjcmuimacYq3gHaE6&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.GUppvnhGC_ndW8v1C1jm6QHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.1IjpmOZYzA_RJVya-TRZzwHaEo&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.oR-9DBgZ5f-hwAKfYZ3GBQHaFZ&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.0WlNfLbIwvhbljJod2V0EAHaE6&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.ivG2S_2VpBqg7Ov8g80-lAHaE7&pid=Api&P=0&h=220",
  ];
  final place = [
    "G N Agara",
    "Shakurty Pakistan",
    "Av Darmo Maxico",
    "Mn America",
    "Av demeo Maxico",
    "N G I Pune",
  ];

  final name = [
    "Rangauti Resort",
    "Kechura Resort",
    "Shakardu Resort",
    "Niladri Reservair",
    "Casea Las Tirtugas",
    "Aonang Villa Resort",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Privious Trips",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
