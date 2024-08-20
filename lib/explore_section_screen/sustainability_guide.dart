import 'package:flutter/material.dart';

class SustainabilityGuide extends StatefulWidget {
  const SustainabilityGuide({super.key});

  @override
  State<SustainabilityGuide> createState() => _SustainabilityGuideState();
}

class _SustainabilityGuideState extends State<SustainabilityGuide> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.iYM240Dt8wfAq21Zy84jQgHaE-&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.cQAG_885Kvkdo8fK1qq4WQHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.t9v52Qp_D4duFF6OWVfrcwHaEa&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.FrRPU5wgzeJfqkeQb5kP0AHaE8&pid=Api&P=0&h=220"
  ];
  final place = [
    "Niladri Reservair",
    "High Rech Park",
    "Dharam Reservair",
    "Harsh Park"
  ];

  final name = [
    "Accesorites",
    "Food items",
    "Clothes",
    "Devices",
  ];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Sustainability Guide",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: ListView.builder(
                padding: EdgeInsets.all(10),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        height: h * .2 / 1.6,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(.1),
                            borderRadius: BorderRadius.circular(20)),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                height: h * .2 / 1.6,
                                width: w / 2.8,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    image[index],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Eco Friendly",
                                    style: TextStyle(
                                        color: Colors.green,
                                        fontSize: h * .03 / 1.6,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  Text(
                                    place[index],
                                    style: TextStyle(
                                        fontSize: h * .03 / 1.4,
                                        fontWeight: FontWeight.w600),
                                  ),

                                  // SizedBox(
                                  //   height: h * .01,
                                  // ),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on),
                                      Text(
                                        name[index],
                                        style: TextStyle(
                                            fontSize: h * .03 / 1.6,
                                            fontWeight: FontWeight.w400),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: w * .06,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [Icon(Icons.arrow_forward_ios)],
                              )
                            ],
                          ),
                        )),
                  );
                }),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(13.0),
            child: Text(
              "All the place are Eco - friendly and they are carban free",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: h * .03 / 1.2),
            ),
          ))
        ],
      ),
    );
  }
}
