// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final image = [
    "https://tse1.mm.bing.net/th?id=OIP.yFywMC5hfV6M1CERznhAhgHaEL&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.T_9Uwww2ymxXKapLWIIF0gHaE8&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.PMqAkCQHnVomdB_pdAJucAHaFj&pid=Api&P=0&h=220",
    "https://tse4.mm.bing.net/th?id=OIP.ZSY3XlWZxFrgvP6v8GTSvgHaEK&pid=Api&P=0&h=220"
  ];
  final place = ["Mn America", "Av demeo Maxico", "N G I Pune", "G N Agara"];
  final price = [
    "\$350/person",
    "\$150/person",
    "\$320/person",
    "\$550/person",
  ];
  final name = [
    "4 start restaurant",
    "Eat Fresh restaurant",
    "5 start restaurant",
    "Abu restaurant",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      // appBar: AppBar(
      //   centerTitle: true,
      //   title: Text(
      //     "Local Cuisine",
      //     style:
      //         TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
      //   ),
      // ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * .1,
            ),
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
