// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class AdventurePlanner extends StatefulWidget {
  const AdventurePlanner({super.key});

  @override
  State<AdventurePlanner> createState() => _AdventurePlannerState();
}

class _AdventurePlannerState extends State<AdventurePlanner> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.4MDblWOt0bAMYSUpvGxTwQHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.QestHXum07y_Yeo4FfWllQHaE5&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.BGHwntfkQhjV6pfe0wwnqwHaDZ&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.52KP3y6JxpvozZIUecUYGwHaEo&pid=Api&P=0&h=220"
  ];
  final place = ["Surat", "Pune", "Maharastra", "Gujarat"];
  final price = [
    "\$450/person",
    "\$350/person",
    "\$720/person",
    "\$150/person",
  ];
  final name = [
    "Mountain Trek",
    "Para Gliding",
    "Snow Park",
    "Theme Park",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Adventure Planner",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.keyboard_voice_outlined),
                  filled: true,
                  fillColor: Colors.grey.shade300,
                  hintText: "Search Places",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide.none)),
            ),
            SizedBox(
              height: h * .02,
            ),
            Text(
              "Search Places",
              style: TextStyle(
                  fontSize: h * .03 / 1.4, fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: h * .02,
            ),
            Expanded(
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20,
                      crossAxisCount: 2,
                      childAspectRatio: 1 / 1.3,
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
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Text(
                              price[index],
                              style: TextStyle(
                                  fontSize: h * .02 / 1.1,
                                  fontWeight: FontWeight.w700),
                            ),
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
