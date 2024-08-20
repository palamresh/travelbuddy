import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class LocalEvent extends StatefulWidget {
  const LocalEvent({super.key});

  @override
  State<LocalEvent> createState() => _LocalEventState();
}

class _LocalEventState extends State<LocalEvent> {
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Local Event",
          style:
              TextStyle(fontSize: h * .03 / 1.1, fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          EasyDateTimeLine(
            initialDate: DateTime.now(),
            onDateChange: (selectedDate) {
              //`selectedDate` the new date selected.
            },
            headerProps: const EasyHeaderProps(
              monthPickerType: MonthPickerType.switcher,
              dateFormatter: DateFormatter.dayOnly(),
            ),
            dayProps: const EasyDayProps(
              dayStructure: DayStructure.dayStrDayNum,
              activeDayStyle: DayStyle(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff3371FF),
                      Color(0xff8426D6),
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Upcoming event",
                  style: TextStyle(
                      fontSize: h * .03 / 1.2, fontWeight: FontWeight.w600),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    "View All",
                    style: TextStyle(
                        fontSize: h * .02,
                        fontWeight: FontWeight.w600,
                        color: Colors.blue),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          Expanded(
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
                                  Row(
                                    children: [
                                      Icon(Icons.calendar_month),
                                      Text(
                                        "26 january 2024",
                                        style: TextStyle(
                                            fontSize: h * .02 / 1.2,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
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
        ],
      ),
    );
  }
}
