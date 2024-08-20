import 'package:flutter/material.dart';

class ExpenseTracker extends StatefulWidget {
  const ExpenseTracker({super.key});

  @override
  State<ExpenseTracker> createState() => _ExpenseTrackerState();
}

class _ExpenseTrackerState extends State<ExpenseTracker> {
  final icon = [
    Icons.food_bank,
    Icons.airplane_ticket,
    Icons.book_online_rounded,
    Icons.card_giftcard
  ];

  final title = ["Food", "Transport", "Booking", "Gift"];
  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Expense Tracker",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(
              height: h * .1 / 1.2,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all()),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right_sharp,
                                size: h * .03,
                                color: Colors.black,
                              ),
                              Text(
                                'Total Balance',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02 / 1.2,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Text(
                            "\$7,020.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .03,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                      Transform.rotate(
                        angle: 90 * 22 / 7 / 180,
                        child: const SizedBox(
                          height: 70,
                          width: 50,
                          child: Divider(
                            color: Colors.blue,
                            thickness: 2,
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.arrow_right_sharp,
                                size: h * .03,
                                color: Colors.black,
                              ),
                              Text(
                                'Total Expanse',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: h * .02 / 1.2,
                                    decoration: TextDecoration.none,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                            ],
                          ),
                          Text(
                            "-\$1,292.00",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .03,
                                decoration: TextDecoration.none,
                                color: Colors.blue,
                                fontWeight: FontWeight.w600),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    margin: const EdgeInsets.all(10),
                    height: 35,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black12),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text(
                            "30%",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: h * .02,
                                decoration: TextDecoration.none,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Column(
                          children: [
                            Container(
                              height: 32,
                              width: 300,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  color: Colors.blue.withOpacity(.9)),
                              child: Padding(
                                padding: const EdgeInsets.only(left: 100),
                                child: Center(
                                  child: Text(
                                    "\$1,292.00",
                                    textAlign: TextAlign.right,
                                    style: TextStyle(
                                        fontSize: h * .02,
                                        decoration: TextDecoration.none,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: h * .08,
            ),
            Container(
              height: h * .4,
              width: w / 1.0,
              decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.2),
                  borderRadius: BorderRadius.circular(20)),
              child: GridView.builder(
                  itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      childAspectRatio: 2 / 1.7,
                      crossAxisCount: 2),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          Container(
                            height: h * .1,
                            width: w / 4,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.blue.shade200),
                            child: Center(
                              child: Icon(
                                icon[index],
                                size: h * .06,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: h * .01,
                          ),
                          Text(
                            title[index],
                            style: TextStyle(fontSize: h * .03 / 1.3),
                          )
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
