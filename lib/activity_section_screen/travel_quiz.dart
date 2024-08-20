import 'package:flutter/material.dart';

class TravelQuiz extends StatefulWidget {
  const TravelQuiz({super.key});

  @override
  State<TravelQuiz> createState() => _TravelQuizState();
}

class _TravelQuizState extends State<TravelQuiz> {
  final image = [
    "https://tse4.mm.bing.net/th?id=OIP.iYM240Dt8wfAq21Zy84jQgHaE-&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.cQAG_885Kvkdo8fK1qq4WQHaEK&pid=Api&P=0&h=220",
    "https://tse1.mm.bing.net/th?id=OIP.t9v52Qp_D4duFF6OWVfrcwHaEa&pid=Api&P=0&h=220",
    "https://tse3.mm.bing.net/th?id=OIP.FrRPU5wgzeJfqkeQb5kP0AHaE8&pid=Api&P=0&h=220"
  ];
  final place = [
    "Santorini Island",
    "Bukita Rayandro",
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Travel Quiz",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: h * .02,
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                  padding: EdgeInsets.all(10),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: h * .2 / 1.4,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(.1),
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Row(
                              //mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                SizedBox(
                                  width: w * .06,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      place[index],
                                      style: TextStyle(
                                          fontSize: h * .02 / 1.2,
                                          fontWeight: FontWeight.w600),
                                    ),
                                    SizedBox(
                                      height: h * .03,
                                    ),
                                    Text(
                                      "Play",
                                      style: TextStyle(
                                          fontSize: h * .03 / 1.6,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )),
                    );
                  }),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                "Leaderboards",
                style: TextStyle(
                    fontSize: h * .03 / 1.2, fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(
              height: h * .01,
            ),
            Expanded(
                flex: 1,
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.amber,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.network(
                        'https://tse4.mm.bing.net/th?id=OIP.IdSx8ibbq0r9s45TVSd76wHaIC&pid=Api&P=0&h=220',
                        height: h * .03,
                      ),
                    ),
                  ),
                  title: Text(
                    'Anjelina',
                    style: TextStyle(
                        fontSize: h * .03 / 1.2,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
